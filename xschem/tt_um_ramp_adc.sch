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
T {Tiny Tapeout wrapper for the ramp ADC.
Instantiates ramp_adc and ties it to the full TT framework pin set:
  ui_in[0]   -> sel              (channel select)
  ui_in[1]   -> sh_bypass        (S&H bypass)
  uo_out[7:0]<- code[7:0]        (ADC output code)
  uio_out[0] <- sample_valid
  uio_out[1] <- cmp_out          (observation)
  uio_out[2] <- rst_ramp         (observation)
  uio_oe[0..2] = 1                (driving the outputs above)
  uio_oe[3..7] = 0                (uio_out[3..7] not driven)
  uio_out[3..7] = 0               (tied to VGND)
  ua[0..1]   <-> ramp_adc.ua0/ua1
  Unused ena, uio_in[*], ui_in[2..7], ua[2..7] left floating as inputs.} 340 -1190 0 0 0.4 0.4 {}
C {devices/iopin.sym} 570 -320 2 0 {name=p_vdpwr lab=VDPWR}
C {devices/iopin.sym} 570 -300 2 0 {name=p_vgnd  lab=VGND}
C {devices/ipin.sym} 570 -580 0 0 {name=p_clk   lab=clk}
C {devices/ipin.sym} 570 -560 0 0 {name=p_rstn  lab=rst_n}
C {devices/ipin.sym} 370 -710 0 0 {name=p_ena   lab=ena}
C {devices/ipin.sym} 570 -540 0 0 {name=p_ui0 lab=ui_in[0]}
C {devices/ipin.sym} 570 -520 0 0 {name=p_ui1 lab=ui_in[1]}
C {devices/ipin.sym} 370 -630 0 0 {name=p_ui2 lab=ui_in[2]}
C {devices/ipin.sym} 370 -610 0 0 {name=p_ui3 lab=ui_in[3]}
C {devices/ipin.sym} 370 -590 0 0 {name=p_ui4 lab=ui_in[4]}
C {devices/ipin.sym} 370 -570 0 0 {name=p_ui5 lab=ui_in[5]}
C {devices/ipin.sym} 370 -550 0 0 {name=p_ui6 lab=ui_in[6]}
C {devices/ipin.sym} 370 -530 0 0 {name=p_ui7 lab=ui_in[7]}
C {devices/ipin.sym} 370 -490 0 0 {name=p_uin0 lab=uio_in[0]}
C {devices/ipin.sym} 370 -470 0 0 {name=p_uin1 lab=uio_in[1]}
C {devices/ipin.sym} 370 -450 0 0 {name=p_uin2 lab=uio_in[2]}
C {devices/ipin.sym} 370 -430 0 0 {name=p_uin3 lab=uio_in[3]}
C {devices/ipin.sym} 370 -410 0 0 {name=p_uin4 lab=uio_in[4]}
C {devices/ipin.sym} 370 -390 0 0 {name=p_uin5 lab=uio_in[5]}
C {devices/ipin.sym} 370 -370 0 0 {name=p_uin6 lab=uio_in[6]}
C {devices/ipin.sym} 370 -350 0 0 {name=p_uin7 lab=uio_in[7]}
C {devices/iopin.sym} 570 -440 2 0 {name=p_ua0 lab=ua[0]}
C {devices/iopin.sym} 570 -420 2 0 {name=p_ua1 lab=ua[1]}
C {devices/iopin.sym} 370 -270 2 0 {name=p_ua2 lab=ua[2]}
C {devices/iopin.sym} 370 -250 2 0 {name=p_ua3 lab=ua[3]}
C {devices/iopin.sym} 370 -230 2 0 {name=p_ua4 lab=ua[4]}
C {devices/iopin.sym} 370 -210 2 0 {name=p_ua5 lab=ua[5]}
C {devices/iopin.sym} 370 -190 2 0 {name=p_ua6 lab=ua[6]}
C {devices/iopin.sym} 370 -170 2 0 {name=p_ua7 lab=ua[7]}
C {devices/opin.sym} 870 -580 0 0 {name=p_uo0 lab=uo_out[0]}
C {devices/opin.sym} 870 -560 0 0 {name=p_uo1 lab=uo_out[1]}
C {devices/opin.sym} 870 -540 0 0 {name=p_uo2 lab=uo_out[2]}
C {devices/opin.sym} 870 -520 0 0 {name=p_uo3 lab=uo_out[3]}
C {devices/opin.sym} 870 -500 0 0 {name=p_uo4 lab=uo_out[4]}
C {devices/opin.sym} 870 -480 0 0 {name=p_uo5 lab=uo_out[5]}
C {devices/opin.sym} 870 -460 0 0 {name=p_uo6 lab=uo_out[6]}
C {devices/opin.sym} 870 -440 0 0 {name=p_uo7 lab=uo_out[7]}
C {devices/opin.sym} 870 -400 0 0 {name=p_uout0 lab=uio_out[0]}
C {devices/opin.sym} 870 -320 0 0 {name=p_uout1 lab=uio_out[1]}
C {devices/opin.sym} 870 -300 0 0 {name=p_uout2 lab=uio_out[2]}
C {devices/opin.sym} 1120 -360 0 0 {name=p_uout3 lab=uio_out[3]}
C {devices/opin.sym} 1120 -340 0 0 {name=p_uout4 lab=uio_out[4]}
C {devices/opin.sym} 1120 -320 0 0 {name=p_uout5 lab=uio_out[5]}
C {devices/opin.sym} 1120 -300 0 0 {name=p_uout6 lab=uio_out[6]}
C {devices/opin.sym} 1120 -280 0 0 {name=p_uout7 lab=uio_out[7]}
C {devices/opin.sym} 1120 -580 0 0 {name=p_uoe0 lab=uio_oe[0]}
C {devices/opin.sym} 1120 -560 0 0 {name=p_uoe1 lab=uio_oe[1]}
C {devices/opin.sym} 1120 -540 0 0 {name=p_uoe2 lab=uio_oe[2]}
C {devices/opin.sym} 1120 -520 0 0 {name=p_uoe3 lab=uio_oe[3]}
C {devices/opin.sym} 1120 -500 0 0 {name=p_uoe4 lab=uio_oe[4]}
C {devices/opin.sym} 1120 -480 0 0 {name=p_uoe5 lab=uio_oe[5]}
C {devices/opin.sym} 1120 -460 0 0 {name=p_uoe6 lab=uio_oe[6]}
C {devices/opin.sym} 1120 -440 0 0 {name=p_uoe7 lab=uio_oe[7]}
C {ramp_adc.sym} 720 -440 0 0 {name=x_ramp_adc}
C {devices/lab_pin.sym} 1120 -580 0 0 {name=l_oe0_h sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -560 0 0 {name=l_oe1_h sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -540 0 0 {name=l_oe2_h sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -520 0 0 {name=l_oe3_h sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -500 0 0 {name=l_oe4_h sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -480 0 0 {name=l_oe5_h sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -460 0 0 {name=l_oe6_h sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -440 0 0 {name=l_oe7_h sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1120 -360 0 0 {name=l_uout3_g sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1120 -340 0 0 {name=l_uout4_g sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1120 -320 0 0 {name=l_uout5_g sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1120 -300 0 0 {name=l_uout6_g sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1120 -280 0 0 {name=l_uout7_g sig_type=std_logic lab=VGND}
