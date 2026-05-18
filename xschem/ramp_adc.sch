v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
V {}
S {}
F {}
E {}
T {Top-level single-slope 8-bit, 2-channel ADC for Tiny Tapeout sky130A.
Sub-blocks: bias, ramp, mux, comparator, digital.
Note polarity: comparator inputs are SWAPPED (vin_int->vinp, vramp->vinn) so
that cmp_out goes HIGH when vramp crosses vin_int (matches digital block expectation).} 210 -1170 0 0 0.4 0.4 {}
C {devices/iopin.sym} 210 -460 2 0 {name=p_vdpwr lab=VDPWR}
C {devices/iopin.sym} 210 -430 2 0 {name=p_vgnd  lab=VGND}
C {devices/iopin.sym} 200 -670 2 0 {name=p_ua0   lab=ua0}
C {devices/iopin.sym} 200 -640 2 0 {name=p_ua1   lab=ua1}
C {devices/ipin.sym} 200 -610 0 0 {name=p_sel   lab=sel}
C {devices/ipin.sym} 200 -840 0 0 {name=p_clk   lab=clk}
C {devices/ipin.sym} 200 -810 0 0 {name=p_rstn  lab=rst_n}
C {devices/opin.sym} 1780 -430 0 0 {name=p_sv    lab=sample_valid}
C {devices/opin.sym} 1780 -750 0 0 {name=p_c0    lab=code0}
C {devices/opin.sym} 1780 -710 0 0 {name=p_c1    lab=code1}
C {devices/opin.sym} 1780 -670 0 0 {name=p_c2    lab=code2}
C {devices/opin.sym} 1780 -630 0 0 {name=p_c3    lab=code3}
C {devices/opin.sym} 1780 -590 0 0 {name=p_c4    lab=code4}
C {devices/opin.sym} 1780 -550 0 0 {name=p_c5    lab=code5}
C {devices/opin.sym} 1780 -510 0 0 {name=p_c6    lab=code6}
C {devices/opin.sym} 1780 -470 0 0 {name=p_c7    lab=code7}
C {bias.sym} 660 -510 0 0 {name=xb1}
C {devices/lab_pin.sym} 810 -530 2 0 {name=l_b_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 810 -510 2 0 {name=l_b_vgnd  sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 810 -490 2 0 {name=l_b_vbp   sig_type=std_logic lab=vbp}
C {ramp.sym} 1250 -510 0 0 {name=xr1}
C {devices/lab_pin.sym} 1100 -530 0 0 {name=l_r_vbp   sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 1100 -510 0 0 {name=l_r_rst   sig_type=std_logic lab=rst_ramp}
C {devices/lab_pin.sym} 1400 -530 2 0 {name=l_r_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1400 -510 2 0 {name=l_r_vgnd  sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1400 -490 2 0 {name=l_r_vramp sig_type=std_logic lab=vramp}
C {mux.sym} 660 -360 0 0 {name=xm1}
C {devices/lab_pin.sym} 510 -380 0 0 {name=l_m_ua0   sig_type=std_logic lab=ua0}
C {devices/lab_pin.sym} 510 -360 0 0 {name=l_m_ua1   sig_type=std_logic lab=ua1}
C {devices/lab_pin.sym} 510 -340 0 0 {name=l_m_sel   sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 810 -380 2 0 {name=l_m_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 810 -360 2 0 {name=l_m_vgnd  sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 810 -340 2 0 {name=l_m_vin   sig_type=std_logic lab=vin_int}
C {comparator.sym} 1250 -330 0 0 {name=xc1}
C {devices/lab_pin.sym} 1100 -350 0 0 {name=l_c_vinn  sig_type=std_logic lab=vramp}
C {devices/lab_pin.sym} 1100 -310 0 0 {name=l_c_vbp   sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 1400 -350 2 0 {name=l_c_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1400 -330 2 0 {name=l_c_vgnd  sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1400 -310 2 0 {name=l_c_vout  sig_type=std_logic lab=cmp_out}
C {digital.sym} 980 -790 0 0 {name=xd1}
C {devices/lab_pin.sym} 830 -900 0 0 {name=l_d_clk   sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 830 -880 0 0 {name=l_d_rstn  sig_type=std_logic lab=rst_n}
C {devices/lab_pin.sym} 830 -860 0 0 {name=l_d_cmp   sig_type=std_logic lab=cmp_out}
C {devices/lab_pin.sym} 1130 -900 2 0 {name=l_d_vdpwr sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1130 -880 2 0 {name=l_d_vgnd  sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1130 -860 2 0 {name=l_d_rst   sig_type=std_logic lab=rst_ramp}
C {devices/lab_pin.sym} 1130 -840 2 0 {name=l_d_sv    sig_type=std_logic lab=sample_valid}
C {devices/lab_pin.sym} 1130 -820 2 0 {name=l_d_c0    sig_type=std_logic lab=code0}
C {devices/lab_pin.sym} 1130 -800 2 0 {name=l_d_c1    sig_type=std_logic lab=code1}
C {devices/lab_pin.sym} 1130 -780 2 0 {name=l_d_c2    sig_type=std_logic lab=code2}
C {devices/lab_pin.sym} 1130 -760 2 0 {name=l_d_c3    sig_type=std_logic lab=code3}
C {devices/lab_pin.sym} 1130 -740 2 0 {name=l_d_c4    sig_type=std_logic lab=code4}
C {devices/lab_pin.sym} 1130 -720 2 0 {name=l_d_c5    sig_type=std_logic lab=code5}
C {devices/lab_pin.sym} 1130 -700 2 0 {name=l_d_c6    sig_type=std_logic lab=code6}
C {devices/lab_pin.sym} 1130 -680 2 0 {name=l_d_c7    sig_type=std_logic lab=code7}
C {sh.sym} 660 -220 0 0 {name=x1}
C {lab_pin.sym} 1100 -330 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 510 -240 0 0 {name=p2 sig_type=std_logic lab=vin_int}
C {lab_pin.sym} 510 -220 0 0 {name=p3 sig_type=std_logic lab=rst_ramp}
C {devices/ipin.sym} 200 -580 0 0 {name=p_sel1   lab=sh_bypass}
C {lab_pin.sym} 510 -200 0 0 {name=p4 sig_type=std_logic lab=sh_bypass}
C {lab_pin.sym} 810 -240 2 0 {name=p5 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 810 -220 2 0 {name=p6 sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} 810 -200 2 0 {name=p7 sig_type=std_logic lab=VGND}
C {devices/opin.sym} 1780 -390 0 0 {name=p_c8    lab=cmp_out}
C {devices/opin.sym} 1780 -350 0 0 {name=p_c9    lab=rst_ramp}
