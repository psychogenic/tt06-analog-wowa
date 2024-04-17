v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -190 -100 -190 {
lab=SEL}
N -20 -190 20 -190 {
lab=SEL_N}
N 70 -130 70 -90 {
lab=SEL_N}
N 70 -30 70 -10 {
lab=SEL}
N 70 110 70 130 {
lab=SEL_N}
N 70 40 70 50 {
lab=SEL}
N 110 -60 170 -60 {
lab=OUT}
N 170 -60 170 80 {
lab=OUT}
N 110 80 170 80 {
lab=OUT}
N 170 10 190 10 {
lab=OUT}
N 10 -60 30 -60 {
lab=IN1}
N 10 80 30 80 {
lab=IN0}
N 70 -130 90 -130 {
lab=SEL_N}
N -70 -250 -70 -220 {
lab=VCC}
N -70 -160 -70 -140 {
lab=VSS}
N 10 110 50 110 {
lab=SEL_N}
N 20 -30 50 -30 {
lab=SEL}
N 20 -90 50 -90 {}
N 20 50 50 50 {}
C {devices/ipin.sym} -250 -190 0 0 {name=p1 lab=SEL}
C {devices/ipin.sym} 10 80 0 0 {name=p2 lab=IN0}
C {devices/ipin.sym} 10 -60 0 0 {name=p3 lab=IN1}
C {devices/opin.sym} 190 10 0 0 {name=p4 lab=OUT}
C {devices/ipin.sym} -250 -300 0 0 {name=p5 lab=VCC}
C {devices/ipin.sym} -250 -270 0 0 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 20 -190 2 0 {name=p8 sig_type=std_logic lab=SEL_N}
C {devices/lab_pin.sym} 70 -10 0 0 {name=p7 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} 90 -130 2 0 {name=p9 sig_type=std_logic lab=SEL_N}
C {devices/lab_pin.sym} 70 130 0 0 {name=p10 sig_type=std_logic lab=SEL_N}
C {devices/lab_pin.sym} 70 40 0 0 {name=p11 sig_type=std_logic lab=SEL}
C {passgate.sym} 70 -60 0 0 {name=x2}
C {passgate.sym} 70 80 0 0 {name=x3}
C {lvtnot.sym} -60 -190 0 0 {name=x1}
C {devices/lab_pin.sym} -70 -250 2 0 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -70 -140 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 110 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 -30 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 -90 0 0 {name=p16 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 20 50 0 0 {name=p17 sig_type=std_logic lab=VCC}
