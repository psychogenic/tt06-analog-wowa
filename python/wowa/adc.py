'''
Created on Apr 15, 2024

@author: Pat Deegan
@copyright: Copyright (C) 2024 Pat Deegan, https://psychogenic.com
'''

from amaranth import Signal, Elaboratable, Module, ResetSignal
from amaranth.build import Platform

from amaranth.lib.cdc import FFSynchronizer

import wowa.config as config

from wowa.comparator import Comparator
# from wowa.dac import R2RDAC

from enum import Enum, unique
from amaranth.compat.genlib.fsm import FSM


class FSMState(Enum):
    Startup = 0
    Idle = 1
    Calibrating = 2
    MeasureStart = 3
    MeasureSetup = 4
    MeasureDACON = 5
    MeasureHold = 6
    MeasureSample = 7
    MeasureDone = 8
    
class ADC(Elaboratable):
    '''

    '''
    
    def __init__(self):
        # inputs 
        self.analog_comparator_pin = Signal()
        self.enable = Signal()
        self.use_external_reference = Signal()
        self.use_calibration = Signal()
        
        
        # outputs 
        self.result_ready = Signal()
        self.result = Signal(config.DACNumBits)
        self.calib_done = Signal()
        self.comparator_enable_ctrl = Signal()
        
        
        self.dac_setting = Signal(config.DACNumBits)
        self.state = Signal(FSMState)
        
        self.comparator = Comparator(config.NumInputSynchronizerStagesDefault)
        
        # debug
        if config.CalibrateNumClocks < 16:
            bitsForAtLeast = 16
        else:
            bitsForAtLeast = config.CalibrateNumClocks + 1
        self.internalCounter = Signal(range(bitsForAtLeast))
        
    def ports(self):
        return [
            self.enable,
            self.analog_comparator_pin,
            self.use_external_reference,
            self.use_calibration,
            
            self.state, 
            self.dac_setting,
            self.calib_done,
            self.comparator_enable_ctrl,
            self.result_ready,
            self.result,
        
            
            
            ]
    
    
    
    def elaborate(self, platform:Platform):
        m = Module()
        m.submodules.comparator = self.comparator
        
        m.d.comb += [
            self.comparator.analog_comp_input.eq(self.analog_comparator_pin),
            self.comparator.use_external_reference.eq(self.use_external_reference),
            self.comparator_enable_ctrl.eq(self.comparator.n_enable)
        ]
        internalCounter = self.internalCounter
        syncroCount = Signal(range(config.NumInputSynchronizerStagesDefault + 1))
        
        with m.Switch(self.state):
            with m.Case(FSMState.Startup):
                m.d.sync += [
                    self.comparator.calibrate.eq(0),
                    self.comparator.n_enable.eq(1),
                    self.state.eq(FSMState.Idle)
                ]
                
            with m.Case(FSMState.Idle):
                with m.If(self.enable.bool()):
                    # is enabled
                    m.d.sync += [
                        self.comparator.n_enable.eq(0),
                        
                        
                    ]
                    with m.If(self.use_calibration):
                        m.d.sync += [
                            self.dac_setting.eq(2**(config.DACNumBits-1)),
                            self.comparator.calibrate.eq(1),
                            internalCounter.eq(0),
                        ]
                    with m.Else():
                        m.d.sync += [
                            self.dac_setting.eq(0),
                            internalCounter.eq(config.CalibrateNumClocks)
                        ]
                        
                    m.d.sync += [
                                self.state.eq(FSMState.Calibrating),
                                self.calib_done.eq(0)
                                ]
                with m.Else():
                    # not enabled
                    m.d.sync += [ 
                        self.comparator.n_enable.eq(1),
                        self.dac_setting.eq(0),
                        self.result.eq(0)
                    ]
            
            with m.Case(FSMState.Calibrating):
                m.d.sync += [
                    self.result_ready.eq(0),
                ]
                with m.If(internalCounter >= config.CalibrateNumClocks):
                    m.d.sync += [
                        self.comparator.calibrate.eq(0),
                        self.state.eq(FSMState.MeasureStart),
                        internalCounter.eq(config.DACNumBits - 1),
                        self.result.eq(0),
                        
                    ]
                with m.Else():
                    m.d.sync += internalCounter.eq(internalCounter+1)
                    with m.If(internalCounter == config.CalibrateNumClocks - 1):
                        m.d.sync += self.calib_done.eq(1)
                    
                    
            with m.Case(FSMState.MeasureStart):
                
                for i in range(config.DACNumBits):
                    with m.If(internalCounter == i):
                        m.d.sync += self.result.eq(self.result | (1 << i))
                
                
                m.d.sync += [
                        # internalCounter.eq(internalCounter - 1),
                        self.state.eq(FSMState.MeasureSetup)
                        
                ]
                    
                    
        
            with m.Case(FSMState.MeasureSetup):
                        
                m.d.sync += [
                    self.state.eq(FSMState.MeasureDACON),
                    self.dac_setting.eq(self.result)
                ]

            with m.Case(FSMState.MeasureDACON):
                m.d.sync += [
                    self.state.eq(FSMState.MeasureHold),
                    syncroCount.eq(0)
                ]
            with m.Case(FSMState.MeasureHold):
                m.d.sync += syncroCount.eq(syncroCount + 1)
                with m.If(syncroCount >= config.NumInputSynchronizerStagesDefault):
                    m.d.sync += self.state.eq(FSMState.MeasureSample)
                
            
            with m.Case(FSMState.MeasureSample):
                with m.If(~self.comparator.result.bool()):
                    # inputs is lower than this, clear the bit
                    for i in range(config.DACNumBits):
                        with m.If(internalCounter == i):
                            val = 0xffff & ~(1 << i)
                            m.d.sync += self.result.eq(self.result & val)
                with m.If(internalCounter == 0):
                    m.d.sync += [
                        
                        self.result_ready.eq(1),
                        self.state.eq(FSMState.MeasureDone)
                    ]
                with m.Else():
                    m.d.sync += [
                        internalCounter.eq(internalCounter - 1),
                        self.state.eq(FSMState.MeasureStart)
                    ]
            with m.Case(FSMState.MeasureDone):
                m.d.sync += [self.state.eq(FSMState.Idle)]

            with m.Default():
                m.d.sync += self.state.eq(FSMState.Startup)
        
            
        return m



