v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 990 -920 1790 -520 {flags=graph
y1=-0.0015
y2=1.9
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
node="sel
x1.sel_n"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 990 -1350 1790 -950 {flags=graph
y1=0.34
y2=1.8
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
node="out
sel"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 990 -510 1790 -110 {flags=graph
y1=0
y2=1.9
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
node="vss
vcc"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 990 -1790 1790 -1390 {flags=graph
y1=0.5
y2=1.8
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
node="in0
in1"
color="7 8"
dataset=-1
unitx=1
logx=0
logy=0
}
T {When SEL is HIGH, 
output matches in1,
otherwise in0 is 
on the output} 700 -1260 0 0 0.6 0.6 {}
T {Signal present
on inputs 0, 1} 700 -1640 0 0 0.6 0.6 {}
T {Inside the MUX, we 
need an inverted
version of the SEL.
This graphs peeks
at that.} 680 -800 0 0 0.6 0.6 {}
T {Simulated variations
on VCC} 680 -340 0 0 0.6 0.6 {}
T {DUT} 370 -1150 0 0 0.6 0.6 {}
C {onehot2mux.sym} 450 -1040 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} 250 -710 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 250 -880 0 0 {name=stimuli only_toplevel=false value="
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
C {devices/launcher.sym} 520 -800 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_onehot2mux.raw tran"
}
C {devices/lab_pin.sym} 360 -980 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 360 -960 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 360 -1080 0 0 {name=p3 lab=SEL}
C {devices/lab_pin.sym} 360 -1020 0 0 {name=p4 lab=IN1}
C {devices/lab_pin.sym} 530 -1050 0 1 {name=p5 lab=OUT}
C {devices/lab_pin.sym} 360 -1050 0 0 {name=p6 lab=IN0}
C {devices/title.sym} 370 -50 0 0 {name=l1 author="Pat Deegan"}
