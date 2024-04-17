v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1180 -1120 1980 -720 {flags=graph
y1=0.314429
y2=1.37611
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.07688e-06
x2=7.97685e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="plus
minus"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1240 -1580 2040 -1180 {flags=graph
y1=-0.029
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.07688e-06
x2=7.97685e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=diffout_n
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N 350 -510 390 -510 {
lab=DIFFOUT_N}
N 570 -450 570 -420 {
lab=VSS}
N 470 -510 570 -510 {
lab=ADJ}
N 570 -510 740 -510 {
lab=ADJ}
N 430 -570 430 -540 {
lab=START}
N 430 -480 430 -460 {
lab=START_N}
N 300 -780 340 -780 {
lab=START_N}
N 200 -780 220 -780 {
lab=START}
C {comparator_stefan.sym} 380 -240 0 0 {name=x1}
C {devices/title.sym} 160 40 0 0 {name=l1 author="Pat Deegan"}
C {devices/lab_pin.sym} 230 -310 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 230 -180 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 300 -170 0 0 {name=p3 lab=EN_N}
C {devices/lab_pin.sym} 300 -150 0 0 {name=p4 lab=ADJ}
C {devices/lab_pin.sym} 430 -240 0 1 {name=p5 lab=DIFFOUT_N}
C {devices/lab_pin.sym} 230 -270 0 0 {name=p6 lab=PLUS}
C {devices/lab_pin.sym} 230 -220 0 0 {name=p7 lab=MINUS}
C {sky130_tests/passgate.sym} 430 -510 0 0 {name=x2 W_N=1 L_N=0.2 W_P=0.5 L_P=0.15 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {devices/lab_pin.sym} 350 -510 2 1 {name=p8 lab=DIFFOUT_N}
C {sky130_fd_pr/cap_mim_m3_2.sym} 570 -480 0 0 {name=C1 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 570 -420 0 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 740 -510 2 0 {name=p10 lab=ADJ}
C {devices/lab_pin.sym} 430 -570 2 1 {name=p11 lab=START}
C {devices/lab_pin.sym} 430 -460 2 1 {name=p12 lab=START_N}
C {sky130_tests/not.sym} 260 -780 0 0 {name=x3 m=1 
+ W_N=1 L_N=0.15 W_P=2 L_P=0.15 
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/lab_pin.sym} 340 -780 0 1 {name=p13 lab=START_N}
C {devices/lab_pin.sym} 200 -780 2 1 {name=p14 lab=START}
C {sky130_fd_pr/corner.sym} 1050 -130 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 1070 -320 0 0 {name=stimuli only_toplevel=false value="
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

.include stimuli_tb_comparator.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_comparator.raw
  reset
  set appendwrite
  dowhile run < = 5
    save all
    tran 1n 16000n uic
    write tb_comparator.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} 1410 -520 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_comparator.raw tran"
}
