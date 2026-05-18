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
T {Sample-and-Hold with bypass
- Sample switch: CMOS transmission gate, controlled by 'sample'.
    sample=1 -> switch closed, hold cap tracks vin_int
    sample=0 -> switch open,   hold cap holds the sampled value
- Hold cap: MIM cap ~1pF on vin_held.
- Bypass mux: 2:1 analog T-gate mux.
    sh_bypass=0 -> vin_out = vin_held  (use S&H)
    sh_bypass=1 -> vin_out = vin_int   (pass-through, S&H disabled)
Analog path uses sky130_fd_pr transmission gates (standard cells cannot
pass analog). Digital control inverters use sky130_fd_sc_hd standard cells.
At the top level, connect 'sample' to rst_ramp.} 40 -1230 0 0 0.4 0.4 {}
C {devices/iopin.sym} 190 -170 2 0 {name=p1 lab=VDPWR}
C {devices/iopin.sym} 190 -130 2 0 {name=p2 lab=VGND}
C {devices/ipin.sym} 190 -350 0 0 {name=p3 lab=vin_int}
C {devices/ipin.sym} 190 -310 0 0 {name=p4 lab=sample}
C {devices/ipin.sym} 190 -270 0 0 {name=p5 lab=sh_bypass}
C {devices/opin.sym} 990 -600 0 0 {name=p6 lab=vin_out}
C {sky130_stdcells/inv_2.sym} 200 -680 0 0 {name=x_inv_s
VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__}
C {devices/lab_pin.sym} 160 -680 0 0 {name=l_invs_a sig_type=std_logic lab=sample}
C {devices/lab_pin.sym} 240 -680 2 0 {name=l_invs_y sig_type=std_logic lab=sample_b}
C {sky130_stdcells/inv_2.sym} 200 -600 0 0 {name=x_inv_b
VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__}
C {devices/lab_pin.sym} 160 -600 0 0 {name=l_invb_a sig_type=std_logic lab=sh_bypass}
C {devices/lab_pin.sym} 240 -600 2 0 {name=l_invb_y sig_type=std_logic lab=sh_bypass_b}
C {sky130_fd_pr/nfet_01v8.sym} 510 -200 0 0 {name=MN_SW
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 530 -230 1 0 {name=l_mnsw_d sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 530 -170 3 0 {name=l_mnsw_s sig_type=std_logic lab=vin_held}
C {devices/lab_pin.sym} 490 -200 0 0 {name=l_mnsw_g sig_type=std_logic lab=sample}
C {devices/lab_pin.sym} 530 -200 2 0 {name=l_mnsw_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 780 -200 0 0 {name=MP_SW
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 800 -230 1 0 {name=l_mpsw_s sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 800 -170 3 0 {name=l_mpsw_d sig_type=std_logic lab=vin_held}
C {devices/lab_pin.sym} 760 -200 0 0 {name=l_mpsw_g sig_type=std_logic lab=sample_b}
C {devices/lab_pin.sym} 800 -200 2 0 {name=l_mpsw_b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1000 -210 0 0 {name=C_HOLD
model=cap_mim_m3_1
W=22 L=22 MF=1
spiceprefix=X}
C {devices/lab_pin.sym} 1000 -240 0 0 {name=l_chold_t sig_type=std_logic lab=vin_held}
C {devices/lab_pin.sym} 1000 -180 0 0 {name=l_chold_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} 510 -460 0 0 {name=MN_H
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 530 -490 1 0 {name=l_mnh_d sig_type=std_logic lab=vin_held}
C {devices/lab_pin.sym} 530 -430 3 0 {name=l_mnh_s sig_type=std_logic lab=vin_out}
C {devices/lab_pin.sym} 490 -460 0 0 {name=l_mnh_g sig_type=std_logic lab=sh_bypass_b}
C {devices/lab_pin.sym} 530 -460 2 0 {name=l_mnh_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 780 -460 0 0 {name=MP_H
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 800 -490 1 0 {name=l_mph_s sig_type=std_logic lab=vin_held}
C {devices/lab_pin.sym} 800 -430 3 0 {name=l_mph_d sig_type=std_logic lab=vin_out}
C {devices/lab_pin.sym} 760 -460 0 0 {name=l_mph_g sig_type=std_logic lab=sh_bypass}
C {devices/lab_pin.sym} 800 -460 2 0 {name=l_mph_b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/nfet_01v8.sym} 510 -710 0 0 {name=MN_P
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 530 -740 1 0 {name=l_mnp_d sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 530 -680 3 0 {name=l_mnp_s sig_type=std_logic lab=vin_out}
C {devices/lab_pin.sym} 490 -710 0 0 {name=l_mnp_g sig_type=std_logic lab=sh_bypass}
C {devices/lab_pin.sym} 530 -710 2 0 {name=l_mnp_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 780 -710 0 0 {name=MP_P
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 800 -740 1 0 {name=l_mpp_s sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 800 -680 3 0 {name=l_mpp_d sig_type=std_logic lab=vin_out}
C {devices/lab_pin.sym} 760 -710 0 0 {name=l_mpp_g sig_type=std_logic lab=sh_bypass_b}
C {devices/lab_pin.sym} 800 -710 2 0 {name=l_mpp_b sig_type=std_logic lab=VDPWR}
