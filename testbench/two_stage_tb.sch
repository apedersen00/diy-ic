v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 560 -550 1360 -150 {flags=graph
y1=-160
y2=13
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=7
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
T {Ctrl-Click to execute launcher} 560 -140 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 560 -20 0 0 0.3 0.3 {layer=11}
N 150 -420 150 -380 {lab=vdd}
N 150 -180 150 -140 {lab=GND}
N 480 -280 480 -210 {lab=voutp}
N 480 -150 480 -130 {lab=GND}
N -480 -160 -480 -140 {lab=GND}
N -480 -280 -480 -220 {lab=vinm}
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
C {lab_wire.sym} 150 -420 0 0 {name=p1 sig_type=std_logic lab=vdd}
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
C {vsource.sym} -480 -190 0 0 {name=V3 value="DC 1.65 AC -1.0" savecurrent=false}
C {gnd.sym} -480 -140 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -480 -280 0 0 {name=p6 sig_type=std_logic lab=vinm}
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
C {code_shown.sym} -640 -680 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ 
"}
C {code_shown.sym} -640 -600 0 0 {name=NGSPICE only_toplevel=false
value="
.param temp=27
.include two_stage_tb.save
.control
op
save all   
write two_stage_tb.raw
set appendwrite #writing into the same raw file
ac dec 100 1 10e6
save all
let Av = db(v(voutp))
let phase = 180*cph(voutp)/pi
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
