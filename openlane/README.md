# WoWA Digital Control

Copying this entire directory to openlane `designs/wowa_digital` allows you to mount openlane

`$ make mount`

and from in there run

`./flow.tcl -design wowa_digital -tag SOMENAME`

results will be in ...designs/wowa_digital/runs/SOMENAME/results/final where you can find gds mag etc.


```
cp runs/SOMENAME/results/final/verilog/gl/wowa_digital.* src/ # (where project.v sits)

cp runs/SOMENAME/results/final/gds/wowa_digital.gds mag/ # magic stuff dir
```

start magic with sky130 tech (magicsky or -rcfile junk if that's how you roll)


in the tcl console:

```
gds readonly true

gds read wowa_digital.gds

```
The readonly is deadly important.  Save, use autowrite as it'll spit out a bunch of sky130 cells


Can now treat as normal... Insert that mag into your whatever, integrate, run LVS and all the things.

For LVS and stuff, need to integrate it--see src/project.v and my mag/tcl/lvs_netgen_toplevel.tcl
