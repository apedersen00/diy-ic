v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -180 -0 -140 {lab=vdd}
N -0 0 0 40 {lab=GND}
N 230 -50 260 -50 {lab=voutm}
N 260 -50 260 -20 {lab=voutm}
N 230 -90 380 -90 {lab=voutp}
N 380 -90 380 -20 {lab=voutp}
N 260 40 260 60 {lab=GND}
N 380 40 380 60 {lab=GND}
N -520 -140 -520 -120 {lab=GND}
N -520 -260 -520 -200 {lab=vinm}
N -160 -40 -50 -40 {lab=vinp}
N -160 -90 -50 -90 {lab=vinm}
N -400 -140 -400 -120 {lab=GND}
N -400 -260 -400 -200 {lab=vinp}
N -480 200 -480 220 {lab=GND}
N -480 100 -480 140 {lab=vinp}
N -480 120 -440 120 {lab=vinp}
N -480 0 -480 40 {lab=voutp}
N -380 200 -380 220 {lab=GND}
N -380 100 -380 140 {lab=vinm}
N -380 120 -340 120 {lab=vinm}
N -380 0 -380 40 {lab=voutm}
N -640 -260 -640 -200 {lab=vdd}
N -640 -140 -640 -110 {lab=GND}
C {/home/andreasp/diy-ic/schematic/aux_amp.sym} 90 50 0 0 {name=x1}
C {lab_wire.sym} 0 -180 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {capa.sym} 260 10 0 0 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 380 10 0 0 {name=C2
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 260 60 0 0 {name=l2 lab=GND}
C {gnd.sym} 380 60 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 380 -90 0 0 {name=p2 sig_type=std_logic lab=voutp}
C {lab_wire.sym} 260 -50 0 0 {name=p3 sig_type=std_logic lab=voutm}
C {gnd.sym} 0 40 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -640 -260 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {vsource.sym} -640 -170 0 0 {name=V2 value="DC 3.3" savecurrent=false}
C {gnd.sym} -640 -110 0 0 {name=l6 lab=GND}
C {vsource.sym} -520 -170 0 0 {name=V3 value="DC 1.65 AC 1.0" savecurrent=false}
C {gnd.sym} -520 -120 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -520 -260 0 0 {name=p6 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -160 -90 0 0 {name=p7 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -160 -40 0 0 {name=p8 sig_type=std_logic lab=vinp}
C {vsource.sym} -400 -170 0 0 {name=V4 value="DC 1.65 AC 1.0" savecurrent=false}
C {gnd.sym} -400 -120 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -400 -260 0 0 {name=p9 sig_type=std_logic lab=vinp}
C {ind.sym} -480 70 0 0 {name=L9
m=1
value=4G
footprint=1206
device=inductor}
C {capa.sym} -480 170 0 0 {name=C3
m=1
value=4G
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -480 220 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -480 0 0 0 {name=p10 sig_type=std_logic lab=voutp}
C {ind.sym} -380 70 0 0 {name=L11
m=1
value=4G
footprint=1206
device=inductor}
C {capa.sym} -380 170 0 0 {name=C4
m=1
value=4G
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -380 220 0 0 {name=l12 lab=GND}
C {lab_wire.sym} -380 0 0 0 {name=p11 sig_type=std_logic lab=voutm}
C {lab_wire.sym} -340 120 0 1 {name=p12 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -440 120 0 1 {name=p13 sig_type=std_logic lab=vinp}
C {code_shown.sym} -1070 -320 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {code_shown.sym} -1070 -220 0 0 {name=NGSPICE only_toplevel=false
value="
.control
op
save all
write tb_aux_amp.raw
.endc

.control
op
ac dec 100 1 10e6
save all
let vout = abs(v(voutp) - v(voutm))
let Av = db(v(voutp))
let phase = 180*cph(vout)/pi
write output_file.raw
.endc
"}
