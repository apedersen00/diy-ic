v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -60 -0 -0 {lab=vds}
N -0 60 0 120 {lab=GND}
N -100 30 -40 30 {lab=vgs}
N 120 -60 120 60 {lab=vds}
N -0 -60 120 -60 {lab=vds}
N -100 30 -100 60 {lab=vgs}
N -100 120 -100 140 {lab=GND}
N 0 120 0 140 {lab=GND}
N 120 120 120 140 {lab=GND}
N -0 30 10 30 {lab=GND}
N 10 30 10 70 {lab=GND}
N 0 70 10 70 {lab=GND}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 30 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {vsource.sym} -100 90 0 0 {name=VGS value=1.50 savecurrent=false}
C {vsource.sym} 120 90 0 0 {name=VDS value=3.3 savecurrent=false}
C {gnd.sym} -100 140 0 0 {name=l1 lab=GND}
C {gnd.sym} 0 140 0 0 {name=l2 lab=GND}
C {gnd.sym} 120 140 0 0 {name=l3 lab=GND}
C {code_shown.sym} -430 -210 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {code_shown.sym} -430 -110 0 0 {name=NGSPICE only_toplevel=false
value="
.option savecurrents
.save all @n.xm1.nsg13_hv_nmos[ids]
.control
op
dc VDS 0 1.2 0.01 VGS 0 1.2 0.01
write hv_nmos.raw
.endc
"}
C {ngspice_get_value.sym} 10 -10 0 0 {name=r1 node=i(@n.xm1.nsg13_hv_nmos[ids])}
C {launcher.sym} -370 60 0 0 {descr="annotate"
tclcommand="xschem annotate_op"}
C {lab_wire.sym} 120 -60 0 0 {name=p1 sig_type=std_logic lab=vds}
C {lab_wire.sym} -100 30 0 0 {name=p2 sig_type=std_logic lab=vgs}
