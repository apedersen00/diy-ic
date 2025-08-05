v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 330 150 {}
N 40 40 40 60 {lab=#net1}
N 240 40 240 60 {lab=#net1}
N 220 0 240 0 {lab=#net1}
N 220 0 220 40 {lab=#net1}
N 220 40 240 40 {lab=#net1}
N 40 0 60 0 {lab=#net1}
N 60 -0 60 40 {lab=#net1}
N 40 40 60 40 {lab=#net1}
N 140 60 140 120 {lab=#net1}
N 40 60 140 60 {lab=#net1}
N 140 60 240 60 {lab=#net1}
N 140 130 160 130 {lab=VSS}
N 160 130 160 170 {lab=VSS}
N 140 170 160 170 {lab=VSS}
N 140 160 140 170 {lab=VSS}
N 140 170 140 320 {lab=VSS}
N -40 130 100 130 {lab=tail_bias}
N -40 -0 0 0 {lab=vip}
N 280 0 300 -0 {lab=vin}
N 300 -0 300 80 {lab=vin}
N -40 80 300 80 {lab=vin}
N 420 -110 420 -100 {lab=#net2}
N 620 -110 620 -100 {lab=#net3}
N 420 -230 420 -220 {lab=VDD}
N 520 -260 620 -260 {lab=VDD}
N 620 -230 620 -220 {lab=VDD}
N 520 -300 520 -260 {lab=VDD}
N 420 -40 420 40 {lab=von}
N 620 -40 620 40 {lab=vop}
N 420 110 420 160 {lab=#net4}
N 620 110 620 160 {lab=#net5}
N 400 -190 420 -190 {lab=VDD}
N 400 -230 400 -190 {lab=VDD}
N 400 -230 420 -230 {lab=VDD}
N 620 -190 640 -190 {lab=VDD}
N 640 -230 640 -190 {lab=VDD}
N 620 -230 640 -230 {lab=VDD}
N 520 -190 580 -190 {lab=pbias_upper}
N 620 -70 640 -70 {lab=#net3}
N 640 -110 640 -70 {lab=#net3}
N 620 -110 640 -110 {lab=#net3}
N 400 -70 420 -70 {lab=#net2}
N 400 -110 400 -70 {lab=#net2}
N 400 -110 420 -110 {lab=#net2}
N 520 -70 580 -70 {lab=pbias_lower}
N 520 -100 520 -70 {lab=pbias_lower}
N 520 -220 520 -190 {lab=pbias_upper}
N 520 70 580 70 {lab=nbias_upper}
N 520 190 580 190 {lab=nbias_lower}
N 620 70 640 70 {lab=#net5}
N 640 70 640 110 {lab=#net5}
N 620 110 640 110 {lab=#net5}
N 400 70 420 70 {lab=#net4}
N 400 70 400 110 {lab=#net4}
N 400 110 420 110 {lab=#net4}
N 400 190 420 190 {lab=VSS}
N 400 190 400 230 {lab=VSS}
N 400 230 420 230 {lab=VSS}
N 420 220 420 230 {lab=VSS}
N 620 190 640 190 {lab=VSS}
N 640 190 640 230 {lab=VSS}
N 620 230 640 230 {lab=VSS}
N 620 220 620 230 {lab=VSS}
N 420 230 420 260 {lab=VSS}
N 520 260 620 260 {lab=VSS}
N 620 230 620 260 {lab=VSS}
N 520 260 520 320 {lab=VSS}
N 520 40 520 70 {lab=nbias_upper}
N 520 160 520 190 {lab=nbias_lower}
N 240 -120 240 -30 {lab=#net3}
N 240 -120 620 -120 {lab=#net3}
N 40 -140 40 -30 {lab=#net2}
N 40 -140 420 -140 {lab=#net2}
N -530 300 -530 320 {lab=VSS}
N -530 200 -530 240 {lab=tail_bias}
N -430 300 -430 320 {lab=VSS}
N -430 200 -430 240 {lab=pbias_upper}
N -330 300 -330 320 {lab=VSS}
N -330 200 -330 240 {lab=pbias_lower}
N -230 300 -230 320 {lab=VSS}
N -230 200 -230 240 {lab=nbias_upper}
N -130 300 -130 320 {lab=VSS}
N -130 200 -130 240 {lab=nbias_lower}
N -530 320 -430 320 {lab=VSS}
N -430 320 -330 320 {lab=VSS}
N -330 320 -230 320 {lab=VSS}
N -230 320 -130 320 {lab=VSS}
N -130 320 140 320 {lab=VSS}
N 140 320 520 320 {lab=VSS}
N 520 320 520 340 {lab=VSS}
N 240 30 240 40 {lab=#net1}
N 40 30 40 40 {lab=#net1}
N 420 -260 520 -260 {lab=VDD}
N 420 -260 420 -230 {lab=VDD}
N 620 -260 620 -230 {lab=VDD}
N 620 -120 620 -110 {lab=#net3}
N 420 -140 420 -110 {lab=#net2}
N 460 -70 520 -70 {lab=pbias_lower}
N 460 -190 520 -190 {lab=pbias_upper}
N 620 100 620 110 {lab=#net5}
N 420 100 420 110 {lab=#net4}
N 420 260 520 260 {lab=VSS}
N 460 70 520 70 {lab=nbias_upper}
N 460 190 520 190 {lab=nbias_lower}
N 620 -160 620 -120 {lab=#net3}
N 420 -160 420 -140 {lab=#net2}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 0 0 0 {name=M1
l=1u
w=44u
ng=10
m=11
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 440 -190 0 1 {name=M4
l=2u
w=57u
ng=10
m=10
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 260 0 0 1 {name=M2
l=1u
w=44u
ng=10
m=11
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 120 130 0 0 {name=M3
l=1u
w=10.5u
ng=10
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 600 -190 0 0 {name=M5
l=2u
w=57u
ng=10
m=10
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 440 -70 0 1 {name=M6
l=1u
w=15u
ng=5
m=10
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 600 -70 0 0 {name=M7
l=1u
w=15u
ng=5
m=10
model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} 520 -300 0 0 {name=p2 lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 600 70 0 0 {name=M9
l=5u
w=38u
ng=5
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 440 70 0 1 {name=M8
l=5u
w=38u
ng=5
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 600 190 0 0 {name=M11
l=5u
w=38u
ng=5
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 440 190 0 1 {name=M10
l=5u
w=38u
ng=5
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} -40 0 0 0 {name=p4 lab=vip}
C {ipin.sym} -40 80 0 0 {name=p5 lab=vin}
C {lab_wire.sym} -40 130 0 0 {name=p6 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} 520 -220 0 0 {name=p7 sig_type=std_logic lab=pbias_upper}
C {lab_wire.sym} 520 -100 0 0 {name=p8 sig_type=std_logic lab=pbias_lower}
C {lab_wire.sym} 520 40 0 0 {name=p9 sig_type=std_logic lab=nbias_upper}
C {lab_wire.sym} 520 160 0 0 {name=p10 sig_type=std_logic lab=nbias_lower}
C {opin.sym} 620 0 0 0 {name=p11 lab=vop}
C {opin.sym} 420 0 0 0 {name=p12 lab=von}
C {vsource.sym} -530 270 0 0 {name=V1 value=1.00 savecurrent=false}
C {lab_wire.sym} -530 200 0 0 {name=p16 sig_type=std_logic lab=tail_bias}
C {vsource.sym} -430 270 0 0 {name=V2 value=2.2 savecurrent=false}
C {ipin.sym} 520 340 3 0 {name=p17 lab=VSS}
C {lab_wire.sym} -430 200 0 0 {name=p18 sig_type=std_logic lab=pbias_upper}
C {vsource.sym} -330 270 0 0 {name=V3 value=1.5 savecurrent=false}
C {lab_wire.sym} -330 200 0 0 {name=p20 sig_type=std_logic lab=pbias_lower}
C {vsource.sym} -230 270 0 0 {name=V4 value=1.8 savecurrent=false}
C {lab_wire.sym} -230 200 0 0 {name=p22 sig_type=std_logic lab=nbias_upper}
C {vsource.sym} -130 270 0 0 {name=V5 value=0.9 savecurrent=false}
C {lab_wire.sym} -130 200 0 0 {name=p24 sig_type=std_logic lab=nbias_lower}
C {sg13g2_pr/annotate_fet_params.sym} -540 -470 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} -420 -470 0 0 {name=annot2 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} -300 -470 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} -540 -310 0 0 {name=annot4 ref=M4}
C {sg13g2_pr/annotate_fet_params.sym} -420 -310 0 0 {name=annot5 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} -300 -310 0 0 {name=annot6 ref=M6}
C {sg13g2_pr/annotate_fet_params.sym} -180 -310 0 0 {name=annot7 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} -540 -150 0 0 {name=annot8 ref=M8}
C {sg13g2_pr/annotate_fet_params.sym} -420 -150 0 0 {name=annot9 ref=M9}
C {sg13g2_pr/annotate_fet_params.sym} -300 -150 0 0 {name=annot10 ref=M10}
C {sg13g2_pr/annotate_fet_params.sym} -180 -150 0 0 {name=annot11 ref=M11}