if __name__ == "__main__":
    # allow us to run this directly
    from amaranth.asserts import Assert, Cover, Assume
    from amaranth.sim import Delay
    from amaranth_testbench.cli import main
    from amaranth_testbench.simulator import Simulator
    from amaranth_testbench.verification import Verification
    from amaranth_testbench.cli import CLI
    from amaranth_testbench.history import History
    
    CLI.get()
    
    m = Module() # top
    m.submodules.adc = dut = ADC()
    
    
    
    @Verification.coverAndVerify(m, dut)
    def coverAndVerify(m:Module, adc:ADC, includeCovers:bool=True):
        # Note: I have a condition below that makes the period 0.1s -- so 
        # during testing we only need to count a bit past 100 ticks to see results
        hist = History.new(m, numCyclesToTrack=config.CalibrateNumClocks+95)
        #hist.track(adc.dac.value)
        #hist.track(adc.result_ready)
        # hist.track(adc.result)
        hist.track(adc.enable)
        hist.track(adc.state)
        hist.track(adc.result)
        hist.track(adc.analog_comparator_pin)
        # hist.track(adc.dac.value)
        if includeCovers:
            m.d.comb += Cover(
                    (hist.cycle > 95)
                    &
                    (adc.result_ready)
                    &
                    (adc.calib_done)
                    &
                    (adc.result == 153)
                    
                )
            
            m.d.comb += Cover(
                    (hist.cycle > 10)
                    &
                    (adc.result_ready)
                    &
                    (~adc.calib_done)
                    &
                    (adc.result == 42)
                    
                )
            
    
    
    
    # this simulation will only occur if module was run with 'simulate' action
    @Simulator.simulate(m, 'adc_with_cals', 
                        traces=dut.ports())
    def adc_run_withcals():
        '''
        inputs 
        
            self.enable,
            self.analog_comparator_pin,
            self.use_external_reference,
            self.use_calibration,
        '''
        
        yield from Simulator.set(dut.enable, 1)
        yield from Simulator.set(dut.use_external_reference, 1)
        yield from Simulator.setAndTick(dut.use_calibration, 1)
        yield Delay(40e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 1)
        yield Delay(15e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 0)
        yield Delay(15e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 1)
        yield Delay(25e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 0)
        yield Delay(50e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 1)
        yield Delay(50e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 0)
        yield Delay(30e-6)
        
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 1)
        yield Delay(30e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 0)
        yield Delay(200e-6)
        
        
        
        
    
    # this simulation will only occur if module was run with 'simulate' action
    @Simulator.simulate(m, 'adc_no_cals', 
                        traces=dut.ports())
    def adc_run_nocals():
        '''
        inputs 
        
            self.enable,
            self.analog_comparator_pin,
            self.use_external_reference,
            self.use_calibration,
        '''
        
        yield from Simulator.set(dut.enable, 1)
        yield from Simulator.set(dut.use_external_reference, 1)
        yield from Simulator.setAndTick(dut.use_calibration, 0)
        yield Delay(10e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 1)
        yield Delay(15e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 0)
        yield Delay(15e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 1)
        yield Delay(25e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 0)
        yield Delay(50e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 1)
        yield Delay(20e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 0)
        yield Delay(30e-6)
        
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 1)
        yield Delay(18e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_pin, 0)
        yield Delay(200e-6)
        
        
        
        
    
    
    
    main(m, ports=dut.ports())
