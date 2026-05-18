v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Ramp generator testbench
Cascades real bias.sch into ramp.sch.
rst_ramp pulses high 0.5us every 62us; ramp resets just as it reaches ~1V
(the comparator's PMOS-input common-mode ceiling).} 150 -960 0 0 0.4 0.4 {}
C {bias.sym} 740 -370 0 0 {name=xb1}
C {ramp.sym} 740 -250 0 0 {name=xr1}
C {devices/lab_pin.sym} 890 -390 2 0 {name=l_b_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 890 -370 2 0 {name=l_b_vgnd sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 890 -350 2 0 {name=l_b_vbp sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 590 -270 0 0 {name=l_r_vbp sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 590 -250 0 0 {name=l_r_rstramp sig_type=std_logic lab=rst_ramp}
C {devices/lab_pin.sym} 890 -270 2 0 {name=l_r_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 890 -250 2 0 {name=l_r_vgnd sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 890 -230 2 0 {name=l_r_vramp sig_type=std_logic lab=vramp}
C {vsource.sym} 230 -380 0 0 {name=V_DD value=1.8 savecurrent=true}
C {devices/lab_pin.sym} 230 -410 1 0 {name=l_vdd_p sig_type=std_logic lab=VDPWR}
C {gnd.sym} 230 -350 0 0 {name=gnd_vdd lab=0}
C {vsource.sym} 330 -380 0 0 {name=V_SS value=0 savecurrent=false}
C {devices/lab_pin.sym} 330 -410 1 0 {name=l_vss_p sig_type=std_logic lab=VGND}
C {gnd.sym} 330 -350 0 0 {name=gnd_vss lab=0}
C {vsource.sym} 230 -130 0 0 {name=V_RST value="pulse(0 1.8 0 10n 10n 0.01u 62u)" savecurrent=false}
C {devices/lab_pin.sym} 230 -160 1 0 {name=l_vrst_p sig_type=std_logic lab=rst_ramp}
C {gnd.sym} 230 -100 0 0 {name=gnd_vrst lab=0}
C {devices/capa.sym} 1060 -200 0 0 {name=C_load value=10f m=1}
C {devices/lab_pin.sym} 1060 -230 1 0 {name=l_cload_t sig_type=std_logic lab=vramp}
C {gnd.sym} 1060 -170 0 0 {name=gnd_cload lab=0}
C {code_shown.sym} 40 -730 0 0 {name=s1 only_toplevel=false value="
.lib $PDK_ROOT/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all
.control
* Two full conversions
tran 100n 600u
write ramp_tb.raw
plot v(vramp) v(vbp) v(rst_ramp)
.endc
"}
