v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 240 120 260 {lab=#net1}
N 120 220 120 240 {lab=#net1}
N 60 240 120 240 {lab=#net1}
N 60 240 60 290 {lab=#net1}
N 60 290 80 290 {lab=#net1}
N 120 30 120 160 {lab=v+}
N -120 320 -120 360 {lab=vss}
N -120 360 120 360 {lab=vss}
N 120 320 120 360 {lab=vss}
N -120 30 -120 260 {lab=v-}
N -120 140 -80 140 {lab=v-}
N 40 140 120 140 {lab=v+}
N -80 290 20 290 {lab=v+}
N 20 140 20 290 {lab=v+}
N 20 140 40 140 {lab=v+}
N -80 -0 80 -0 {lab=vo}
N 0 0 -0 40 {lab=vo}
N -120 -80 -120 -30 {lab=vdd}
N -120 -80 120 -80 {lab=vdd}
N 120 -80 120 -30 {lab=vdd}
N -0 -120 0 -80 {lab=vdd}
N 0 360 -0 400 {lab=vss}
N 120 120 300 120 {lab=v+}
N 300 120 300 150 {lab=v+}
N 300 150 300 160 {lab=v+}
N 120 360 300 360 {lab=vss}
N 300 220 300 360 {lab=vss}
N 360 -80 360 -30 {lab=vdd}
N 280 0 320 -0 {lab=vo1}
N 120 -80 360 -80 {lab=vdd}
N 480 120 480 160 {lab=xxx}
N 480 220 480 360 {lab=vss}
N 300 360 480 360 {lab=vss}
N 360 30 360 120 {lab=xxx}
N 360 120 480 120 {lab=xxx}
N 480 120 660 120 {lab=xxx}
N 660 120 660 160 {lab=xxx}
N 660 220 660 360 {lab=vss}
N 480 360 660 360 {lab=vss}
N 660 120 720 120 {lab=xxx}
C {sg13g2_pr/sg13_hv_nmos.sym} 100 290 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -100 290 0 1 {name=M2
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -100 0 0 1 {name=M3
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 100 0 0 0 {name=M4
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/rppd.sym} 120 190 0 0 {name=R1
w=0.5e-6
l=0.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rppd.sym} 300 190 0 0 {name=R2
w=0.5e-6
l=0.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_hv_pmos.sym} 340 0 0 0 {name=M5
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 280 0 0 0 {name=p5 sig_type=std_logic lab=vo1}
C {sg13g2_pr/rppd.sym} 300 190 0 0 {name=R3
w=0.5e-6
l=0.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rppd.sym} 480 190 0 0 {name=R4
w=0.5e-6
l=0.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/cap_cmim.sym} 660 190 0 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {ipin.sym} 0 -120 0 0 {name=p6 lab=vdd}
C {ipin.sym} 0 400 0 0 {name=p7 lab=vss}
C {ipin.sym} 20 140 0 0 {name=p8 lab=v+}
C {ipin.sym} -80 140 0 1 {name=p1 lab=v-}
C {ipin.sym} 0 40 0 1 {name=p2 lab=vo}
C {lab_pin.sym} 30 0 3 1 {name=p3 sig_type=std_logic lab=vo1}
C {opin.sym} 720 120 0 0 {name=p4 lab=vbgr}
