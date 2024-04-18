'''
Created on Apr 14, 2024

@author: Pat Deegan
@copyright: Copyright (C) 2024 Pat Deegan, https://psychogenic.com
'''

from amaranth import Signal, Elaboratable, Module, ResetSignal
from amaranth.build import Platform

from amaranth.lib.cdc import FFSynchronizer


class MUX2bit(Elaboratable):
    '''
        Just a wire -- here for extensibility -- muxing happens 
        on analog side
    '''
    
    def __init__(self):
        # just one input and one output
        self.select = Signal()
        
    
    def ports(self):
        return [self.select]
    
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
    m.submodules.mux2bit = dut = MUX2bit()
    
    main(m, ports=dut.ports())


