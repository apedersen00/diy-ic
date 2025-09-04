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
N -140 -230 -140 -190 {lab=GND}
N 270 -320 270 -250 {lab=voutp}
N 270 -190 270 -170 {lab=GND}
N -300 -270 -190 -270 {lab=vinp}
N -690 190 -690 210 {lab=GND}
N -690 70 -690 130 {lab=vinp}
N -690 -30 -690 -10 {lab=GND}
N -690 -110 -690 -90 {lab=vinp}
N -690 -110 -650 -110 {lab=vinp}
N -690 -230 -690 -190 {lab=voutp}
N -830 -200 -830 -140 {lab=vdd}
N -830 -80 -830 -50 {lab=GND}
N -690 -130 -690 -110 {lab=vinp}
N -300 -320 -190 -320 {lab=vinm}
N 210 -280 210 -210 {lab=voutm}
N 210 -150 210 -130 {lab=GND}
N 90 -320 270 -320 {lab=voutp}
N 90 -280 210 -280 {lab=voutm}
N -140 -410 -140 -370 {lab=vdd}
N -550 -30 -550 -10 {lab=GND}
N -550 -110 -550 -90 {lab=vinm}
N -550 -110 -510 -110 {lab=vinm}
N -550 -230 -550 -190 {lab=voutm}
N -550 -130 -550 -110 {lab=vinm}
N -550 190 -550 210 {lab=GND}
N -550 70 -550 130 {lab=vinm}
C {capa.sym} 270 -220 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 270 -170 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 270 -320 0 0 {name=p2 sig_type=std_logic lab=voutp}
C {gnd.sym} -140 -190 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -830 -200 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {vsource.sym} -830 -110 0 0 {name=V2 value="DC 3.3" savecurrent=false}
C {gnd.sym} -830 -50 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -300 -320 0 0 {name=p7 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -300 -270 0 0 {name=p8 sig_type=std_logic lab=vinp}
C {vsource.sym} -690 160 0 0 {name=V4 value="DC 1.65 AC 1.0" savecurrent=false}
C {gnd.sym} -690 210 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -690 70 0 0 {name=p9 sig_type=std_logic lab=vinp}
C {ind.sym} -690 -160 0 0 {name=L9
m=1
value=4G
footprint=1206
device=inductor}
C {capa.sym} -690 -60 0 0 {name=C3
m=1
value=4G
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -690 -10 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -690 -230 0 0 {name=p10 sig_type=std_logic lab=voutp}
C {lab_wire.sym} -650 -110 0 1 {name=p13 sig_type=std_logic lab=vinp}
C {code_shown.sym} -1080 -880 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ 
"}
C {code_shown.sym} -1080 -810 0 0 {name=NGSPICE only_toplevel=false
value="
.param temp=27
.include aux_amp_tb.save
.control
op
save all
write aux_amp_tb.raw
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

write aux_amp_tb.raw
.endc
"}
C {launcher.sym} 620 -40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/aux_amp_tb.raw ac"
}
C {devices/launcher.sym} 620 -70 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 630 -100 0 0 {name=h6
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
C {aux_amp.sym} -50 -180 0 0 {name=x2}
C {capa.sym} 210 -180 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 210 -130 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 210 -280 0 0 {name=p1 sig_type=std_logic lab=voutm}
C {lab_wire.sym} -140 -410 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {ind.sym} -550 -160 0 0 {name=L2
m=1
value=4G
footprint=1206
device=inductor}
C {capa.sym} -550 -60 0 0 {name=C4
m=1
value=4G
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -550 -10 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -550 -230 0 0 {name=p5 sig_type=std_logic lab=voutm}
C {lab_wire.sym} -510 -110 0 1 {name=p6 sig_type=std_logic lab=vinm}
C {vsource.sym} -550 160 0 0 {name=V1 value="DC 1.65 AC -1.0" savecurrent=false}
C {gnd.sym} -550 210 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -550 70 0 0 {name=p11 sig_type=std_logic lab=vinm}
