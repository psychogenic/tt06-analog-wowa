v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 500 -420 1300 -20 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.5e-12
x2=3.2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.insig
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 500 400 1300 800 {flags=graph
y1=-0.0035
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.5e-12
x2=3.2e-06
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
B 2 500 -10 1300 390 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.5e-12
x2=3.2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=calib
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 500 -840 1300 -440 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.5e-12
x2=3.2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=input
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
C {calibrated_comparator.sym} 230 -100 0 0 {name=x1}
C {devices/lab_pin.sym} 80 -40 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 80 -20 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 80 -90 0 0 {name=p3 lab=INPUT}
C {devices/lab_pin.sym} 80 -110 0 0 {name=p4 lab=THRESHV}
C {devices/lab_pin.sym} 260 -100 0 1 {name=p5 lab=RESULT}
C {devices/lab_pin.sym} 80 -160 0 0 {name=p6 lab=CALIB}
C {sky130_fd_pr/corner.sym} -300 -190 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} -280 -380 0 0 {name=stimuli only_toplevel=false value="
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

.include stimuli_tb_calibrated_comparator.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_calibrated_comparator.raw
  reset
  set appendwrite
  dowhile run < = 5
    save all
    tran 1n 3200n uic
    write tb_calibrated_comparator.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} 70 -410 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_calibrated_comparator.raw tran"}
C {devices/lab_pin.sym} 80 -180 0 0 {name=p7 lab=EN_N}
C {calibrated_comparator.sym} 230 180 0 0 {name=x2
schematic=calibrated_comparator.sim
spice_sym_def="tcleval(.include [file normalize extracted/calibrated_comparator.sim.spice])"
tclcommand="textwindow [file normalize extracted/calibrated_comparator.sim.spice]"
}
C {devices/lab_pin.sym} 80 240 0 0 {name=p8 lab=VCC}
C {devices/lab_pin.sym} 80 260 0 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 80 190 0 0 {name=p10 lab=INPUT}
C {devices/lab_pin.sym} 80 170 0 0 {name=p11 lab=THRESHV}
C {devices/lab_pin.sym} 260 180 0 1 {name=p12 lab=RESULT_PARAX}
C {devices/lab_pin.sym} 80 120 0 0 {name=p13 lab=CALIB}
C {devices/lab_pin.sym} 80 100 0 0 {name=p14 lab=EN_N}
