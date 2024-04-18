'''
Created on Apr 15, 2024

@author: Pat Deegan
@copyright: Copyright (C) 2024 Pat Deegan, https://psychogenic.com
'''


from amaranth import Signal, Elaboratable, Module, ResetSignal
from amaranth.build import Platform

import wowa.config as config

from wowa.adc import ADC

from enum import Enum, unique


class WoWADigital(Elaboratable):
    '''
flabel metal1 10200 41200 10400 41400 0 FreeSans 1280 180 0 0 b7
port 7 nsew
flabel metal1 9600 41200 9800 41400 0 FreeSans 1280 180 0 0 b6
port 6 nsew
flabel metal1 9000 41200 9200 41400 0 FreeSans 1280 180 0 0 b5
port 5 nsew
flabel metal1 8400 41200 8600 41400 0 FreeSans 1280 180 0 0 b4
port 4 nsew
flabel metal1 7800 41200 8000 41400 0 FreeSans 1280 180 0 0 b3
port 3 nsew
flabel metal1 7200 41200 7400 41400 0 FreeSans 1280 180 0 0 b2
port 2 nsew
flabel metal1 6600 41200 6800 41400 0 FreeSans 1280 180 0 0 b1
port 1 nsew
flabel metal1 6000 41200 6200 41400 0 FreeSans 1280 180 0 0 b0
port 0 nsew
flabel metal1 20000 41200 20200 41400 0 FreeSans 1280 0 0 0 EN_N
port 8 nsew
flabel metal1 22000 41200 22200 41400 0 FreeSans 1280 0 0 0 COMPOUT
port 15 nsew
flabel metal1 12400 41200 12600 41400 0 FreeSans 1280 0 0 0 CAL
port 9 nsew
flabel metal1 13800 27000 14000 27200 0 FreeSans 1280 0 0 0 INPUT
port 10 nsew
flabel metal1 12400 27000 12600 27200 0 FreeSans 1280 0 0 0 EXTTHRESH
port 11 nsew
flabel metal1 16440 40290 16640 40490 0 FreeSans 1280 0 0 0 VCC
port 13 nsew
flabel metal1 4800 27200 5000 27400 0 FreeSans 1280 0 0 0 VSS
port 14 nsew
flabel metal1 11000 41230 11200 41430 0 FreeSans 1280 180 0 0 USEEXT

    '''
    
    def __init__(self):
        # inputs 
        self.user_enable = Signal()
        self.analog_comparator_out = Signal()
        self.use_ext_thresh = Signal()
        self.calib_enable = Signal()

        #TODO FIXME DAC PINS??
        
        # outputs 
        self.result_ready = Signal()
        self.result = Signal(config.DACNumBits)
        self.dac_set = Signal(config.DACNumBits)
        self.comparator_nen = Signal()
        
        self.thresh_sel = Signal()
        self.do_calibrate = Signal()
        
        
        self.adc = ADC()
        
    def ports(self):
        return [
            self.user_enable,
            self.analog_comparator_out,
            self.do_calibrate,
            self.use_ext_thresh,
            self.result_ready,
            self.result,
            self.dac_set,
            self.comparator_nen,
            self.calib_enable,
            self.thresh_sel
            ]
    
    
    
    def elaborate(self, platform:Platform):
        m = Module()
        m.submodules.adc = self.adc 
        
        
        m.d.comb += [
            
            # user control ADC, inputs
            self.adc.enable.eq(self.user_enable),
            self.adc.use_calibration.eq(self.calib_enable),
            self.adc.use_external_reference.eq(self.use_ext_thresh),
            
            #input from analog side
            self.adc.analog_comparator_pin.eq(self.analog_comparator_out),
            
            # report to user, outputs
            self.result.eq(self.adc.result),
            self.result_ready.eq(self.adc.result_ready),
            
            # control analog side, outputs
            self.comparator_nen.eq(self.adc.comparator_enable_ctrl),
            self.dac_set.eq(self.adc.dac_setting),
            self.do_calibrate.eq(self.adc.comparator.calibrate),
            self.thresh_sel.eq(self.use_ext_thresh)
        ]

        return m


