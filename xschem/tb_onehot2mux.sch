v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 230 -290 1030 110 {flags=graph
y1=0.38
y2=2.28
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.8708e-08
x2=9.6129e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="sel
x1.sel_n"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 260 -800 1060 -400 {flags=graph
y1=0.34
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.8708e-08
x2=9.6129e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 230 300 1030 700 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.8708e-08
x2=9.6129e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vss
vcc"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 270 -1240 1070 -840 {flags=graph
y1=0.5
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.8708e-08
x2=9.6129e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in0
in1"
color="7 8"
dataset=-1
unitx=1
logx=0
logy=0
}
C {onehot2mux.sym} 10 0 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} -420 310 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} -400 120 0 0 {name=stimuli only_toplevel=false value="
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

.include stimuli_tb_onehot2mux.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_onehot2mux.raw
  reset
  set appendwrite
  dowhile run < = 50
    save all
    tran 1n 1000n uic
    write tb_onehot2mux.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} 280 200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_onehot2mux.raw tran"
}
C {devices/lab_pin.sym} -80 60 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -80 80 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} -80 -40 0 0 {name=p3 lab=SEL}
C {devices/lab_pin.sym} -80 20 0 0 {name=p4 lab=IN1}
C {devices/lab_pin.sym} 90 -10 0 1 {name=p5 lab=OUT}
C {devices/lab_pin.sym} -80 -10 0 0 {name=p6 lab=IN0}
