v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -590 830 -190 {flags=graph
y1=-0.053
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.70009e-07
x2=8.36991e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="DACOUT_PARAX
compout_parax"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 30 -1000 830 -600 {flags=graph
y1=-0.039
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.70009e-07
x2=8.36991e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="DACOUT
compout
input"
color="4 7 8"
dataset=-1
unitx=1
logx=0
logy=0
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

.include stimuli_tb_wowa_analog_withcal.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_wowa_analog_withcal.raw
  reset
  set appendwrite
  dowhile run < = 1
    save all
    tran 10n 8000n uic
    write tb_wowa_analog_withcal.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} -210 -260 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_wowa_analog_withcal.raw tran"
}
C {devices/lab_pin.sym} -260 10 0 1 {name=p25 lab=DACOUT}
C {wowa_analog.sym} -410 420 0 0 {name=x2

schematic=wowa_analog.sim
spice_sym_def="tcleval(.include [file normalize extracted/wowa_analog.sim.spice])"
tclcommand="textwindow [file normalize extracted/wowa_analog.sim.spice]"
}
C {devices/lab_pin.sym} -560 580 0 0 {name=p26 lab=VCC}
C {devices/lab_pin.sym} -560 600 0 0 {name=p27 lab=VSS}
C {devices/lab_pin.sym} -560 340 0 0 {name=p28 lab=USEEXT}
C {devices/lab_pin.sym} -560 280 0 0 {name=p29 lab=EN_N}
C {devices/lab_pin.sym} -560 360 0 0 {name=p30 lab=EXTTHRESH}
C {devices/lab_pin.sym} -560 300 0 0 {name=p31 lab=CAL}
C {devices/lab_pin.sym} -260 390 0 1 {name=p32 lab=COMPOUT_PARAX}
C {devices/lab_pin.sym} -560 390 0 0 {name=p33 lab=INPUT}
C {devices/lab_pin.sym} -560 420 0 0 {name=p34 lab=b0}
C {devices/lab_pin.sym} -560 440 0 0 {name=p35 lab=b1}
C {devices/lab_pin.sym} -560 460 0 0 {name=p36 lab=b2}
C {devices/lab_pin.sym} -560 480 0 0 {name=p37 lab=b3}
C {devices/lab_pin.sym} -560 500 0 0 {name=p38 lab=b4}
C {devices/lab_pin.sym} -560 520 0 0 {name=p39 lab=b5}
C {devices/lab_pin.sym} -560 540 0 0 {name=p40 lab=b6}
C {devices/lab_pin.sym} -560 560 0 0 {name=p41 lab=b7}
C {devices/lab_pin.sym} -260 430 0 1 {name=p42 lab=DACOUT_PARAX}
