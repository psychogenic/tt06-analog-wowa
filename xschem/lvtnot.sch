v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -190 150 -160 {lab=y}
N 150 -190 190 -190 {lab=y}
N 110 -190 110 -130 {lab=a}
N 70 -190 110 -190 {lab=a}
N 150 -330 150 -290 {lab=VCCPIN}
N 150 -90 150 -70 {lab=VSSPIN}
N 150 -130 230 -130 { lab=VSSPIN}
N 230 -130 230 -90 { lab=VSSPIN}
N 150 -90 230 -90 { lab=VSSPIN}
N 150 -290 230 -290 { lab=VCCPIN}
N 230 -290 230 -250 { lab=VCCPIN}
N 150 -250 230 -250 { lab=VCCPIN}
N 110 -250 110 -190 { lab=a}
N 150 -220 150 -190 {lab=y}
N 150 -100 150 -90 { lab=VSSPIN}
N 150 -290 150 -280 { lab=VCCPIN}
C {devices/opin.sym} 190 -190 0 0 {name=p1 lab=y verilog_type=wire}
C {devices/ipin.sym} 70 -190 0 0 {name=p2 lab=a}
C {devices/lab_pin.sym} 150 -330 0 0 {name=p149 lab=VCCPIN}
C {devices/lab_pin.sym} 150 -70 0 0 {name=p3 lab=VSSPIN}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 130 -250 0 0 {name=M2
L=0.35
W=2
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 130 -130 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} 40 -410 0 0 {name=p4 lab=VCCPIN}
C {devices/ipin.sym} 40 -380 0 0 {name=p5 lab=VSSPIN}
