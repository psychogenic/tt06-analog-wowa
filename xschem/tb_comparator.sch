v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 740 -840 1540 -440 {flags=graph
y1=0.25
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5421e-06
x2=8.63809e-06
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
B 2 740 -430 1540 -30 {flags=graph
y1=-0.88
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-11
x2=1.02e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="diffout_n
\\"input delta; plus minus -\\""
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
}
T {DUT} 230 -480 0 0 0.6 0.6 {}
T {External control signals} 100 -870 0 0 0.6 0.6 {}
T {We need a way to start calibration, 
that's the START signal, and it
needs to be inverted to use the 
passthrough and send the output
to the ADJ.} 410 -750 0 0 0.3 0.3 {}
T {Comparator output: 
tells us if PLUS side
is above MINUS input.
The 'delta' is just
"plus - minus", so 
comp should match
behaviour.} 560 -280 0 0 0.3 0.3 {}
T {Inputs} 740 -890 0 0 0.6 0.6 {}
N 150 -650 190 -650 {
lab=DIFFOUT_N}
N 370 -590 370 -560 {
lab=VSS}
N 270 -650 370 -650 {
lab=ADJ}
N 370 -650 540 -650 {
lab=ADJ}
N 230 -710 230 -680 {
lab=START}
N 230 -620 230 -600 {
lab=START_N}
N 300 -780 340 -780 {
lab=START_N}
N 200 -780 220 -780 {
lab=START}
C {comparator_stefan.sym} 330 -340 0 0 {name=x1}
C {devices/title.sym} 160 40 0 0 {name=l1 author="Pat Deegan"}
C {devices/lab_pin.sym} 180 -410 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 180 -280 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 250 -270 0 0 {name=p3 lab=EN_N}
C {devices/lab_pin.sym} 250 -250 0 0 {name=p4 lab=ADJ}
C {devices/lab_pin.sym} 380 -340 0 1 {name=p5 lab=DIFFOUT_N}
C {devices/lab_pin.sym} 180 -370 0 0 {name=p6 lab=PLUS}
C {devices/lab_pin.sym} 180 -320 0 0 {name=p7 lab=MINUS}
C {sky130_tests/passgate.sym} 230 -650 0 0 {name=x2 W_N=1 L_N=0.2 W_P=0.5 L_P=0.15 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {devices/lab_pin.sym} 150 -650 2 1 {name=p8 lab=DIFFOUT_N}
C {sky130_fd_pr/cap_mim_m3_2.sym} 370 -620 0 0 {name=C1 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 370 -560 0 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 540 -650 2 0 {name=p10 lab=ADJ}
C {devices/lab_pin.sym} 230 -710 2 1 {name=p11 lab=START}
C {devices/lab_pin.sym} 230 -600 2 1 {name=p12 lab=START_N}
C {sky130_tests/not.sym} 260 -780 0 0 {name=x3 m=1 
+ W_N=1 L_N=0.15 W_P=2 L_P=0.15 
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/lab_pin.sym} 340 -780 0 1 {name=p13 lab=START_N}
C {devices/lab_pin.sym} 200 -780 2 1 {name=p14 lab=START}
C {sky130_fd_pr/corner.sym} 20 -130 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 160 -130 0 0 {name=stimuli only_toplevel=false value="
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
  dowhile run < = 20
    save all
    tran 2n 10.2u uic
    write tb_comparator.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} 370 -110 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_comparator.raw tran"
}
