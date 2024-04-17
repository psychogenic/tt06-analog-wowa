v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -190 -250 -170 -250 {
lab=INPUT}
N 0 -250 180 -250 {
lab=INSIG}
N -190 -220 -170 -220 {
lab=THRESHV}
N -190 -280 -180 -280 {
lab=CALIB}
N -180 -280 -170 -280 {
lab=CALIB}
N -190 -180 -170 -180 {
lab=VCC}
N -190 -160 -170 -160 {
lab=VSS}
N 490 -450 670 -450 {
lab=ADJ}
N 580 -450 580 -430 {
lab=ADJ}
N 580 -370 580 -350 {
lab=VSS}
C {comparator_stefan.sym} 330 -220 0 0 {name=x1}
C {analogswitch.sym} 340 -450 0 0 {name=x2}
C {devices/lab_pin.sym} 190 -400 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 190 -380 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 190 -480 0 0 {name=p3 lab=CALIB}
C {devices/lab_pin.sym} 670 -450 0 1 {name=p4 lab=ADJ}
C {devices/lab_pin.sym} 190 -450 0 0 {name=p5 lab=RESULT}
C {devices/lab_pin.sym} 180 -290 0 0 {name=p6 lab=VCC}
C {devices/lab_pin.sym} 180 -160 0 0 {name=p7 lab=VSS}
C {devices/lab_pin.sym} 250 -150 0 0 {name=p8 lab=EN_N}
C {devices/lab_pin.sym} 250 -130 0 0 {name=p9 lab=ADJ}
C {devices/lab_pin.sym} 380 -220 0 1 {name=p10 lab=RESULT}
C {devices/lab_pin.sym} -190 -250 0 0 {name=p11 lab=INPUT}
C {devices/lab_pin.sym} 180 -200 0 0 {name=p12 lab=THRESHV}
C {devices/ipin.sym} -50 -510 0 0 {name=p13 lab=VCC}
C {devices/ipin.sym} -50 -490 0 0 {name=p14 lab=VSS}
C {devices/ipin.sym} -50 -420 0 0 {name=p15 lab=INPUT}
C {devices/ipin.sym} -50 -390 0 0 {name=p16 lab=THRESHV}
C {devices/ipin.sym} -50 -440 0 0 {name=p17 lab=CALIB}
C {onehot2mux.sym} -80 -240 0 0 {name=x3}
C {devices/lab_wire.sym} 80 -250 0 0 {name=p18 sig_type=std_logic lab=INSIG}
C {devices/lab_pin.sym} -190 -220 0 0 {name=p19 lab=THRESHV}
C {devices/lab_pin.sym} -190 -280 0 0 {name=p20 lab=CALIB}
C {devices/lab_pin.sym} -190 -180 0 0 {name=p21 lab=VCC}
C {devices/lab_pin.sym} -190 -160 0 0 {name=p22 lab=VSS}
C {devices/opin.sym} -60 -350 0 0 {name=p23 lab=RESULT}
C {devices/lab_pin.sym} 580 -350 0 0 {name=p24 lab=VSS}
C {devices/ipin.sym} -50 -460 0 0 {name=p25 lab=EN_N}
C {sky130_fd_pr/cap_mim_m3_1.sym} 580 -400 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=4 spiceprefix=X}
