v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Analog MUX testbench
ua0 ramps 0 -> 1.8V over 100us.
ua1 ramps 1.8 -> 0V over 100us.
sel goes 0->1.8V at 50us, so we should see vin_int track ua0 for 0-50us
then track ua1 for 50-100us.} 70 -1080 0 0 0.4 0.4 {}
C {mux.sym} 740 -270 0 0 {name=x1}
C {devices/lab_pin.sym} 590 -290 0 0 {name=l_ua0 sig_type=std_logic lab=ua0}
C {devices/lab_pin.sym} 590 -270 0 0 {name=l_ua1 sig_type=std_logic lab=ua1}
C {devices/lab_pin.sym} 590 -250 0 0 {name=l_sel sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 890 -290 2 0 {name=l_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 890 -270 2 0 {name=l_vgnd sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 890 -250 2 0 {name=l_vin_int sig_type=std_logic lab=vin_int}
C {vsource.sym} 140 -470 0 0 {name=V_DD value=1.8 savecurrent=true}
C {devices/lab_pin.sym} 140 -500 1 0 {name=l_vdd_p sig_type=std_logic lab=VDPWR}
C {gnd.sym} 140 -440 0 0 {name=gnd_vdd lab=0}
C {vsource.sym} 230 -470 0 0 {name=V_SS value=0 savecurrent=false}
C {devices/lab_pin.sym} 230 -500 1 0 {name=l_vss_p sig_type=std_logic lab=VGND}
C {gnd.sym} 230 -440 0 0 {name=gnd_vss lab=0}
C {vsource.sym} 140 -300 0 0 {name=V_UA0 value="pwl(0 0 100u 1.8)" savecurrent=false}
C {devices/lab_pin.sym} 140 -330 1 0 {name=l_ua0_p sig_type=std_logic lab=ua0}
C {gnd.sym} 140 -270 0 0 {name=gnd_ua0 lab=0}
C {vsource.sym} 290 -300 0 0 {name=V_UA1 value="pwl(0 1.8 100u 0)" savecurrent=false}
C {devices/lab_pin.sym} 290 -330 1 0 {name=l_ua1_p sig_type=std_logic lab=ua1}
C {gnd.sym} 290 -270 0 0 {name=gnd_ua1 lab=0}
C {vsource.sym} 140 -140 0 0 {name=V_SEL value="pulse(1.8 0 50u 10n 10n 50u 200u)" savecurrent=false}
C {devices/lab_pin.sym} 140 -170 1 0 {name=l_sel_p sig_type=std_logic lab=sel}
C {gnd.sym} 140 -110 0 0 {name=gnd_sel lab=0}
C {devices/capa.sym} 1090 -270 0 0 {name=C_load value=10f m=1}
C {devices/lab_pin.sym} 1090 -300 1 0 {name=l_cload_t sig_type=std_logic lab=vin_int}
C {gnd.sym} 1090 -240 0 0 {name=gnd_cload lab=0}
C {code_shown.sym} 80 -820 0 0 {name=s1 only_toplevel=false value="
.lib $PDK_ROOT/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all
.control
tran 100n 100u
write mux_tb.raw
plot v(ua0) v(ua1) v(sel) v(vin_int)
.endc
"}
