v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -540 620 -480 {
lab=G1}
N 620 -640 620 -600 {
lab=inhigh}
N 620 -640 860 -640 {
lab=inhigh}
N 860 -640 860 -590 {
lab=inhigh}
N 740 -670 740 -640 {
lab=inhigh}
N 860 -530 860 -480 {
lab=G2}
N 820 -500 820 -450 {
lab=G2}
N 820 -500 860 -500 {
lab=G2}
N 660 -500 660 -450 {
lab=G1}
N 620 -500 660 -500 {
lab=G1}
N 620 -420 620 -360 {
lab=VSS}
N 620 -360 860 -360 {
lab=VSS}
N 860 -420 860 -360 {
lab=VSS}
N 740 -360 740 -320 {
lab=VSS}
N 740 -760 740 -730 {
lab=VCC}
N 500 -570 580 -570 {
lab=MINUS}
N 900 -560 970 -560 {
lab=PLUS}
N 640 -700 700 -700 {
lab=EN_N}
N 860 -450 940 -450 {
lab=VSS}
N 550 -450 620 -450 {
lab=VSS}
N 620 -570 660 -570 {
lab=VCC}
N 740 -700 790 -700 {
lab=VCC}
N 820 -560 860 -560 {
lab=VCC}
N 1020 -680 1020 -650 {
lab=VSS}
N 970 -810 1020 -810 {
lab=VCC}
N 1020 -710 1080 -710 {
lab=VSS}
N 1020 -780 1020 -740 {
lab=pg2g}
N 1060 -810 1080 -810 {
lab=pg2g}
N 1080 -810 1080 -770 {
lab=pg2g}
N 1020 -770 1080 -770 {
lab=pg2g}
N 1080 -810 1130 -810 {
lab=pg2g}
N 1170 -810 1210 -810 {
lab=VCC}
N 1170 -990 1170 -960 {
lab=VCC}
N 1070 -930 1130 -930 {
lab=EN_N}
N 1170 -930 1220 -930 {
lab=VCC}
N 1170 -900 1170 -840 {
lab=mirhigh}
N 1020 -880 1020 -840 {
lab=mirhigh}
N 1020 -880 1170 -880 {
lab=mirhigh}
N 1170 -520 1250 -520 {
lab=VSS}
N 860 -520 1130 -520 {
lab=G2}
N 1170 -780 1170 -550 {
lab=DIFFOUT}
N 1170 -490 1170 -360 {
lab=VSS}
N 860 -360 1170 -360 {
lab=VSS}
N 1280 -430 1320 -430 {
lab=EN_N}
N 1360 -430 1430 -430 {
lab=VSS}
N 1360 -640 1360 -460 {
lab=DIFFOUT}
N 1170 -640 1360 -640 {
lab=DIFFOUT}
N 1170 -360 1360 -360 {
lab=VSS}
N 1360 -400 1360 -360 {
lab=VSS}
N 1360 -640 1450 -640 {
lab=DIFFOUT}
N 390 -810 460 -810 {
lab=VSS}
N 390 -910 460 -910 {
lab=VSS}
N 390 -1030 430 -1030 {
lab=VCC}
N 390 -1130 430 -1130 {
lab=VCC}
N 390 -1190 390 -1160 {
lab=VCC}
N 310 -1130 350 -1130 {
lab=EN_N}
N 390 -1100 390 -1060 {
lab=p2p}
N 330 -1030 350 -1030 {
lab=ADJ}
N 330 -1030 330 -910 {
lab=ADJ}
N 330 -910 350 -910 {
lab=ADJ}
N 390 -780 390 -750 {
lab=VSS}
N 330 -810 350 -810 {
lab=VCC}
N 390 -880 390 -840 {
lab=n2n}
N 390 -1000 390 -940 {
lab=G1}
N 390 -970 450 -970 {
lab=G1}
C {devices/title.sym} 150 100 0 0 {name=l1 author="Pat Deegan"}
C {devices/ipin.sym} 80 -40 0 0 {name=p1 lab=PLUS}
C {devices/ipin.sym} 90 -20 0 0 {name=p2 lab=MINUS}
C {devices/ipin.sym} 90 -250 0 0 {name=p3 lab=VCC}
C {devices/ipin.sym} 90 -230 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 80 -110 0 0 {name=p5 lab=EN_N}
C {devices/ipin.sym} 80 -80 0 0 {name=p6 lab=ADJ}
C {devices/opin.sym} 130 -60 0 0 {name=p7 lab=DIFFOUT}
C {sky130_fd_pr/pfet_01v8.sym} 720 -700 0 0 {name=M1
L=8
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 600 -570 0 0 {name=M2
L=2
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 880 -560 2 0 {name=M3
L=2
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 840 -450 0 0 {name=M4
L=4
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 640 -450 2 0 {name=M5
L=4
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 740 -320 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -760 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 500 -570 0 0 {name=p10 sig_type=std_logic lab=MINUS}
C {devices/lab_pin.sym} 970 -560 2 0 {name=p11 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 640 -700 0 0 {name=p12 sig_type=std_logic lab=EN_N}
C {devices/lab_pin.sym} 940 -450 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 -450 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -560 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 660 -570 2 0 {name=p16 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 790 -700 2 0 {name=p17 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 620 -510 0 0 {name=p18 sig_type=std_logic lab=G1}
C {devices/lab_wire.sym} 850 -500 0 0 {name=p19 sig_type=std_logic lab=G2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1000 -710 0 0 {name=M6
L=4
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1020 -650 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 980 -710 0 0 {name=p21 sig_type=std_logic lab=G1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1040 -810 2 0 {name=M7
L=4
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 970 -810 0 0 {name=p22 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1080 -710 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1150 -810 0 0 {name=M8
L=4
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1210 -810 2 0 {name=p24 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_01v8.sym} 1150 -930 0 0 {name=M9
L=0.15
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1170 -990 0 0 {name=p25 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1070 -930 0 0 {name=p26 sig_type=std_logic lab=EN_N}
C {devices/lab_pin.sym} 1220 -930 2 0 {name=p27 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1150 -520 0 0 {name=M10
L=4
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1250 -520 2 0 {name=p28 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 1340 -430 0 0 {name=M11
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1280 -430 0 0 {name=p29 sig_type=std_logic lab=EN_N}
C {devices/lab_pin.sym} 1430 -430 2 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1450 -640 2 0 {name=p31 sig_type=std_logic lab=DIFFOUT}
C {sky130_fd_pr/pfet_01v8.sym} 370 -1130 0 0 {name=M12
L=8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 370 -1030 0 0 {name=M13
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 370 -910 0 0 {name=M14
L=1
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 370 -810 0 0 {name=M15
L=8
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 460 -810 2 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -910 2 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 430 -1030 2 0 {name=p34 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 430 -1130 2 0 {name=p35 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 390 -1190 0 0 {name=p36 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 310 -1130 0 0 {name=p37 sig_type=std_logic lab=EN_N}
C {devices/lab_wire.sym} 330 -970 3 0 {name=p38 sig_type=std_logic lab=ADJ}
C {devices/lab_pin.sym} 390 -750 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -810 0 0 {name=p40 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 450 -970 2 0 {name=p41 sig_type=std_logic lab=G1}
C {devices/lab_wire.sym} 390 -1090 3 0 {name=p42 sig_type=std_logic lab=p2p}
C {devices/lab_wire.sym} 390 -870 3 0 {name=p43 sig_type=std_logic lab=n2n}
C {devices/lab_wire.sym} 840 -640 0 0 {name=p44 sig_type=std_logic lab=inhigh}
C {devices/lab_wire.sym} 1110 -880 0 0 {name=p45 sig_type=std_logic lab=mirhigh}
C {devices/lab_wire.sym} 1120 -810 0 0 {name=p46 sig_type=std_logic lab=pg2g}
