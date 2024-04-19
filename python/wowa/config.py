'''
Created on Apr 14, 2024

@author: Pat Deegan
@copyright: Copyright (C) 2024 Pat Deegan, https://psychogenic.com
'''
NumInputSynchronizerStagesDefault = 2

DACNumBits = 8

# this number comes from simulations indicating 
# that we need to cal for at least ~400ns
# assuming a max clock of 70MHz, that'd be 28 clocks
CalibrateNumClocks = 30
