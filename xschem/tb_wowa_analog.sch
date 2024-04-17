v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -590 830 -190 {flags=graph
y1=-0.07
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3e-10
x2=0.00015
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.thresh
compout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 30 -170 830 230 {flags=graph
y1=0.28
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3e-10
x2=0.00015
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0



color="8 4"
node="input

x1.x1.insig"}
N -370 -580 -370 -560 {
lab=GND}
N -400 -660 -370 -660 {
lab=b3}
N -370 -660 -370 -640 {
lab=b3}
N -490 -580 -490 -560 {
lab=GND}
N -520 -660 -490 -660 {
lab=b2}
N -490 -660 -490 -640 {
lab=b2}
N -600 -580 -600 -560 {
lab=GND}
N -630 -660 -600 -660 {
lab=b1}
N -600 -660 -600 -640 {
lab=b1}
N -720 -580 -720 -560 {
lab=GND}
N -750 -660 -720 -660 {
lab=b0}
N -720 -660 -720 -640 {
lab=b0}
N -370 -390 -370 -370 {
lab=GND}
N -400 -470 -370 -470 {
lab=b7}
N -370 -470 -370 -450 {
lab=b7}
N -490 -390 -490 -370 {
lab=GND}
N -520 -470 -490 -470 {
lab=b6}
N -490 -470 -490 -450 {
lab=b6}
N -600 -390 -600 -370 {
lab=GND}
N -630 -470 -600 -470 {
lab=b5}
N -600 -470 -600 -450 {
lab=b5}
N -720 -390 -720 -370 {
lab=GND}
N -750 -470 -720 -470 {
lab=b4}
N -720 -470 -720 -450 {
lab=b4}
C {devices/vsource.sym} -370 -610 0 0 {name=V1 value="pulse(0 1.8 0 0 0 8u 16u)" savecurrent=false}
C {devices/gnd.sym} -370 -560 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -400 -660 0 0 {name=p6 sig_type=std_logic lab=b3}
C {devices/vsource.sym} -490 -610 0 0 {name=V2 value="pulse(0 1.8 0 0 0 4u 8u)" savecurrent=false}
C {devices/gnd.sym} -490 -560 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -520 -660 0 0 {name=p7 sig_type=std_logic lab=b2}
C {devices/vsource.sym} -600 -610 0 0 {name=V3 value="pulse(0 1.8 0 0 0 2u 4u)" savecurrent=false}
C {devices/gnd.sym} -600 -560 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -630 -660 0 0 {name=p8 sig_type=std_logic lab=b1}
C {devices/vsource.sym} -720 -610 0 0 {name=V4 value="pulse(0 1.8 0 0 0 1u 2u)" savecurrent=false}
C {devices/gnd.sym} -720 -560 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -750 -660 0 0 {name=p9 sig_type=std_logic lab=b0
}
C {devices/vsource.sym} -370 -420 0 0 {name=V5 value="pulse(0 1.8 0 0 0 128u 256u)" savecurrent=false}
C {devices/gnd.sym} -370 -370 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -400 -470 0 0 {name=p14 sig_type=std_logic lab=b7}
C {devices/vsource.sym} -490 -420 0 0 {name=V6 value="pulse(0 1.8 0 0 0 64u 128u)" savecurrent=false}
C {devices/gnd.sym} -490 -370 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -520 -470 0 0 {name=p15 sig_type=std_logic lab=b6}
C {devices/vsource.sym} -600 -420 0 0 {name=V7 value="pulse(0 1.8 0 0 0 32u 64u)" savecurrent=false}
C {devices/gnd.sym} -600 -370 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -630 -470 0 0 {name=p16 sig_type=std_logic lab=b5}
C {devices/vsource.sym} -720 -420 0 0 {name=V8 value="pulse(0 1.8 0 0 0 16u 32u)" savecurrent=false}
C {devices/gnd.sym} -720 -370 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -750 -470 0 0 {name=p17 sig_type=std_logic lab=b4

}
C {wowa_analog.sym} -410 0 0 0 {name=x1}
C {devices/lab_pin.sym} -560 160 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -560 180 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} -560 -80 0 0 {name=p3 lab=USEEXT}
C {devices/lab_pin.sym} -560 -140 0 0 {name=p4 lab=EN_N}
C {devices/lab_pin.sym} -560 -60 0 0 {name=p5 lab=EXTTHRESH}
C {devices/lab_pin.sym} -560 -120 0 0 {name=p10 lab=CAL}
C {devices/lab_pin.sym} -260 -30 0 1 {name=p11 lab=COMPOUT}
C {devices/lab_pin.sym} -560 -30 0 0 {name=p12 lab=INPUT}
C {devices/lab_pin.sym} -560 0 0 0 {name=p13 lab=b0}
C {devices/lab_pin.sym} -560 20 0 0 {name=p18 lab=b1}
C {devices/lab_pin.sym} -560 40 0 0 {name=p19 lab=b2}
C {devices/lab_pin.sym} -560 60 0 0 {name=p20 lab=b3}
C {devices/lab_pin.sym} -560 80 0 0 {name=p21 lab=b4}
C {devices/lab_pin.sym} -560 100 0 0 {name=p22 lab=b5}
C {devices/lab_pin.sym} -560 120 0 0 {name=p23 lab=b6}
C {devices/lab_pin.sym} -560 140 0 0 {name=p24 lab=b7}
C {sky130_fd_pr/corner.sym} -960 20 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} -960 -160 0 0 {name=stimuli only_toplevel=false value="
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

.include stimuli_tb_wowa_analog.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_wowa_analog.raw
  reset
  set appendwrite
  dowhile run < = 10
    save all
    tran 50n 150u uic
    write tb_wowa_analog.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} -210 -260 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_wowa_analog.raw tran"
}
