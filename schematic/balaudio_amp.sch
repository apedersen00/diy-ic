v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -40 0 -0 {lab=#net1}
N 100 -40 200 -40 {lab=#net1}
N 200 -40 200 -0 {lab=#net1}
N 100 -80 100 -40 {lab=#net1}
N 0 -110 60 -110 {lab=#net2}
N 400 160 400 280 {lab=#net3}
N 600 160 600 280 {lab=#net4}
N 400 350 400 380 {lab=#net5}
N 400 380 600 380 {lab=#net5}
N 600 350 600 380 {lab=#net5}
N 580 310 600 310 {lab=#net5}
N 580 310 580 350 {lab=#net5}
N 580 350 600 350 {lab=#net5}
N 400 310 420 310 {lab=#net5}
N 420 310 420 350 {lab=#net5}
N 400 350 420 350 {lab=#net5}
N 400 60 400 100 {lab=#net6}
N 600 60 600 100 {lab=#net7}
N 600 -160 600 -40 {lab=#net8}
N 400 -160 400 -40 {lab=#net9}
N 400 -230 400 -220 {lab=#net10}
N 600 -230 600 -220 {lab=#net10}
N 400 -260 600 -260 {lab=#net10}
N 380 -190 400 -190 {lab=#net10}
N 380 -230 380 -190 {lab=#net10}
N 380 -230 400 -230 {lab=#net10}
N 600 -190 620 -190 {lab=#net10}
N 620 -230 620 -190 {lab=#net10}
N 600 -230 620 -230 {lab=#net10}
N 100 -260 400 -260 {lab=#net10}
N 100 -260 100 -140 {lab=#net10}
N 400 60 420 60 {lab=#net6}
N 580 60 600 60 {lab=#net7}
N 0 -40 100 -40 {lab=#net1}
N 600 340 600 350 {lab=#net5}
N 400 340 400 350 {lab=#net5}
N 400 -260 400 -230 {lab=#net10}
N 600 -260 600 -230 {lab=#net10}
N 400 20 400 60 {lab=#net6}
N 600 20 600 60 {lab=#net7}
C {sg13g2_pr/sg13_hv_nmos.sym} 380 310 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -20 30 0 0 {name=M2
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 220 30 0 1 {name=M3
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 80 -110 0 0 {name=M4
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 620 310 0 1 {name=M5
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 420 130 0 1 {name=M6
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 580 130 0 0 {name=M7
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 420 -190 0 1 {name=M8
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 580 -190 0 0 {name=M9
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 420 -10 0 1 {name=M10
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 580 -10 0 0 {name=M11
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
