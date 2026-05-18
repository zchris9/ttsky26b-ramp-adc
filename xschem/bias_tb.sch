v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Bias generator testbench
Drives VDPWR/VGND, observes vbp.
.op for static operating point, .dc to see vbp vs supply.} 50 -700 0 0 0.4 0.4 {}
C {bias.sym} 490 -160 0 0 {name=x1}
C {devices/lab_pin.sym} 640 -180 2 0 {name=l_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 640 -160 2 0 {name=l_vgnd sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 640 -140 2 0 {name=l_vbp sig_type=std_logic lab=vbp}
C {vsource.sym} 120 -150 0 0 {name=V_DD value=1.8 savecurrent=true}
C {devices/lab_pin.sym} 120 -180 1 0 {name=l_vdd_p sig_type=std_logic lab=VDPWR}
C {gnd.sym} 120 -120 0 0 {name=gnd_vdd lab=0}
C {vsource.sym} 240 -150 0 0 {name=V_SS value=0 savecurrent=false}
C {devices/lab_pin.sym} 240 -180 1 0 {name=l_vss_p sig_type=std_logic lab=VGND}
C {gnd.sym} 240 -120 0 0 {name=gnd_vss lab=0}
C {code_shown.sym} 50 -540 0 0 {name=s1 only_toplevel=false value="
.lib $PDK_ROOT/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all
.control
* Static operating point
op
print v(vbp) i(V_DD)
* Sweep supply to see how vbp tracks
dc V_DD 0 2 0.01
write bias_tb_dc.raw
plot v(vbp)
plot -i(V_DD)
.endc
"}
