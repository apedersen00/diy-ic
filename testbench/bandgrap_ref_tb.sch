v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 560 -550 1360 -150 {flags=graph
y1=0.025
y2=0.036
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-50
x2=100
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vbgr}
B 2 560 -980 1360 -580 {flags=graph
y1=3.2
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=2
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdd}
T {Ctrl-Click to execute launcher} 560 -140 0 0 0.3 0.3 {layer=11}
N 150 -180 150 -140 {lab=GND}
N -40 -320 70 -320 {lab=vinp}
N -220 -350 -220 -290 {lab=vdd}
N -220 -230 -220 -200 {lab=GND}
N -40 -240 70 -240 {lab=vinm}
N 410 -280 480 -280 {lab=voutp}
N 210 -180 210 -120 {lab=#net1}
N 210 -60 210 -40 {lab=GND}
N 150 -440 150 -380 {lab=vdd}
N 140 80 140 140 {lab=vdd}
N 140 280 140 320 {lab=GND}
N -40 210 -10 210 {lab=vinp}
N -40 190 -10 190 {lab=voutp}
N -420 150 -420 160 {lab=GND}
N -420 20 -420 70 {lab=#net2}
N -420 20 -360 20 {lab=#net2}
N -420 -0 -420 20 {lab=#net2}
N -360 -30 -360 20 {lab=#net2}
N -380 -30 -360 -30 {lab=#net2}
N -360 -30 -300 -30 {lab=#net2}
N -420 -80 -420 -60 {lab=vdd}
N -420 -100 -260 -100 {lab=vdd}
N -260 -80 -260 -60 {lab=vdd}
N -260 50 -260 80 {lab=#net3}
N -340 160 -260 160 {lab=GND}
N -260 140 -260 160 {lab=GND}
N -340 160 -340 180 {lab=GND}
N -420 160 -340 160 {lab=GND}
N -260 50 -180 50 {lab=#net3}
N -260 0 -260 50 {lab=#net3}
N -260 -100 -140 -100 {lab=vdd}
N -140 -0 -140 20 {lab=vdd}
N -140 50 -120 50 {lab=vdd}
N -120 0 -120 50 {lab=vdd}
N -140 -0 -120 -0 {lab=vdd}
N -140 -100 -140 -0 {lab=vdd}
N -260 -30 -240 -30 {lab=vdd}
N -240 -80 -240 -30 {lab=vdd}
N -260 -80 -240 -80 {lab=vdd}
N -260 -100 -260 -80 {lab=vdd}
N -440 -30 -420 -30 {lab=vdd}
N -440 -80 -440 -30 {lab=vdd}
N -440 -80 -420 -80 {lab=vdd}
N -420 -100 -420 -80 {lab=vdd}
N -440 100 -420 100 {lab=GND}
N -440 100 -440 150 {lab=GND}
N -440 150 -420 150 {lab=GND}
N -420 130 -420 150 {lab=GND}
N -140 80 -140 230 {lab=vinm}
N -140 230 -10 230 {lab=vinm}
N 290 210 360 210 {lab=vbgr}
N 480 -280 480 -250 {lab=voutp}
N 480 -190 480 -160 {lab=GND}
N 360 210 360 240 {lab=vbgr}
N 360 300 360 330 {lab=GND}
N -370 70 -370 100 {lab=vinm}
N -380 100 -370 100 {lab=vinm}
N 360 40 360 70 {lab=GND}
N 360 -40 360 -20 {lab=vinp}
C {lab_wire.sym} 480 -280 0 0 {name=p2 sig_type=std_logic lab=voutp}
C {gnd.sym} 150 -140 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -220 -350 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {vsource.sym} -220 -260 0 0 {name=V2 value="DC 3.3" savecurrent=false}
C {gnd.sym} -220 -200 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -40 -240 0 0 {name=p7 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -40 -320 0 0 {name=p8 sig_type=std_logic lab=vinp}
C {code_shown.sym} -1110 -1020 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {code_shown.sym} -1110 -870 0 0 {name=NGSPICE only_toplevel=false
value="
.param temp=27
.control
.include bandgrap_ref_tb.save
.save all
alter V2 dc 3.3
op
dc TEMP -50 100 5
write bgr_temp.raw
.endc

.control
.save all
tran 1m 2
write bgr_tran.raw
.endc
"}
C {launcher.sym} 620 -40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/bgr_temp.raw"
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
C {bandgap_ref.sym} 140 210 0 0 {name=x2}
C {lab_wire.sym} 150 -440 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 140 80 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 140 320 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -40 210 0 0 {name=p6 sig_type=std_logic lab=vinp}
C {lab_wire.sym} -40 190 0 0 {name=p11 sig_type=std_logic lab=voutp}
C {sg13g2_pr/sg13_hv_nmos.sym} -400 100 0 1 {name=M1
l=10.0u
w=150n
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -400 -30 0 1 {name=M2
l=1.0u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -280 -30 0 0 {name=M3
l=1.0u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} -260 110 0 0 {name=C1
model=cap_cmim
w=18.0e-6
l=18.0e-6
m=1
spiceprefix=X}
C {gnd.sym} -340 180 0 0 {name=l3 lab=GND}
C {sg13g2_pr/sg13_hv_pmos.sym} -160 50 0 0 {name=M4
l=4.0u
w=200n
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_wire.sym} -150 -100 0 0 {name=p15 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 360 210 0 0 {name=p9 sig_type=std_logic lab=vbgr}
C {launcher.sym} 620 0 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/bgr_tran.raw"
}
C {capa.sym} 480 -220 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 480 -160 0 0 {name=l4 lab=GND}
C {capa.sym} 360 270 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 330 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -40 230 0 0 {name=p10 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -370 70 0 1 {name=p12 sig_type=std_logic lab=vinm}
C {capa.sym} 360 10 0 0 {name=C4
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 70 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 360 -40 0 0 {name=p13 sig_type=std_logic lab=vinp}