import random

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
    m.submodules.wowa_digital = dut = WoWADigital()
    
    
    # this simulation will only occur if module was run with 'simulate' action
    @Simulator.simulate(m, 'basic_startup', 
                        traces=[dut.dac_set, 
                                dut.analog_comparator_out,
                                dut.result, dut.result_ready])
    def basicstartup():
        
        
        '''
        self.user_enable = Signal()
        self.analog_comparator_out = Signal()
        self.use_ext_thresh = Signal()
        self.calib_enable = Signal()
        
        
        
        self.result_ready = Signal()
        self.result = Signal(config.DACNumBits)
        self.dac_set = Signal(config.DACNumBits)
        self.comparator_nen = Signal()
        '''
        yield from Simulator.set(dut.use_ext_thresh, 0)
        yield from Simulator.set(dut.calib_enable, 0)
        
        # internal
        yield from Simulator.set(dut.calib_enable, 0)
        
        # internal
        
        yield from Simulator.setAndTick(dut.user_enable, 1)
        
        yield Delay(20e-6)
        
        yield from Simulator.setAndTick(dut.analog_comparator_out, 1)
        yield Delay(300e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_out, 0)
        
        yield Delay(200e-6)
        
        
        
    # this simulation will only occur if module was run with 'simulate' action
    @Simulator.simulate(m, 'basic_ext_thresh', 
                        traces=[dut.dac_set, 
                                dut.analog_comparator_out,
                                dut.result, dut.result_ready])
    def extthresh():
        
        
        '''
        self.user_enable = Signal()
        self.analog_comparator_out = Signal()
        self.use_ext_thresh = Signal()
        self.calib_enable = Signal()
        
        
        
        self.result_ready = Signal()
        self.result = Signal(config.DACNumBits)
        self.dac_set = Signal(config.DACNumBits)
        self.comparator_nen = Signal()
        '''
        yield from Simulator.set(dut.use_ext_thresh, 1)
        yield from Simulator.set(dut.calib_enable, 0)
        
        # internal
        yield from Simulator.set(dut.calib_enable, 0)
        
        # internal
        
        yield from Simulator.setAndTick(dut.user_enable, 1)
        
        yield Delay(20e-6)
        
        yield from Simulator.setAndTick(dut.analog_comparator_out, 1)
        yield Delay(300e-6)
        yield from Simulator.setAndTick(dut.analog_comparator_out, 0)
        
        yield Delay(200e-6)
        
        
    
    
    # this simulation will only occur if module was run with 'simulate' action
    @Simulator.simulate(m, 'piped_signals', 
                        traces=[dut.dac_set, 
                                dut.analog_comparator_out,
                                dut.result, dut.result_ready])
    def pipedsigs():
        '''
        self.user_enable = Signal()
        self.analog_comparator_out = Signal()
        self.use_ext_thresh = Signal()
        self.calib_enable = Signal()
        
        
        
        self.result_ready = Signal()
        self.result = Signal(config.DACNumBits)
        self.dac_set = Signal(config.DACNumBits)
        self.comparator_nen = Signal()
        '''
        yield from Simulator.set(dut.use_ext_thresh, 0)
        yield from Simulator.set(dut.calib_enable, 0)
        # internal
        yield from Simulator.set(dut.user_enable, 0)
        yield from Simulator.setAndTick(dut.analog_comparator_out, 0)
        
        yield Delay(20e-6)
        yield from Simulator.setAndTick(dut.user_enable, 1)
        yield Delay(10e-6)
        yield from Simulator.setAndTick(dut.user_enable, 0)
        
        
        yield Delay(20e-6)
        yield from Simulator.setAndTick(dut.use_ext_thresh, 1)
        yield Delay(10e-6)
        yield from Simulator.setAndTick(dut.use_ext_thresh, 0)
        
        yield Delay(20e-6)
        yield from Simulator.setAndTick(dut.calib_enable, 1)
        yield Delay(20e-6)
        yield from Simulator.setAndTick(dut.user_enable, 1)
        yield Delay(20e-6)
        yield from Simulator.setAndTick(dut.calib_enable, 0)
        yield Delay(20e-6)
        yield from Simulator.setAndTick(dut.user_enable, 0)
        yield Delay(20e-6)
        
        
        
        
        
    
    # this simulation will only occur if module was run with 'simulate' action
    @Simulator.simulate(m, 'system_enable', 
                        traces=[dut.dac_set, 
                                dut.analog_comparator_out,
                                dut.result, dut.result_ready])
    def sysenable():
        yield from Simulator.set(dut.use_ext_thresh, 0)
        yield from Simulator.set(dut.calib_enable, 0)
        yield from Simulator.set(dut.user_enable, 0)
        yield from Simulator.setAndTick(dut.analog_comparator_out, 0)
        
        yield Delay(500e-6)
        yield from Simulator.setAndTick(dut.user_enable, 1)
        yield Delay(500e-6)
        yield from Simulator.set(dut.calib_enable, 1)
        yield from Simulator.setAndTick(dut.user_enable, 0)
        yield Delay(500e-6)
        yield from Simulator.setAndTick(dut.user_enable, 1)
        yield Delay(500e-6)
        
        
    
    # this simulation will only occur if module was run with 'simulate' action
    @Simulator.simulate(m, 'system_enable_randomstops', 
                        traces=[dut.dac_set,
                                dut.result,
                                dut.result_ready,
                                dut.user_enable,
                                dut.comparator_nen])
    def sysenrdm():
        yield from Simulator.set(dut.use_ext_thresh, 0)
        yield from Simulator.set(dut.calib_enable, 0)
        yield from Simulator.set(dut.user_enable, 0)
        yield from Simulator.setAndTick(dut.analog_comparator_out, 0)
        
        yield Delay(100e-6)
        
        for i in range(8):
            delon = random.randint(12, 200)
            yield from Simulator.setAndTick(dut.user_enable, 1)
            yield Delay(delon*1e-6)
            deloff = random.randint(30, 150)
            yield from Simulator.setAndTick(dut.user_enable, 0)
            yield Delay(deloff*1e-6)
            
        

        
    
        
        
    
    
    main(m, name='wowa', ports=dut.ports())