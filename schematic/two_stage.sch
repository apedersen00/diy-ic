v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -60 40 -30 {lab=#net1}
N 140 -0 240 -0 {lab=vdd}
N 40 0 140 -0 {lab=vdd}
N 140 -10 140 -0 {lab=vdd}
N 140 -60 240 -60 {lab=#net1}
N 240 -60 240 -30 {lab=#net1}
N 140 -80 140 -60 {lab=#net1}
N -100 -150 -100 -140 {lab=vdd}
N 140 -150 140 -140 {lab=vdd}
N -100 -180 140 -180 {lab=vdd}
N 140 -110 150 -110 {lab=vdd}
N 150 -150 150 -110 {lab=vdd}
N 140 -150 150 -150 {lab=vdd}
N -110 -110 -100 -110 {lab=vdd}
N -110 -150 -110 -110 {lab=vdd}
N -110 -150 -100 -150 {lab=vdd}
N -100 -80 -100 -60 {lab=iout}
N -40 -110 -40 -60 {lab=iout}
N -100 -60 -40 -60 {lab=iout}
N -100 -60 -100 -20 {lab=iout}
N 40 30 40 50 {lab=#net2}
N 240 30 240 50 {lab=#net3}
N 40 140 40 160 {lab=mirror}
N 240 140 240 160 {lab=#net4}
N 140 80 200 80 {lab=vb_p}
N 140 60 140 80 {lab=vb_p}
N -20 80 40 80 {lab=vdd}
N 240 80 300 80 {lab=vdd}
N -20 190 40 190 {lab=vss}
N 240 190 300 190 {lab=vss}
N 140 290 200 290 {lab=mirror}
N -20 290 40 290 {lab=vss}
N 240 290 300 290 {lab=vss}
N 40 320 40 360 {lab=vss}
N 240 320 240 360 {lab=vss}
N 40 360 240 360 {lab=vss}
N 40 220 40 260 {lab=#net5}
N 240 220 240 260 {lab=#net6}
N -80 140 40 140 {lab=mirror}
N 140 270 140 290 {lab=mirror}
N 360 140 480 140 {lab=#net4}
N 520 200 520 360 {lab=vss}
N 240 140 360 140 {lab=#net4}
N 240 360 520 360 {lab=vss}
N 450 40 520 40 {lab=out}
N 520 40 520 110 {lab=out}
N 360 40 390 40 {lab=#net4}
N 360 40 360 140 {lab=#net4}
N 160 -180 520 -180 {lab=vdd}
N 520 -160 520 -140 {lab=vdd}
N 520 20 520 40 {lab=out}
N -60 -110 -40 -110 {lab=iout}
N 80 -110 100 -110 {lab=iout}
N 460 -110 480 -110 {lab=iout}
N 520 20 560 20 {lab=out}
N -10 -0 -0 0 {lab=v-}
N 280 0 300 -0 {lab=v+}
N 160 -220 160 -180 {lab=vdd}
N 40 360 40 380 {lab=vss}
N 140 190 200 190 {lab=vb_n}
N 140 170 140 190 {lab=vb_n}
N -300 280 -300 320 {lab=vss}
N -300 180 -300 220 {lab=vb_p}
N -220 280 -220 320 {lab=vss}
N -220 180 -220 220 {lab=vb_n}
N 40 -60 140 -60 {lab=#net1}
N 140 -180 140 -150 {lab=vdd}
N -100 -180 -100 -150 {lab=vdd}
N 80 80 140 80 {lab=vb_p}
N 40 110 40 140 {lab=mirror}
N 80 290 140 290 {lab=mirror}
N 240 110 240 140 {lab=#net4}
N 520 -80 520 20 {lab=out}
N 140 -180 160 -180 {lab=vdd}
N 80 190 140 190 {lab=vb_n}
N 520 140 540 140 {lab=vss}
N 540 140 540 200 {lab=vss}
N 520 200 540 200 {lab=vss}
N 520 170 520 200 {lab=vss}
N 520 -110 540 -110 {lab=vdd}
N 540 -160 540 -110 {lab=vdd}
N 520 -160 540 -160 {lab=vdd}
N 520 -180 520 -160 {lab=vdd}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 0 0 0 {name=M1
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 260 0 0 1 {name=M2
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 60 190 0 1 {name=M5
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 140 -10 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_hv_pmos.sym} 120 -110 0 0 {name=M11
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -80 -110 0 1 {name=M12
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 60 80 0 1 {name=M3
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 220 80 0 0 {name=M4
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_wire.sym} 140 60 0 0 {name=p2 sig_type=std_logic lab=vb_p}
C {lab_wire.sym} -20 80 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 300 80 0 1 {name=p5 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_hv_nmos.sym} 220 190 0 0 {name=M6
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 140 170 0 0 {name=p8 sig_type=std_logic lab=vb_n}
C {lab_wire.sym} -20 190 0 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 300 190 0 1 {name=p10 sig_type=std_logic lab=vss}
C {sg13g2_pr/sg13_hv_nmos.sym} 60 290 0 1 {name=M7
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 220 290 0 0 {name=M8
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -20 290 0 0 {name=p12 sig_type=std_logic lab=vss}
C {lab_wire.sym} 300 290 0 1 {name=p13 sig_type=std_logic lab=vss}
C {lab_wire.sym} -80 140 0 0 {name=p11 sig_type=std_logic lab=mirror}
C {lab_wire.sym} 140 270 0 0 {name=p14 sig_type=std_logic lab=mirror}
C {sg13g2_pr/sg13_hv_nmos.sym} 500 140 0 0 {name=M9
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 420 40 3 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {sg13g2_pr/sg13_hv_pmos.sym} 500 -110 0 0 {name=M10
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_wire.sym} 460 -110 0 0 {name=p17 sig_type=std_logic lab=iout}
C {opin.sym} 560 20 0 0 {name=p18 lab=out}
C {ipin.sym} -100 -20 3 0 {name=p19 lab=iout}
C {lab_wire.sym} 80 -110 0 0 {name=p20 sig_type=std_logic lab=iout}
C {ipin.sym} -10 0 0 0 {name=p21 lab=v-}
C {ipin.sym} 300 0 0 1 {name=p22 lab=v+}
C {ipin.sym} 160 -220 1 0 {name=p23 lab=vdd}
C {ipin.sym} 40 380 3 0 {name=p24 lab=vss}
C {vsource.sym} -300 250 0 0 {name=V1 value=1.5 savecurrent=false}
C {lab_wire.sym} -300 180 3 1 {name=p3 sig_type=std_logic lab=vb_p}
C {lab_wire.sym} -300 320 3 0 {name=p6 sig_type=std_logic lab=vss}
C {vsource.sym} -220 250 0 0 {name=V2 value=1.5 savecurrent=false}
C {lab_wire.sym} -220 180 3 1 {name=p7 sig_type=std_logic lab=vb_n}
C {lab_wire.sym} -220 320 3 0 {name=p25 sig_type=std_logic lab=vss}
C {sg13g2_pr/annotate_fet_params.sym} -740 -250 0 0 {name=annot5 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} -620 -250 0 0 {name=annot6 ref=M6}
C {sg13g2_pr/annotate_fet_params.sym} -500 -250 0 0 {name=annot7 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} -380 -250 0 0 {name=annot8 ref=M8}
C {sg13g2_pr/annotate_fet_params.sym} -740 -410 0 0 {name=annot13 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} -620 -410 0 0 {name=annot14 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} -500 -410 0 0 {name=annot15 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} -380 -410 0 0 {name=annot16 ref=M4}
C {sg13g2_pr/annotate_fet_params.sym} -740 -90 0 0 {name=annot17 ref=M9}
C {sg13g2_pr/annotate_fet_params.sym} -620 -90 0 0 {name=annot18 ref=M10}
C {sg13g2_pr/annotate_fet_params.sym} -500 -90 0 0 {name=annot19 ref=M11}
C {sg13g2_pr/annotate_fet_params.sym} -380 -90 0 0 {name=annot20 ref=M12}
