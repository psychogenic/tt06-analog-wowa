v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 737.5 -1295 2615 -260 {flags=graph
y1=-36.5428
y2=19.3675
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.4
x2=10.4
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=1
logy=0

color="8 6 7 4"
node="\\"out;out db20()\\"
\\"out parax;out_parax db20()\\"
\\"out parax cap;out_parax_sm db20()\\"
\\"input; in db20()\\""
linewidth_mult=4
dataset=-1
hilight_wave=0}
B 2 692.5 -2922.5 1852.5 -2200 {flags=graph
y1=-28.2477
y2=26.1906
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.4
x2=10.4
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"input; in db20()\\"
\\"src; src db20()\\""
color="4 6"
dataset=-1
unitx=1
logx=1
logy=0
}
T {Driver output impedance effect} 1097.5 -3002.5 0 0 1 1 { hcenter=true}
T {AC output response} 827.5 -1442.5 0 0 2 2 {}
T {Ideal} 980 -1915 0 0 1 1 {}
T {Parasitic extraction (from layout)} 1677.5 -1897.5 0 0 0.8 0.8 {}
N 1327.5 -1740 1327.5 -1710 {
lab=VSS}
N 1327.5 -1800 1497.5 -1800 {
lab=OUT}
N 1257.5 -1800 1327.5 -1800 {
lab=OUT}
N 1452.5 -2020 1452.5 -2000 {
lab=VSS}
N 1452.5 -1940 1452.5 -1930 {
lab=VSS}
N 1452.5 -2000 1452.5 -1940 {
lab=VSS}
N 1452.5 -2100 1452.5 -2080 {
lab=SRC}
N 1452.5 -2100 1492.5 -2100 {
lab=SRC}
N 2067.5 -1735 2067.5 -1705 {
lab=VSS}
N 2067.5 -1795 2155 -1795 {
lab=OUT_PARAX}
N 1997.5 -1795 2067.5 -1795 {
lab=OUT_PARAX}
N 1302.5 -1965 1302.5 -1955 {
lab=VSS}
N 1302.5 -2025 1302.5 -1965 {
lab=VSS}
N 1302.5 -2115 1302.5 -2085 {
lab=EN}
N 1132.5 -1965 1132.5 -1955 {
lab=VSS}
N 1132.5 -2025 1132.5 -1965 {
lab=VSS}
N 1132.5 -2115 1132.5 -2085 {
lab=VCC}
N 2072.5 -1557.5 2072.5 -1527.5 {
lab=VSS}
N 2072.5 -1617.5 2145 -1617.5 {
lab=OUT_PARAX_SM}
N 2002.5 -1617.5 2072.5 -1617.5 {
lab=OUT_PARAX_SM}
N 1492.5 -2100 1510 -2100 {
lab=SRC}
N 1570 -2100 1607.5 -2100 {
lab=IN}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1327.5 -1770 0 0 {name=C1 model=cap_mim_m3_2 W=3 L=3 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 1327.5 -1710 0 0 {name=p9 lab=VSS}
C {analogswitch.sym} 1107.5 -1800 0 0 {name=x1}
C {devices/lab_pin.sym} 957.5 -1750 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 957.5 -1730 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 957.5 -1830 0 0 {name=p3 lab=EN}
C {devices/lab_pin.sym} 957.5 -1800 0 0 {name=p4 lab=IN}
C {devices/lab_pin.sym} 1497.5 -1800 2 0 {name=p5 lab=OUT}
C {devices/vsource.sym} 1452.5 -2050 0 0 {name=V1 value="dc 0.9 ac 0.708"
 savecurrent=false}
C {devices/lab_pin.sym} 1452.5 -1930 0 0 {name=p6 lab=VSS}
C {sky130_fd_pr/corner.sym} 915 -2110 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 1732.5 -2115 0 0 {name=stimuli only_toplevel=false value="
.option chgtol=4e-16 method=gear

.param VCCGAUSS = agauss(1.8, 0.05, 1)
.param VCC = 'VCCGAUSS'

** use following line to remove input common mode variations
* 
.param VDL =  0.9
.param TEMPGAUSS = agauss(30, 4, 1)
.option temp = 'TEMPGAUSS'
.option temp = 29


.param DELTA = 0.002
.param DELTA = 0.000

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_analogswitch_ac.raw
  reset
  set appendwrite
  dowhile run < = 20
    save all
    ac dec 30 100 10000MEG uic
    write tb_analogswitch_ac.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {devices/launcher.sym} 2225 -2057.5 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_analogswitch_ac.raw ac"
}
C {sky130_fd_pr/cap_mim_m3_2.sym} 2067.5 -1765 0 0 {name=C2 model=cap_mim_m3_2 W=3 L=3 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 2067.5 -1705 0 0 {name=p8 lab=VSS}
C {analogswitch.sym} 1847.5 -1795 0 0 {name=x2
schematic=analogswitch.sim
spice_sym_def="tcleval(.include [file normalize extracted/analogswitch.sim.spice])"
tclcommand="textwindow [file normalize extracted/analogswitch.sim.spice]"
}
C {devices/lab_pin.sym} 1697.5 -1745 0 0 {name=p10 lab=VCC}
C {devices/lab_pin.sym} 1697.5 -1725 0 0 {name=p11 lab=VSS}
C {devices/lab_pin.sym} 1697.5 -1825 0 0 {name=p12 lab=EN}
C {devices/lab_pin.sym} 1697.5 -1795 0 0 {name=p13 lab=IN}
C {devices/lab_pin.sym} 2155 -1795 2 0 {name=p14 lab=OUT_PARAX}
C {devices/vsource.sym} 1302.5 -2055 0 0 {name=V3 value="dc VCC"
 savecurrent=false}
C {devices/lab_pin.sym} 1302.5 -1955 0 0 {name=p17 lab=VSS}
C {devices/lab_pin.sym} 1302.5 -2115 2 0 {name=p18 lab=EN}
C {devices/vsource.sym} 1132.5 -2055 0 0 {name=V2 value="dc VCC"
 savecurrent=false}
C {devices/lab_pin.sym} 1132.5 -1955 0 0 {name=p15 lab=VSS}
C {devices/lab_pin.sym} 1132.5 -2115 2 0 {name=p16 lab=VCC}
C {sky130_fd_pr/cap_mim_m3_2.sym} 2072.5 -1587.5 0 0 {name=C3 model=cap_mim_m3_2 W=8 L=8 MF=5 spiceprefix=X}
C {devices/lab_pin.sym} 2072.5 -1527.5 0 0 {name=p19 lab=VSS}
C {analogswitch.sym} 1852.5 -1617.5 0 0 {name=x3
schematic=analogswitch.sim
spice_sym_def="tcleval(.include [file normalize extracted/analogswitch.sim.spice])"
tclcommand="textwindow [file normalize extracted/analogswitch.sim.spice]"
}
C {devices/lab_pin.sym} 1702.5 -1567.5 0 0 {name=p20 lab=VCC}
C {devices/lab_pin.sym} 1702.5 -1547.5 0 0 {name=p21 lab=VSS}
C {devices/lab_pin.sym} 1702.5 -1647.5 0 0 {name=p22 lab=EN}
C {devices/lab_pin.sym} 1702.5 -1617.5 0 0 {name=p23 lab=IN}
C {devices/lab_pin.sym} 2145 -1617.5 2 0 {name=p24 lab=OUT_PARAX_SM}
C {devices/res.sym} 1540 -2100 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1460 -2100 1 0 {name=p25 lab=SRC}
C {devices/lab_pin.sym} 1607.5 -2100 2 0 {name=p7 lab=IN}
C {devices/title.sym} 790 -110 0 0 {name=l1 author="Pat Deegan"}
