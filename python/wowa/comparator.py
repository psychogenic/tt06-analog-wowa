'''
Created on Apr 14, 2024

@author: Pat Deegan
@copyright: Copyright (C) 2024 Pat Deegan, https://psychogenic.com
'''


from amaranth import Signal, Elaboratable, Module, ResetSignal
from amaranth.build import Platform

from amaranth.lib.cdc import FFSynchronizer

import wowa.config as config

from wowa.comparator_result import ComparatorResult
from wowa.mux2bit import MUX2bit
from wowa.dac import R2RDAC

class Comparator(Elaboratable):
    '''

    '''
    
    def __init__(self, numStages:int = config.NumInputSynchronizerStagesDefault):
        #inputs
        self.analog_comp_input = Signal()
        self.n_enable = Signal()
        self.calibrate = Signal()
        self.use_external_reference = Signal()
        
        
        # ouputs
        self.result = Signal() 
        
        self.comparator_res = ComparatorResult(numStages)
        
    
    def ports(self):
        return [self.analog_comp_input, self.n_enable, self.calibrate, 
                self.use_external_reference, self.result]
    
    @property 
    def numStages(self):
        return self.comparator_res.numStages
    
    
    def elaborate(self, platform:Platform):
        m = Module()
        m.submodules.compres = self.comparator_res
        
        m.d.comb += [
            self.comparator_res.input.eq(self.analog_comp_input),
            self.result.eq(self.comparator_res.output),
        ]

        
        
            
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
    m.submodules.comparator = dut = Comparator()
    
    
    
    
    
    main(m, ports=dut.ports())


