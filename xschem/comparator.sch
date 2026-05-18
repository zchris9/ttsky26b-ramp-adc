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
T {Two-stage PMOS-input comparator} 310 -630 0 0 0.4 0.4 {}
C {devices/iopin.sym} 170 -190 2 0 {name=p1 lab=VDPWR}
C {devices/iopin.sym} 170 -150 2 0 {name=p2 lab=VGND}
C {devices/ipin.sym} 170 -330 0 0 {name=p3 lab=vinp}
C {devices/ipin.sym} 170 -290 0 0 {name=p4 lab=vinn}
C {devices/ipin.sym} 170 -250 0 0 {name=p5 lab=vbp}
C {devices/opin.sym} 1150 -340 0 0 {name=p6 lab=vout}
C {sky130_fd_pr/pfet_01v8.sym} 410 -470 0 0 {name=MP_TAIL
L=2 W=4 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 430 -500 1 0 {name=l_mpts sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 430 -440 3 0 {name=l_mptd sig_type=std_logic lab=tail}
C {devices/lab_pin.sym} 390 -470 0 0 {name=l_mptg sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 430 -470 2 0 {name=l_mptb sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/pfet_01v8.sym} 330 -310 0 0 {name=MP1
L=1 W=4 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 350 -340 1 0 {name=l_mp1s sig_type=std_logic lab=tail}
C {devices/lab_pin.sym} 350 -280 3 0 {name=l_mp1d sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 550 -310 2 0 {name=l_mp1g sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 350 -310 2 0 {name=l_mp1b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/pfet_01v8.sym} 530 -310 0 1 {name=MP2
L=1 W=4 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 510 -340 1 0 {name=l_mp2s sig_type=std_logic lab=tail}
C {devices/lab_pin.sym} 510 -280 3 0 {name=l_mp2d sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 310 -310 0 0 {name=l_mp2g sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 510 -310 0 0 {name=l_mp2b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/nfet_01v8.sym} 330 -170 0 0 {name=MN1
L=1 W=1 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 350 -200 1 0 {name=l_mn1d sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 350 -140 3 0 {name=l_mn1s sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 310 -170 0 0 {name=l_mn1g sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 350 -170 2 0 {name=l_mn1b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} 530 -170 0 1 {name=MN2
L=1 W=1 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 510 -200 1 0 {name=l_mn2d sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 510 -140 3 0 {name=l_mn2s sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 550 -170 2 0 {name=l_mn2g sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 510 -170 0 0 {name=l_mn2b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 680 -420 0 0 {name=MP_LOAD
L=1 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 700 -450 1 0 {name=l_pld_s sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 700 -390 3 0 {name=l_pld_d sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 660 -420 0 0 {name=l_pld_g sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 700 -420 2 0 {name=l_pld_b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/nfet_01v8.sym} 680 -260 0 0 {name=MN_GAIN
L=0.5 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 700 -290 1 0 {name=l_mng_d sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 700 -230 3 0 {name=l_mng_s sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 660 -260 0 0 {name=l_mng_g sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 700 -260 2 0 {name=l_mng_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 860 -420 0 0 {name=MP_INV1
L=0.15 W=1 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 880 -450 1 0 {name=l_pi1s sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 880 -390 3 0 {name=l_pi1d sig_type=std_logic lab=cb}
C {devices/lab_pin.sym} 840 -420 0 0 {name=l_pi1g sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 880 -420 2 0 {name=l_pi1b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/nfet_01v8.sym} 860 -260 0 0 {name=MN_INV1
L=0.15 W=0.5 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 880 -290 1 0 {name=l_ni1d sig_type=std_logic lab=cb}
C {devices/lab_pin.sym} 880 -230 3 0 {name=l_ni1s sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 840 -260 0 0 {name=l_ni1g sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 880 -260 2 0 {name=l_ni1b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 1020 -420 0 0 {name=MP_INV2
L=0.15 W=2 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 1040 -450 1 0 {name=l_pi2s sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1040 -390 3 0 {name=l_pi2d sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1000 -420 0 0 {name=l_pi2g sig_type=std_logic lab=cb}
C {devices/lab_pin.sym} 1040 -420 2 0 {name=l_pi2b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/nfet_01v8.sym} 1020 -260 0 0 {name=MN_INV2
L=0.15 W=1 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 1040 -290 1 0 {name=l_ni2d sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1040 -230 3 0 {name=l_ni2s sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1000 -260 0 0 {name=l_ni2g sig_type=std_logic lab=cb}
C {devices/lab_pin.sym} 1040 -260 2 0 {name=l_ni2b sig_type=std_logic lab=VGND}
