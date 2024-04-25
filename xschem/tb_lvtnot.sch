v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1020 -1340 1820 -940 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=a
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1030 -920 1830 -520 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=y}
B 2 1030 -490 1830 -90 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 7"
node="y
y_parax"}
B 2 160 -1360 960 -960 {flags=graph,unlocked
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
y_parax"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
x1=1.99932e-07
x2=2.01044e-07}
T {Fast Transition} 410 -1420 0 0 0.7 0.7 {}
T {Output y/y_parax is the inverse of input a,
it's an inverter! yay.} 180 -530 0 0 0.7 0.7 {}
C {lvtnot.sym} 520 -710 0 0 {name=x1}
C {devices/lab_pin.sym} 480 -710 0 0 {name=p1 lab=a}
C {devices/lab_pin.sym} 560 -710 0 1 {name=p2 lab=y}
C {devices/lab_pin.sym} 510 -740 0 0 {name=p3 lab=VCC}
C {devices/lab_pin.sym} 510 -680 0 0 {name=p4 lab=VSS}
C {sky130_fd_pr/corner.sym} 150 -750 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 150 -900 0 0 {name=stimuli only_toplevel=false value="
** this experimental option enables mos model bin 
** selection based on W/NF instead of W
.option chgtol=4e-16 method=gear

.param VCCGAUSS = agauss(1.8, 0.05, 1)
.param VCC = 'VCCGAUSS'
** use following line to remove VCC variations
* .param VCC = 1.8
.param VDLGAUSS = agauss(0.9, 0.23, 1)
.param VDL = VDLGAUSS
** use following line to remove input common mode variations
* .param VDL =  0.9
.param TEMPGAUSS = agauss(40, 30, 1)
.option temp = 'TEMPGAUSS'
** use following line to remove temperature variations
* .option temp = 25
.param DELTA = 0.002

.include stimuli_tb_lvtnot.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_lvtnot.raw
  reset
  set appendwrite
  dowhile run < = 5
    save all
    tran 1n 1000n uic
    write tb_lvtnot.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} 800 -870 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_lvtnot.raw tran"
}
C {lvtnot.sym} 800 -710 0 0 {name=x2
schematic=lvtnot_parax.sim
spice_sym_def="tcleval(.include [file normalize extracted/lvtnot.sim.spice])"
tclcommand="textwindow [file normalize extracted/lvtnot.sim.spice]"
}
C {devices/lab_pin.sym} 760 -710 0 0 {name=p5 lab=a}
C {devices/lab_pin.sym} 840 -710 0 1 {name=p6 lab=y_parax}
C {devices/lab_pin.sym} 790 -740 0 0 {name=p7 lab=VCC}
C {devices/lab_pin.sym} 790 -680 0 0 {name=p8 lab=VSS}
C {devices/title.sym} 280 -30 0 0 {name=l1 author="Pat Deegan"}
