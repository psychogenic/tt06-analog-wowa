v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1370 -1110 2270 -630 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=2.6e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="en
out
out_parax"
color="4 8 7"
dataset=-1
unitx=1
logx=0
logy=0
}
T {Simple test of switch operation} 670 -1230 0 0 1 1 {}
T {Switch enabled, signal goes to out.
When off, cap holds last value.} 1530 -610 0 0 0.7 0.7 {}
N 1060 -900 1060 -870 {
lab=VSS}
N 1060 -960 1230 -960 {
lab=OUT}
N 990 -960 1060 -960 {
lab=OUT}
N 450 -900 450 -880 {
lab=VSS}
N 450 -820 450 -810 {
lab=VSS}
N 450 -880 450 -820 {
lab=VSS}
N 450 -980 450 -960 {
lab=IN}
N 450 -980 490 -980 {
lab=IN}
N 1060 -700 1060 -670 {
lab=VSS}
N 1060 -760 1230 -760 {
lab=OUT_PARAX}
N 990 -760 1060 -760 {
lab=OUT_PARAX}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1060 -930 0 0 {name=C1 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 1060 -870 0 0 {name=p9 lab=VSS}
C {analogswitch.sym} 840 -960 0 0 {name=x1}
C {devices/lab_pin.sym} 690 -910 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 690 -890 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 690 -990 0 0 {name=p3 lab=EN}
C {devices/lab_pin.sym} 690 -960 0 0 {name=p4 lab=IN}
C {devices/lab_pin.sym} 1230 -960 2 0 {name=p5 lab=OUT}
C {devices/vsource.sym} 450 -930 0 0 {name=V1 value="SIN (1 0.5 10Meg)"
 savecurrent=false}
C {devices/lab_pin.sym} 450 -810 0 0 {name=p6 lab=VSS}
C {sky130_fd_pr/corner.sym} 230 -860 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 220 -1010 0 0 {name=stimuli only_toplevel=false value="
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

.include stimuli_tb_analogswitch.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_analogswitch.raw
  reset
  set appendwrite
  dowhile run < = 10
    save all
    tran 1n 2600n uic
    write tb_analogswitch.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} 300 -640 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_analogswitch.raw tran"
}
C {devices/lab_pin.sym} 490 -980 2 0 {name=p7 lab=IN}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1060 -730 0 0 {name=C2 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 1060 -670 0 0 {name=p8 lab=VSS}
C {analogswitch.sym} 840 -760 0 0 {name=x2
schematic=analogswitch.sim
spice_sym_def="tcleval(.include [file normalize extracted/analogswitch.sim.spice])"
tclcommand="textwindow [file normalize extracted/analogswitch.sim.spice]"
}
C {devices/lab_pin.sym} 690 -710 0 0 {name=p10 lab=VCC}
C {devices/lab_pin.sym} 690 -690 0 0 {name=p11 lab=VSS}
C {devices/lab_pin.sym} 690 -790 0 0 {name=p12 lab=EN}
C {devices/lab_pin.sym} 690 -760 0 0 {name=p13 lab=IN}
C {devices/lab_pin.sym} 1230 -760 2 0 {name=p14 lab=OUT_PARAX}
C {devices/title.sym} 380 -530 0 0 {name=l1 author="Pat Deegan"}
