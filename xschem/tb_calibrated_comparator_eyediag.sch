v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 2070 -900 3850 -490 {flags=graph
y1=-0.0035
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.34365e-06
x2=2.1963e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="result
result_parax"
color="8 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2070 -1720 3850 -1340 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.34365e-06
x2=2.1963e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"calib flag;calib\\"
\\"applied sig; x1.insig\\"
\\"adj cap;x1.adj\\""
color="10 8 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2070 -1330 3850 -910 {flags=graph
y1=-0.22
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.34365e-06
x2=2.1963e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="threshv
input"
color="6 8"
dataset=-1
unitx=1
logx=0
logy=0
}
T {Threshold we're comparing to is iterated over 
(blue lines on right), so we can get an idea 
of best and worst types of output transitions 
(worst being when the signals are close)} 1250 -670 0 0 0.4 0.4 {}
T {Stimuli file is used to setup calibration, 
during with INPUT_A is fed into the comp 
inputs.  After that, INPUT_B gets twiddled 
by the pulse vsource.} 1120 -1280 0 0 0.4 0.4 {}
T {"Eye diagram" of transitions of a range
of temperatures and thresholds} 1160 -1720 0 0 0.8 0.8 {}
T {Set the pulse input signal using the params at the top of the spice stimuli 
file, here at left.  This is also where we set the steps for thresholds, 
temperature range, etc.} 1260 -1590 0 0 0.4 0.4 {}
T {Input and threshold} 2040 -1230 1 0 0.4 0.4 {}
T {Output of DUT and parax } 2050 -850 1 0 0.4 0.4 {}
N 1410 -1150 1470 -1150 {
lab=INPUT}
N 1260 -1150 1350 -1150 {
lab=INPUT_A}
N 1410 -1010 1470 -1010 {
lab=INPUT}
N 1260 -1010 1350 -1010 {
lab=INPUT_B}
N 1280 -1010 1280 -910 {
lab=INPUT_B}
N 1280 -850 1280 -830 {
lab=VSS}
N 1480 -700 1480 -690 {
lab=VSS}
N 1480 -780 1480 -760 {
lab=THRESHV}
C {calibrated_comparator.sym} 1800 -1380 0 0 {name=x1}
C {devices/lab_pin.sym} 1650 -1320 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 1650 -1300 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 1650 -1370 0 0 {name=p3 lab=INPUT}
C {devices/lab_pin.sym} 1650 -1390 0 0 {name=p4 lab=THRESHV}
C {devices/lab_pin.sym} 1830 -1380 0 1 {name=p5 lab=RESULT}
C {devices/lab_pin.sym} 1650 -1440 0 0 {name=p6 lab=CALIB}
C {sky130_fd_pr/corner.sym} 1110 -1420 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 1110 -1580 0 0 {name=stimuli only_toplevel=false value="


* Threshold pulse signals parms
.param VLOW = -0.2
.param VHIGH =2.2
.param PULSEWIDTH = 100n
.param PULSEPER = 200n



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
* .param VDL =  1.4
.param TEMPGAUSS = agauss(40, 30, 1)
.option temp = 'TEMPGAUSS'
** use following line to remove temperature variations
* .option temp = 25
.param DELTA = 0.002


* our calibration stage/setup
.include stimuli_tb_calibrated_comparator_eyediag.cir


.control
  setseed  8
  reset
  let run = 1
  let pw = 50n
  let pp = 100n
  let vthresh = 0.01
  save all
  op
  write tb_calibrated_comparator_eyediag.raw
  reset
  set appendwrite
  dowhile vthresh <= 1.6
   
   alter VTH vthresh
   dowhile run < = 3
    save all
    let pw = pw * 2
    let pp = pw * 2
    * alter VINPULSE PW = pw 
    * alter VINPULSE PER = pp
    tran 1n 3200n uic
    write tb_calibrated_comparator_eyediag.raw
    let run = run + 1
    reset
   end
   let vthresh = vthresh + 0.05
  end
  quit 0
.endc
"}
C {devices/launcher.sym} 1380 -1410 0 0 {name=h5
descr="load waves" 
tclcommand="simuldir; xschem raw_read $netlist_dir/tb_calibrated_comparator_eyediag.raw tran"}
C {devices/lab_pin.sym} 1650 -1460 0 0 {name=p7 lab=EN_N}
C {calibrated_comparator.sym} 1800 -1100 0 0 {name=x2
schematic=calibrated_comparator.sim
spice_sym_def="tcleval(.include [file normalize extracted/calibrated_comparator.sim.spice])"
tclcommand="textwindow [file normalize extracted/calibrated_comparator.sim.spice]"
}
C {devices/lab_pin.sym} 1650 -1040 0 0 {name=p8 lab=VCC}
C {devices/lab_pin.sym} 1650 -1020 0 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 1650 -1090 0 0 {name=p10 lab=INPUT}
C {devices/lab_pin.sym} 1650 -1110 0 0 {name=p11 lab=THRESHV}
C {devices/lab_pin.sym} 1830 -1100 0 1 {name=p12 lab=RESULT_PARAX}
C {devices/lab_pin.sym} 1650 -1160 0 0 {name=p13 lab=CALIB}
C {devices/lab_pin.sym} 1650 -1180 0 0 {name=p14 lab=EN_N}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 1380 -1150 1 0 {name=R1
L=40
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1470 -1150 2 0 {name=p15 lab=INPUT}
C {devices/lab_pin.sym} 1260 -1150 0 0 {name=p16 lab=INPUT_A}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 1380 -1010 1 0 {name=R2
L=40
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1470 -1010 2 0 {name=p17 lab=INPUT}
C {devices/lab_pin.sym} 1260 -1010 0 0 {name=p18 lab=INPUT_B}
C {devices/vsource.sym} 1280 -880 0 0 {name=VINPULSE value="pulse VLOW VHIGH 1u 5n 5n PULSEWIDTH PULSEPER" savecurrent=false}
C {devices/lab_pin.sym} 1280 -830 0 0 {name=p19 lab=VSS}
C {devices/vsource.sym} 1480 -730 0 0 {name=VTH value="dc 0.6" savecurrent=false}
C {devices/lab_pin.sym} 1480 -690 0 0 {name=p20 lab=VSS}
C {devices/lab_pin.sym} 1480 -780 0 0 {name=p21 lab=THRESHV}
C {devices/title.sym} 1190 -440 0 0 {name=l1 author="Pat Deegan"}
