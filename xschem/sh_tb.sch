v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Sample-and-Hold testbench
vin_int : continuous triangle 0.2V..1.6V, period 80us
sample  : 1us-high pulse every 256us (mimics rst_ramp)
sh_bypass: 0 for first half of sim, 1 for second half

Expected:
 sh_bypass=0 -> vin_out is a staircase: jumps to vin_int during each
                sample pulse, holds flat between pulses.
 sh_bypass=1 -> vin_out tracks vin_int continuously (pass-through).} 60 -1500 0 0 0.4 0.4 {}
C {sh.sym} 970 -730 0 0 {name=x1}
C {devices/lab_pin.sym} 1120 -730 2 0 {name=l_dut_vdpwr   sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -710 2 0 {name=l_dut_vgnd    sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 820 -750 0 0 {name=l_dut_vin_int sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 820 -730 0 0 {name=l_dut_sample  sig_type=std_logic lab=sample}
C {devices/lab_pin.sym} 820 -710 0 0 {name=l_dut_bypass  sig_type=std_logic lab=sh_bypass}
C {devices/lab_pin.sym} 1120 -750 2 0 {name=l_dut_vin_out sig_type=std_logic lab=vin_out
}
C {vsource.sym} 370 -730 0 0 {name=V_DD value=1.8 savecurrent=true}
C {devices/lab_pin.sym} 370 -760 0 0 {name=l_vdd_p sig_type=std_logic lab=VDPWR}
C {gnd.sym} 370 -700 0 0 {name=gnd_vdd lab=0}
C {vsource.sym} 370 -590 0 0 {name=V_SS value=0 savecurrent=false}
C {devices/lab_pin.sym} 370 -620 0 0 {name=l_vss_p sig_type=std_logic lab=VGND}
C {gnd.sym} 370 -560 0 0 {name=gnd_vss lab=0}
C {vsource.sym} 370 -450 0 0 {name=V_VIN value="pwl(0 0.2 40u 1.6 80u 0.2 120u 1.6 160u 0.2 200u 1.6 240u 0.2 280u 1.6 320u 0.2)" savecurrent=false}
C {devices/lab_pin.sym} 370 -480 0 0 {name=l_vin_p sig_type=std_logic lab=vin_int}
C {gnd.sym} 370 -420 0 0 {name=gnd_vin lab=0}
C {vsource.sym} 370 -310 0 0 {name=V_SAMPLE value="pulse(0 1.8 0 10n 10n 0.05u 10u)" savecurrent=false}
C {devices/lab_pin.sym} 370 -340 0 0 {name=l_sample_p sig_type=std_logic lab=sample}
C {gnd.sym} 370 -280 0 0 {name=gnd_sample lab=0}
C {vsource.sym} 370 -170 0 0 {name=V_BYPASS value="pwl(0 0 159u 0 160u 1.8 320u 1.8)" savecurrent=false}
C {devices/lab_pin.sym} 370 -200 0 0 {name=l_bypass_p sig_type=std_logic lab=sh_bypass}
C {gnd.sym} 370 -140 0 0 {name=gnd_bypass lab=0}
C {devices/capa.sym} 1380 -680 0 0 {name=C_load value=5f m=1}
C {devices/lab_pin.sym} 1380 -710 0 0 {name=l_cload_t sig_type=std_logic lab=vin_out}
C {gnd.sym} 1380 -650 0 0 {name=gnd_cload lab=0}
C {code_shown.sym} 70 -1130 0 0 {name=s1 only_toplevel=false value="
.lib $PDK_ROOT/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include $PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.save all
.control
tran 100n 320u
write sh_tb.raw
plot v(vin_int) v(vin_out) v(sample) v(sh_bypass)
.endc
"}
