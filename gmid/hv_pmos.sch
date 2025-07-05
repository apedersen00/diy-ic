v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 30 360 30 {lab=vsd}
N 360 -20 360 30 {lab=vsd}
N 340 -20 360 -20 {lab=vsd}
N 340 -20 340 -0 {lab=vsd}
N 340 60 340 140 {lab=GND}
N 240 30 300 30 {lab=#net1}
N 460 -60 460 60 {lab=vsd}
N 340 -60 460 -60 {lab=vsd}
N 460 120 460 140 {lab=GND}
N 340 -60 340 -20 {lab=vsd}
N 240 10 240 30 {lab=#net1}
N 240 -60 240 -50 {lab=vsd}
N 240 -60 340 -60 {lab=vsd}
C {code_shown.sym} -580 -310 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {code_shown.sym} -1490 240 0 0 {name=NGSPICE only_toplevel=false
value="
.option savecurrents
.save all @n.xm2.nsg13_hv_pmos[ids] @n.xm2.nsg13_hv_pmos[l] @n.xm2.nsg13_hv_pmos[gm] @n.xm2.nsg13_hv_pmos[cgg] @n.xm2.nsg13_hv_pmos[gds] @n.xm2.nsg13_hv_pmos[vgs] @n.xm2.nsg13_hv_pmos[vds]
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
	alter @n.xm2.nsg13_hv_pmos[l] = actual_L
	let actual_VDS = start_VDS
	while actual_VDS le stop_VDS
		alter VDS actual_VDS
		dc VGS 0 3.3 0.01
		wrdata hv_pmos.txt @n.xm2.nsg13_hv_pmos[vgs] @n.xm2.nsg13_hv_pmos[vds] @n.xm2.nsg13_hv_pmos[ids] @n.xm2.nsg13_hv_pmos[l] @n.xm2.nsg13_hv_pmos[gm] @n.xm2.nsg13_hv_pmos[cgg] @n.xm2.nsg13_hv_pmos[gds]
		let actual_VDS = actual_VDS + delta_VDS
	end
	let actual_L = actual_L + delta_L
end

write hv_nmos.raw

.endc

"}
C {launcher.sym} -80 280 0 0 {descr="annotate"
tclcommand="xschem annotate_op"}
C {sg13g2_pr/sg13_hv_pmos.sym} 320 30 0 0 {name=M2
l=1u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {gnd.sym} 340 140 0 0 {name=l4 lab=GND}
C {vsource.sym} 240 -20 0 0 {name=VGS value=1.50 savecurrent=false}
C {vsource.sym} 460 90 0 0 {name=VDS value=3.3 savecurrent=false}
C {gnd.sym} 460 140 0 0 {name=l6 lab=GND}
