v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 330 150 {}
N 40 30 40 60 {lab=#net1}
N 240 30 240 60 {lab=#net1}
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
N 140 170 140 180 {lab=VSS}
N 140 180 140 200 {lab=VSS}
N -40 130 100 130 {lab=#net2}
N -40 -0 0 0 {lab=#net3}
N 280 0 300 -0 {lab=#net4}
N 300 -0 300 80 {lab=#net4}
N -40 80 300 80 {lab=#net4}
N 420 -160 420 -100 {lab=#net5}
N 620 -160 620 -100 {lab=#net6}
N 420 -260 420 -220 {lab=VDD}
N 420 -260 620 -260 {lab=VDD}
N 620 -260 620 -220 {lab=VDD}
N 520 -300 520 -260 {lab=VDD}
N 420 -40 420 40 {lab=#net7}
N 620 -40 620 40 {lab=#net8}
N 420 100 420 160 {lab=#net9}
N 620 100 620 160 {lab=#net10}
N 400 -190 420 -190 {lab=VDD}
N 400 -230 400 -190 {lab=VDD}
N 400 -230 420 -230 {lab=VDD}
N 620 -190 640 -190 {lab=VDD}
N 640 -230 640 -190 {lab=VDD}
N 620 -230 640 -230 {lab=VDD}
N 460 -190 580 -190 {lab=#net11}
N 620 -70 640 -70 {lab=#net6}
N 640 -110 640 -70 {lab=#net6}
N 620 -110 640 -110 {lab=#net6}
N 410 -70 420 -70 {lab=#net5}
N 400 -70 410 -70 {lab=#net5}
N 400 -110 400 -70 {lab=#net5}
N 400 -110 420 -110 {lab=#net5}
N 460 -70 580 -70 {lab=#net12}
N 520 -100 520 -70 {lab=#net12}
N 520 -220 520 -190 {lab=#net11}
N 460 70 580 70 {lab=#net13}
N 460 190 580 190 {lab=#net14}
N 620 70 640 70 {lab=#net10}
N 640 70 640 110 {lab=#net10}
N 620 110 640 110 {lab=#net10}
N 400 70 420 70 {lab=#net9}
N 400 70 400 110 {lab=#net9}
N 400 110 420 110 {lab=#net9}
N 400 190 420 190 {lab=VSS}
N 400 190 400 230 {lab=VSS}
N 400 230 420 230 {lab=VSS}
N 420 220 420 230 {lab=VSS}
N 620 190 640 190 {lab=VSS}
N 640 190 640 230 {lab=VSS}
N 620 230 640 230 {lab=VSS}
N 620 220 620 230 {lab=VSS}
N 420 230 420 260 {lab=VSS}
N 420 260 620 260 {lab=VSS}
N 620 230 620 260 {lab=VSS}
N 520 260 520 300 {lab=VSS}
N 520 40 520 70 {lab=#net13}
N 520 160 520 190 {lab=#net14}
N 240 -120 240 -30 {lab=#net6}
N 240 -120 620 -120 {lab=#net6}
N 40 -140 40 -30 {lab=#net5}
N 40 -140 420 -140 {lab=#net5}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 0 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 440 -190 0 1 {name=M2
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 260 0 0 1 {name=M3
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 120 130 0 0 {name=M4
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 140 200 0 0 {name=p1 lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 600 -190 0 0 {name=M6
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 440 -70 0 1 {name=M7
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 600 -70 0 0 {name=M8
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} 520 -300 0 0 {name=p2 lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 600 70 0 0 {name=M9
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 440 70 0 1 {name=M5
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 600 190 0 0 {name=M10
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 440 190 0 1 {name=M11
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 520 300 0 0 {name=p3 lab=VSS}
