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
l=\{L\}
w=1.0u
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
C {code_shown.sym} -580 -310 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {code_shown.sym} -1490 240 0 0 {name=NGSPICE only_toplevel=false
value="
.option savecurrents
.save all @n.xm1.nsg13_hv_nmos[ids] @n.xm1.nsg13_hv_nmos[l] @n.xm1.nsg13_hv_nmos[gm] @n.xm1.nsg13_hv_nmos[cgg] @n.xm1.nsg13_hv_nmos[gds]
.control

.param L=1e-6

set wr_singlescale
set wr_vecnames
set appendwrite

let start_L = 1e-6
let stop_L = 50e-6
let delta_L = 1e-6

let start_VDS = 0
let stop_VDS = 3.4
let delta_VDS = 0.1

let actual_L = start_L

while actual_L le stop_L
	alter @n.xm1.nsg13_hv_nmos[l] = actual_L
	let actual_VDS = start_VDS
	while actual_VDS le stop_VDS
		alter VDS actual_VDS
		dc VGS 0 3.3 0.01
		wrdata hv_nmos.txt v(VDS) v(VGS) @n.xm1.nsg13_hv_nmos[ids] @n.xm1.nsg13_hv_nmos[l] @n.xm1.nsg13_hv_nmos[gm] @n.xm1.nsg13_hv_nmos[cgg] @n.xm1.nsg13_hv_nmos[gds]
		let actual_VDS = actual_VDS + delta_VDS
	end
	let actual_L = actual_L + delta_L
end

write hv_nmos.raw

.endc

"}
C {ngspice_get_value.sym} 10 -10 0 0 {name=r1 node=i(@n.xm1.nsg13_hv_nmos[ids])}
C {launcher.sym} -80 280 0 0 {descr="annotate"
tclcommand="xschem annotate_op"}
C {lab_wire.sym} 120 -60 0 0 {name=p1 sig_type=std_logic lab=vds}
C {lab_wire.sym} -100 30 0 0 {name=p2 sig_type=std_logic lab=vgs}
