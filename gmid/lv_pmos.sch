v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 30 360 30 {lab=#net1}
N 360 -20 360 30 {lab=#net1}
N 340 -20 360 -20 {lab=#net1}
N 340 -20 340 -0 {lab=#net1}
N 340 60 340 140 {lab=GND}
N 240 30 300 30 {lab=#net2}
N 460 -60 460 60 {lab=#net1}
N 340 -60 460 -60 {lab=#net1}
N 460 120 460 140 {lab=GND}
N 340 -60 340 -20 {lab=#net1}
N 240 10 240 30 {lab=#net2}
N 240 -60 240 -50 {lab=#net1}
N 240 -60 340 -60 {lab=#net1}
C {code_shown.sym} -580 -310 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} -1490 240 0 0 {name=NGSPICE only_toplevel=false
value="
.option savecurrents
.save all @n.xm1.nsg13_lv_pmos[ids] @n.xm1.nsg13_lv_pmos[l] @n.xm1.nsg13_lv_pmos[gm] @n.xm1.nsg13_lv_pmos[cgg] @n.xm1.nsg13_lv_pmos[gds] @n.xm1.nsg13_lv_pmos[vgs] @n.xm1.nsg13_lv_pmos[vds]
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
	alter @n.xm1.nsg13_lv_pmos[l] = actual_L
	let actual_VDS = start_VDS
	while actual_VDS le stop_VDS
		alter VDS actual_VDS
		dc VGS 0 3.3 0.01
		wrdata lv_pmos.txt @n.xm1.nsg13_lv_pmos[vgs] @n.xm1.nsg13_lv_pmos[vds] @n.xm1.nsg13_lv_pmos[ids] @n.xm1.nsg13_lv_pmos[l] @n.xm1.nsg13_lv_pmos[gm] @n.xm1.nsg13_lv_pmos[cgg] @n.xm1.nsg13_lv_pmos[gds]
		let actual_VDS = actual_VDS + delta_VDS
	end
	let actual_L = actual_L + delta_L
end

write lv_nmos.raw

.endc

"}
C {launcher.sym} -80 280 0 0 {descr="annotate"
tclcommand="xschem annotate_op"}
C {gnd.sym} 340 140 0 0 {name=l4 lab=GND}
C {vsource.sym} 240 -20 0 0 {name=VGS value=1.50 savecurrent=false}
C {vsource.sym} 460 90 0 0 {name=VDS value=3.3 savecurrent=false}
C {gnd.sym} 460 140 0 0 {name=l6 lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} 320 30 0 0 {name=M1
l=1.0u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
