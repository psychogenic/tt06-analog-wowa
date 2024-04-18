'''
Created on Apr 14, 2024

@author: Pat Deegan
@copyright: Copyright (C) 2024 Pat Deegan, https://psychogenic.com
'''

from amaranth import Signal, Elaboratable, Module, ResetSignal
from amaranth.build import Platform

import wowa.config as config

class R2RDAC(Elaboratable):
    '''
        EdgeDetect puts out a pulse for 1 clock cycle, on each rising edge.
        
        @note: it uses an FF synchronizer to do this, crossing the clock
                domains (relatively) safely.  May add extra stages, but 
                it is unlikely to be required.
    '''
    
    def __init__(self, numBits:int = config.DACNumBits):
        # just one input and one output
        self.value = Signal(numBits)
        
    
    def ports(self):
        return [self.value]
    
    def elaborate(self, platform:Platform):
        m = Module()
        
            
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
    m.submodules.dac = dut = R2RDAC()
    
    
    main(m, ports=dut.ports())


