v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -190 -100 -190 {
lab=EN}
N -20 -190 20 -190 {
lab=EN_N}
N 70 -130 70 -90 {
lab=EN_N}
N 70 -30 70 -10 {
lab=EN}
N 110 -60 170 -60 {
lab=OUT}
N 10 -60 30 -60 {
lab=IN1}
N 70 -130 90 -130 {
lab=EN_N}
N -70 -250 -70 -220 {
lab=VCC}
N -70 -160 -70 -140 {
lab=VSS}
N 20 -30 50 -30 {
lab=VSS}
N 20 -90 50 -90 {
lab=VCC}
N 170 -60 180 -60 {
lab=OUT}
C {devices/ipin.sym} -250 -190 0 0 {name=p1 lab=EN}
C {devices/ipin.sym} 10 -60 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 180 -60 0 0 {name=p4 lab=OUT}
C {devices/ipin.sym} -250 -300 0 0 {name=p5 lab=VCC}
C {devices/ipin.sym} -250 -270 0 0 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 20 -190 2 0 {name=p8 sig_type=std_logic lab=EN_N}
C {devices/lab_pin.sym} 70 -10 0 0 {name=p7 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 90 -130 2 0 {name=p9 sig_type=std_logic lab=EN_N}
C {passgate.sym} 70 -60 0 0 {name=x2}
C {lvtnot.sym} -60 -190 0 0 {name=x1}
C {devices/lab_pin.sym} -70 -250 2 0 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -70 -140 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 -30 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 -90 0 0 {name=p16 sig_type=std_logic lab=VCC}
