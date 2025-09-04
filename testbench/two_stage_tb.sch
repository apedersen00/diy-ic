v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 560 -550 1360 -150 {flags=graph
y1=-9.8
y2=130
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=8
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="voutp db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 560 -980 1360 -580 {flags=graph
y1=36
y2=46
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-0.4
x2=7.6
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="CMRR db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 1390 -550 2190 -150 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=8
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=ph(voutp)
color=4
dataset=-1
unitx=1
logx=1
logy=0
autoload=1}
B 2 1390 -980 2190 -580 {flags=graph
y1=29
y2=46
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=8
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="CMRR db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
T {Ctrl-Click to execute launcher} 560 -140 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 560 -20 0 0 0.3 0.3 {layer=11}
N 150 -180 150 -140 {lab=GND}
N 480 -280 480 -210 {lab=voutp}
N 480 -150 480 -130 {lab=GND}
N -40 -320 70 -320 {lab=vinp}
N -360 -160 -360 -140 {lab=GND}
N -360 -280 -360 -220 {lab=vinp}
N -250 -80 -250 -60 {lab=GND}
N -250 -160 -250 -140 {lab=vinm}
N -250 -160 -210 -160 {lab=vinm}
N -250 -280 -250 -240 {lab=voutp}
N -600 -280 -600 -220 {lab=vdd}
N -600 -160 -600 -130 {lab=GND}
N -250 -180 -250 -160 {lab=vinm}
N -40 -240 70 -240 {lab=vinm}
N 410 -280 480 -280 {lab=voutp}
N 210 -180 210 -120 {lab=#net1}
N 210 -60 210 -40 {lab=GND}
N 160 70 160 110 {lab=vdd}
N 160 310 160 350 {lab=GND}
N 490 210 490 280 {lab=voutp_cmrr}
N 490 340 490 360 {lab=GND}
N -30 170 80 170 {lab=vinp}
N -30 250 80 250 {lab=vinp}
N 420 210 490 210 {lab=voutp_cmrr}
N 220 310 220 370 {lab=#net2}
N 220 430 220 450 {lab=GND}
N 160 790 160 830 {lab=GND}
N 490 690 490 760 {lab=voutp_psrr}
N 490 820 490 840 {lab=GND}
N -30 650 80 650 {lab=#net3}
N -30 730 80 730 {lab=#net3}
N 420 690 490 690 {lab=voutp_psrr}
N 220 790 220 850 {lab=#net4}
N 220 910 220 930 {lab=GND}
N -30 820 -30 850 {lab=GND}
N -30 730 -30 760 {lab=#net3}
N -30 650 -30 730 {lab=#net3}
N 20 570 20 590 {lab=GND}
N 20 480 20 510 {lab=vdd_ac}
N 20 480 160 480 {lab=vdd_ac}
N 160 480 160 590 {lab=vdd_ac}
N 10 -540 10 -480 {lab=#net5}
N 10 -420 10 -390 {lab=GND}
N 150 -540 150 -380 {lab=#net5}
N 10 -540 150 -540 {lab=#net5}
C {capa.sym} 480 -180 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 480 -130 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 480 -280 0 0 {name=p2 sig_type=std_logic lab=voutp}
C {gnd.sym} 150 -140 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -600 -280 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {vsource.sym} -600 -190 0 0 {name=V2 value="DC 3.3" savecurrent=false}
C {gnd.sym} -600 -130 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -40 -240 0 0 {name=p7 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -40 -320 0 0 {name=p8 sig_type=std_logic lab=vinp}
C {vsource.sym} -360 -190 0 0 {name=V4 value="DC 1.65 AC 1.0" savecurrent=false}
C {gnd.sym} -360 -140 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -360 -280 0 0 {name=p9 sig_type=std_logic lab=vinp}
C {ind.sym} -250 -210 0 0 {name=L9
m=1
value=4G
footprint=1206
device=inductor}
C {capa.sym} -250 -110 0 0 {name=C3
m=1
value=4G
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -250 -60 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -250 -280 0 0 {name=p10 sig_type=std_logic lab=voutp}
C {lab_wire.sym} -210 -160 0 1 {name=p13 sig_type=std_logic lab=vinm}
C {code_shown.sym} -640 -930 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ 
"}
C {code_shown.sym} -640 -850 0 0 {name=NGSPICE only_toplevel=false
value="
.param temp=27
.include two_stage_tb.save
.control
op
save all
print i(V5)
write two_stage_tb.raw
set appendwrite #writing into the same raw file
ac dec 100 1 100e6
save all

let Av = db(v(voutp))
let phase = 180/3.14*vp(voutp)
let CMRR = db((v(voutp)/v(vinp))/(v(voutp_cmrr)/v(vinp)))
let PSRR = db(v(voutp_psrr)/v(vdd_ac))

echo "---"
meas ac gm_db find vdb(voutp) when vp(voutp)=0
meas ac pm_deg find phase when vdb(voutp)=0
meas ac _3db_f when phase=-45
meas ac _0db_f when vdb(voutp)=0
meas ac dc_gain find vdb(voutp) at=1
echo "---"

write two_stage_tb.raw
.endc
"}
C {launcher.sym} 620 -40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/two_stage_tb.raw ac"
}
C {devices/launcher.sym} 620 -70 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 620 -100 0 0 {name=h6
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {two_stage.sym} 170 -260 0 0 {name=x1}
C {gnd.sym} 210 -40 0 0 {name=l1 lab=GND}
C {isource.sym} 210 -90 0 0 {name=I0 value=10u}
C {lab_wire.sym} 160 70 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {capa.sym} 490 310 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 490 360 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 490 210 0 0 {name=p5 sig_type=std_logic lab=voutp_cmrr}
C {gnd.sym} 160 350 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -30 170 0 0 {name=p11 sig_type=std_logic lab=vinp}
C {two_stage.sym} 180 230 0 0 {name=x2}
C {gnd.sym} 220 450 0 0 {name=l7 lab=GND}
C {isource.sym} 220 400 0 0 {name=I1 value=10u}
C {lab_wire.sym} -30 250 0 0 {name=p6 sig_type=std_logic lab=vinp}
C {capa.sym} 490 790 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 490 840 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 490 690 0 0 {name=p14 sig_type=std_logic lab=voutp_psrr}
C {gnd.sym} 160 830 0 0 {name=l12 lab=GND}
C {two_stage.sym} 180 710 0 0 {name=x3}
C {gnd.sym} 220 930 0 0 {name=l13 lab=GND}
C {isource.sym} 220 880 0 0 {name=I2 value=10u}
C {vsource.sym} -30 790 0 0 {name=V1 value="DC 1.65" savecurrent=false}
C {gnd.sym} -30 850 0 0 {name=l14 lab=GND}
C {vsource.sym} 20 540 0 0 {name=V3 value="DC 3.30 AC 1.0" savecurrent=false}
C {gnd.sym} 20 590 0 0 {name=l15 lab=GND}
C {lab_wire.sym} 20 480 0 0 {name=p12 sig_type=std_logic lab=vdd_ac}
C {vsource.sym} 10 -450 0 0 {name=V5 value="DC 3.3" savecurrent=false}
C {gnd.sym} 10 -390 0 0 {name=l16 lab=GND}
