v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Comparator testbench
DC sweep + transient verification of comparator.sch.
Drivers (left column): VDPWR, vbp, vinn, vinp (PWL).
Comparator instance on right.} 90 -1110 0 0 0.4 0.4 {}
C {comparator.sym} 930 -330 0 0 {name=x1}
C {devices/lab_pin.sym} 780 -350 0 0 {name=l_vinp sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 780 -330 0 0 {name=l_vinn sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 780 -310 0 0 {name=l_vbp sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 1080 -350 2 0 {name=l_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1080 -330 2 0 {name=l_vgnd sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1080 -310 2 0 {name=l_vout sig_type=std_logic lab=vout}
C {vsource.sym} 490 -80 0 0 {name=V_SS value=0 savecurrent=false}
C {devices/lab_pin.sym} 490 -110 1 0 {name=l_vss_p sig_type=std_logic lab=VGND}
C {gnd.sym} 490 -50 0 0 {name=gnd_vss lab=0}
C {devices/capa.sym} 1240 -270 0 0 {name=C_load value=10f m=1}
C {devices/lab_pin.sym} 1240 -300 1 0 {name=l_cload_t sig_type=std_logic lab=vout}
C {gnd.sym} 1240 -240 0 0 {name=gnd_cload lab=0}
C {vsource.sym} 490 -530 0 0 {name=V_DD value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 490 -560 0 0 {name=l_vdd_p sig_type=std_logic lab=VDPWR}
C {gnd.sym} 490 -500 0 0 {name=gnd_vdd lab=0}
C {vsource.sym} 490 -400 0 0 {name=V_INN value=0.1 savecurrent=false}
C {devices/lab_pin.sym} 490 -430 0 0 {name=l_vinn_p sig_type=std_logic lab=vinn}
C {gnd.sym} 490 -370 0 0 {name=gnd_vinn lab=0}
C {vsource.sym} 490 -260 0 0 {name=V_INP value="pwl(0 0 100u 1.8 100.01u 0 200.01u 1.8 200.02u 0)" savecurrent=false}
C {devices/lab_pin.sym} 490 -290 0 0 {name=l_vinp_p sig_type=std_logic lab=vinp}
C {gnd.sym} 490 -230 0 0 {name=gnd_vinp lab=0}
C {code_shown.sym} 80 -880 0 0 {name=s1 only_toplevel=false value="
.lib $PDK_ROOT/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all
.control
* Transient: 2 cycles of a 100us ramp 0->1.8V with a fast reset to 0 between cycles.
* vinn is held at the level set by V_INN (default 0.1V here) so the comparator should
* trip very early in each ramp.
tran 10n 210u
write comparator_tb_tran.raw
plot v(vinp) v(vinn) v(vout)
.endc
"}
C {bias.sym} 930 -460 0 0 {name=x2}
C {devices/lab_pin.sym} 1080 -480 2 0 {name=l_vdpwr1 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1080 -460 2 0 {name=l_vgnd1 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1080 -440 2 0 {name=l_vbp1 sig_type=std_logic lab=vbp}
