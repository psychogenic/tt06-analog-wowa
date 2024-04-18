v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -920 -420 -900 -420 {
lab=b0}
N -920 -400 -900 -400 {
lab=b1}
N -920 -380 -900 -380 {
lab=b2}
N -920 -360 -900 -360 {
lab=b3}
N -920 -340 -900 -340 {
lab=b4}
N -920 -320 -900 -320 {
lab=b5}
N -920 -300 -900 -300 {
lab=b6}
N -920 -280 -900 -280 {
lab=b7}
N -300 -560 -280 -560 {
lab=EN_N}
N -300 -540 -280 -540 {
lab=CAL}
N -310 -490 -280 -490 {
lab=THRESH}
N -720 -570 -680 -570 {
lab=THRESH}
N -920 -540 -890 -540 {
lab=EXTTHRESH}
N -310 -470 -280 -470 {
lab=INPUT}
N -920 -600 -890 -600 {
lab=USEEXT}
N -920 -570 -890 -570 {
lab=INTTHRESH}
N -910 -500 -880 -500 {
lab=VCC}
N -910 -480 -890 -480 {
lab=VSS}
N -290 -400 -280 -400 {
lab=VSS}
N -290 -420 -280 -420 {
lab=VCC}
N -600 -380 -570 -380 {
lab=VSS}
N -600 -400 -580 -400 {
lab=VSS}
N -580 -400 -580 -380 {
lab=VSS}
N -600 -420 -570 -420 {
lab=DACOUT}
N -100 -480 -50 -480 {
lab=COMPOUT}
C {calibrated_comparator.sym} -130 -480 0 0 {name=x1}
C {r2r.sym} -750 -340 0 0 {name=x2}
C {devices/ipin.sym} -920 -420 0 0 {name=p1 lab=b0}
C {devices/ipin.sym} -920 -400 0 0 {name=p2 lab=b1}
C {devices/ipin.sym} -920 -380 0 0 {name=p3 lab=b2}
C {devices/ipin.sym} -920 -360 0 0 {name=p4 lab=b3}
C {devices/ipin.sym} -920 -340 0 0 {name=p5 lab=b4
}
C {devices/ipin.sym} -920 -320 0 0 {name=p6 lab=b5}
C {devices/ipin.sym} -920 -300 0 0 {name=p7 lab=b6}
C {devices/ipin.sym} -920 -280 0 0 {name=p8 lab=b7}
C {devices/ipin.sym} -300 -560 0 0 {name=p9 lab=EN_N}
C {devices/ipin.sym} -300 -540 0 0 {name=p10 lab=CAL}
C {onehot2mux.sym} -800 -560 0 0 {name=x3}
C {devices/ipin.sym} -310 -470 0 0 {name=p11 lab=INPUT}
C {devices/ipin.sym} -920 -540 0 0 {name=p12 lab=EXTTHRESH}
C {devices/lab_pin.sym} -310 -490 0 0 {name=p13 sig_type=std_logic lab=THRESH}
C {devices/lab_pin.sym} -680 -570 2 0 {name=p14 sig_type=std_logic lab=THRESH}
C {devices/ipin.sym} -920 -600 0 0 {name=p15 lab=USEEXT}
C {devices/lab_pin.sym} -920 -570 0 0 {name=p16 sig_type=std_logic lab=DACOUT}
C {devices/ipin.sym} -870 -710 0 0 {name=p17 lab=VCC}
C {devices/lab_pin.sym} -910 -500 0 0 {name=p18 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -910 -480 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -290 -400 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -290 -420 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -570 -380 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -870 -690 0 0 {name=p24 lab=VSS}
C {devices/opin.sym} -50 -480 0 0 {name=p25 lab=COMPOUT}
C {devices/opin.sym} -570 -420 0 0 {name=p26 lab=DACOUT}
