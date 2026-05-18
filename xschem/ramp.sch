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
T {Ramp generator
MP_RAMP : PMOS current source biased by vbp, W=0.5 L=100 (~7 nA at Vsg=1.2)
C_RAMP  : MIM cap, W=22 L=22 (~1 pF)
MN_RST  : NMOS reset switch, gate=rst_ramp
When rst_ramp=1, vramp pulled to VGND.
When rst_ramp=0, MP_RAMP charges C_RAMP linearly to VDPWR.} 50 -680 0 0 0.4 0.4 {}
C {devices/iopin.sym} 300 -210 2 0 {name=p1 lab=VDPWR}
C {devices/iopin.sym} 300 -170 2 0 {name=p2 lab=VGND}
C {devices/ipin.sym} 300 -290 0 0 {name=p3 lab=vbp}
C {devices/ipin.sym} 300 -250 0 0 {name=p4 lab=rst_ramp}
C {devices/opin.sym} 710 -230 0 0 {name=p5 lab=vramp}
C {sky130_fd_pr/pfet_01v8.sym} 450 -360 0 0 {name=MP_RAMP
L=100 W=0.5 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 470 -390 1 0 {name=l_mpramp_s sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 470 -330 3 0 {name=l_mpramp_d sig_type=std_logic lab=vramp}
C {devices/lab_pin.sym} 430 -360 0 0 {name=l_mpramp_g sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 470 -360 2 0 {name=l_mpramp_b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/nfet_01v8.sym} 450 -130 0 0 {name=MN_RST
L=0.15 W=1 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=nfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 470 -160 1 0 {name=l_mnrst_d sig_type=std_logic lab=vramp}
C {devices/lab_pin.sym} 470 -100 3 0 {name=l_mnrst_s sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 430 -130 0 0 {name=l_mnrst_g sig_type=std_logic lab=rst_ramp}
C {devices/lab_pin.sym} 470 -130 2 0 {name=l_mnrst_b sig_type=std_logic lab=VGND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 630 -130 0 0 {name=C_RAMP
model=cap_mim_m3_1
W=22 L=22 MF=1
spiceprefix=X}
C {devices/lab_pin.sym} 630 -160 1 0 {name=l_cramp_t sig_type=std_logic lab=vramp}
C {devices/lab_pin.sym} 630 -100 3 0 {name=l_cramp_b sig_type=std_logic lab=VGND}
