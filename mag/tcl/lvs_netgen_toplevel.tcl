set project "tt_um_psychogenic_wowa"
set layout [readnet spice $project.lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source
# add any spice files of your analog blocks:
# readnet spice ../comparator_stefan.spice $source
# top level GL verilog

readnet spice ../xschem/simulation/wowa_analog.spice $source
readnet spice ../xschem/simulation/p3_opamp.spice $source
readnet verilog ../src/wowa_digital.v $source
readnet verilog ../src/project.v $source
lvs "$layout $project" "$source $project" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox
