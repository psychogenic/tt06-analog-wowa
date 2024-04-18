v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -480 280 320 680 {flags=graph
y1=0.248056
y2=2.14805
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.59989e-07
x2=2.34e-06
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
N 50 -20 50 10 {
lab=VSS}
N 50 -80 220 -80 {
lab=OUT}
N -20 -80 50 -80 {
lab=OUT}
N -640 -190 -640 -170 {
lab=VSS}
N -640 -110 -640 -100 {
lab=VSS}
N -640 -170 -640 -110 {
lab=VSS}
N -640 -270 -640 -250 {
lab=IN}
N -640 -270 -600 -270 {
lab=IN}
N 50 180 50 210 {
lab=VSS}
N 50 120 220 120 {
lab=OUT_PARAX}
N -20 120 50 120 {
lab=OUT_PARAX}
C {sky130_fd_pr/cap_mim_m3_2.sym} 50 -50 0 0 {name=C1 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 50 10 0 0 {name=p9 lab=VSS}
C {analogswitch.sym} -170 -80 0 0 {name=x1}
C {devices/lab_pin.sym} -320 -30 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -320 -10 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} -320 -110 0 0 {name=p3 lab=EN}
C {devices/lab_pin.sym} -320 -80 0 0 {name=p4 lab=IN}
C {devices/lab_pin.sym} 220 -80 2 0 {name=p5 lab=OUT}
C {devices/vsource.sym} -640 -220 0 0 {name=V1 value="SIN (1 0.5 10Meg)"
 savecurrent=false}
C {devices/lab_pin.sym} -640 -100 0 0 {name=p6 lab=VSS}
C {sky130_fd_pr/corner.sym} -950 110 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} -930 -80 0 0 {name=stimuli only_toplevel=false value="
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
C {devices/launcher.sym} -880 330 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_analogswitch.raw tran"
}
C {devices/lab_pin.sym} -600 -270 2 0 {name=p7 lab=IN}
C {sky130_fd_pr/cap_mim_m3_2.sym} 50 150 0 0 {name=C2 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 50 210 0 0 {name=p8 lab=VSS}
C {analogswitch.sym} -170 120 0 0 {name=x2
schematic=analogswitch.sim
spice_sym_def="tcleval(.include [file normalize extracted/analogswitch.sim.spice])"
tclcommand="textwindow [file normalize extracted/analogswitch.sim.spice]"
}
C {devices/lab_pin.sym} -320 170 0 0 {name=p10 lab=VCC}
C {devices/lab_pin.sym} -320 190 0 0 {name=p11 lab=VSS}
C {devices/lab_pin.sym} -320 90 0 0 {name=p12 lab=EN}
C {devices/lab_pin.sym} -320 120 0 0 {name=p13 lab=IN}
C {devices/lab_pin.sym} 220 120 2 0 {name=p14 lab=OUT_PARAX}
