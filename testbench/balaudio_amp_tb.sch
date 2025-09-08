v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 560 -550 1360 -150 {flags=graph
y1=-17
y2=-12
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=1
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
y1=38
y2=48
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
node=ph(voutm)
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
N -10 -240 -10 -200 {lab=GND}
N 270 -320 270 -250 {lab=voutp}
N 270 -190 270 -170 {lab=GND}
N -200 -280 -90 -280 {lab=vinp}
N -800 -240 -800 -180 {lab=vdd}
N -800 -120 -800 -90 {lab=GND}
N -200 -320 -90 -320 {lab=vinm}
N 210 -280 210 -210 {lab=voutm}
N 210 -150 210 -130 {lab=GND}
N 90 -320 270 -320 {lab=voutp}
N 90 -280 210 -280 {lab=voutm}
N -10 -400 -10 -360 {lab=vdd}
N -590 -240 -590 -220 {lab=#net1}
N -680 -240 -590 -240 {lab=#net1}
N -590 -260 -590 -240 {lab=#net1}
N -680 -240 -680 -180 {lab=#net1}
N -680 -120 -680 -90 {lab=GND}
N -590 -380 -590 -320 {lab=vinm}
N -590 -160 -590 -100 {lab=vinp}
N -340 -80 -340 -40 {lab=voutp}
N -340 20 -340 70 {lab=vinm}
N -340 70 -280 70 {lab=vinm}
N -200 -80 -200 -40 {lab=voutm}
N -200 20 -200 70 {lab=vinp}
N -200 70 -140 70 {lab=vinp}
N -340 70 -340 120 {lab=vinm}
N -340 180 -340 220 {lab=GND}
N -200 180 -200 220 {lab=GND}
N -200 70 -200 120 {lab=vinp}
C {capa.sym} 270 -220 0 0 {name=C2
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 270 -170 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 270 -320 0 0 {name=p2 sig_type=std_logic lab=voutp}
C {gnd.sym} -10 -200 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -800 -240 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {vsource.sym} -800 -150 0 0 {name=V2 value="DC 3.3" savecurrent=false}
C {gnd.sym} -800 -90 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -200 -320 0 0 {name=p7 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -200 -280 0 0 {name=p8 sig_type=std_logic lab=vinp}
C {code_shown.sym} -1080 -1150 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ 
"}
C {code_shown.sym} -1080 -1050 0 0 {name=NGSPICE only_toplevel=false
value="
.param temp=27
.include balaudio_amp_tb.save
.control

* --- OP ---
op
save all
write balaudio_amp_tb.raw
set appendwrite

* --- DC Sweep ---
tran 10u 10m
save all

* --- AC Sweep ---
ac dec 100 10 100e6
save all

let Av = db(v(voutp))
let Phase = 180/3.14*vp(voutp) - 180
let CMRR = db((v(voutp)/v(vinp))/(v(voutp_cmrr)/v(vinp)))
let PSRR = db(v(voutp_psrr)/v(vdd_ac))

echo "---"
meas ac gm_db find vdb(voutp) when vp(voutp)=0
meas ac pm_deg find Phase when vdb(voutp)=0
meas ac _3db_f when Phase=-45
meas ac _0db_f when vdb(voutp)=0
meas ac dc_gain find vdb(voutp) at=10
echo "---"

write balaudio_amp_tb.raw
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
C {gnd.sym} 210 -130 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 210 -280 0 0 {name=p1 sig_type=std_logic lab=voutm}
C {lab_wire.sym} -10 -400 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {vsource.sym} -590 -190 0 0 {name=V1 value="DC 0 AC 0.5" savecurrent=false}
C {vsource.sym} -590 -290 0 0 {name=V3 value="DC 0 AC 0.5" savecurrent=false}
C {vsource.sym} -680 -150 0 0 {name=V4 value="DC 1.65" savecurrent=false}
C {gnd.sym} -680 -90 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -590 -100 0 0 {name=p9 sig_type=std_logic lab=vinp}
C {lab_wire.sym} -590 -380 0 0 {name=p11 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -340 -80 0 0 {name=p5 sig_type=std_logic lab=voutp}
C {ind.sym} -340 -10 0 0 {name=L2
m=1
value=4G
footprint=1206
device=inductor}
C {lab_wire.sym} -280 70 0 1 {name=p6 sig_type=std_logic lab=vinm}
C {gnd.sym} -340 220 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -200 -80 0 0 {name=p10 sig_type=std_logic lab=voutm}
C {ind.sym} -200 -10 0 0 {name=L7
m=1
value=4G
footprint=1206
device=inductor}
C {lab_wire.sym} -140 70 0 1 {name=p12 sig_type=std_logic lab=vinp}
C {gnd.sym} -200 220 0 0 {name=l9 lab=GND}
C {balaudio_amp.sym} -10 -300 0 0 {name=x1}
C {capa.sym} 210 -180 0 0 {name=C3
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -200 150 0 0 {name=C4
m=1
value=4G
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -340 150 0 0 {name=C5
m=1
value=4G
footprint=1206
device="ceramic capacitor"}
