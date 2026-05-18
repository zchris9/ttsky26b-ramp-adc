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
T {2:1 analog MUX
Two CMOS transmission gates plus a select-inverter.
sel=0 -> ua0 routed to vin_int
sel=1 -> ua1 routed to vin_int} -120 -1010 0 0 0.4 0.4 {}
C {devices/iopin.sym} -110 -390 2 0 {name=p1 lab=VDPWR}
C {devices/iopin.sym} -110 -350 2 0 {name=p2 lab=VGND}
C {devices/ipin.sym} -110 -530 0 0 {name=p3 lab=ua0}
C {devices/ipin.sym} -110 -490 0 0 {name=p4 lab=ua1}
C {devices/ipin.sym} -110 -450 0 0 {name=p5 lab=sel}
C {devices/opin.sym} 730 -440 0 0 {name=p6 lab=vin_int}
C {sky130_fd_pr/pfet_01v8.sym} 100 -540 0 0 {name=MP_INV
L=0.15 W=1 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 120 -570 1 0 {name=l_mpinv_s sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 120 -510 3 0 {name=l_mpinv_d sig_type=std_logic lab=sel_b}
C {devices/lab_pin.sym} 80 -540 0 0 {name=l_mpinv_g sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 120 -540 2 0 {name=l_mpinv_b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/nfet_01v8.sym} 100 -350 0 0 {name=MN_INV
L=0.15 W=0.5 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 120 -380 1 0 {name=l_mninv_d sig_type=std_logic lab=sel_b}
C {devices/lab_pin.sym} 120 -320 3 0 {name=l_mninv_s sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 80 -350 0 0 {name=l_mninv_g sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 120 -350 2 0 {name=l_mninv_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} 400 -540 3 0 {name=MN_CH0
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 370 -560 0 0 {name=l_mnch0_d sig_type=std_logic lab=ua0}
C {devices/lab_pin.sym} 430 -560 2 0 {name=l_mnch0_s sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 400 -520 3 0 {name=l_mnch0_g sig_type=std_logic lab=sel_b}
C {devices/lab_pin.sym} 400 -560 1 0 {name=l_mnch0_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 400 -720 3 0 {name=MP_CH0
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 370 -740 0 0 {name=l_mpch0_s sig_type=std_logic lab=ua0}
C {devices/lab_pin.sym} 430 -740 2 0 {name=l_mpch0_d sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 400 -700 3 0 {name=l_mpch0_g sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 400 -740 1 0 {name=l_mpch0_b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/nfet_01v8.sym} 400 -160 3 0 {name=MN_CH1
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 370 -180 0 0 {name=l_mnch1_d sig_type=std_logic lab=ua1}
C {devices/lab_pin.sym} 430 -180 2 0 {name=l_mnch1_s sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 400 -140 3 0 {name=l_mnch1_g sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 400 -180 1 0 {name=l_mnch1_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 400 -340 3 0 {name=MP_CH1
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 370 -360 0 0 {name=l_mpch1_s sig_type=std_logic lab=ua1}
C {devices/lab_pin.sym} 430 -360 2 0 {name=l_mpch1_d sig_type=std_logic lab=vin_int}
C {devices/lab_pin.sym} 400 -320 3 0 {name=l_mpch1_g sig_type=std_logic lab=sel_b}
C {devices/lab_pin.sym} 400 -360 1 0 {name=l_mpch1_b sig_type=std_logic lab=VDPWR}
