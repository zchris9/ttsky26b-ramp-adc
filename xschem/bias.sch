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
T {Resistor-referenced PMOS bias generator
MP_REF: diode-connected PMOS, sized like MP_TAIL (W=4, L=2)
R_REF : res_xhigh_po_0p35 (~2 kohm/sq), L=31.5 -> ~180 kohm
Vbp = VDPWR - Vsg(MP_REF), Iref ~ 3.5 uA at VDPWR=1.8V} 40 -590 0 0 0.4 0.4 {}
C {devices/iopin.sym} 200 -270 2 0 {name=p1 lab=VDPWR}
C {devices/iopin.sym} 200 -230 2 0 {name=p2 lab=VGND}
C {devices/opin.sym} 440 -250 0 0 {name=p3 lab=vbp}
C {sky130_fd_pr/pfet_01v8.sym} 310 -340 0 0 {name=MP_REF
L=2 W=4 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'" sa=0 sb=0 sd=0
model=pfet_01v8 spiceprefix=X}
C {devices/lab_pin.sym} 330 -370 1 0 {name=l_mpref_s sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 330 -310 3 0 {name=l_mpref_d sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 290 -340 0 0 {name=l_mpref_g sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 330 -340 2 0 {name=l_mpref_b sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 330 -170 0 0 {name=R_REF
L=31.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 330 -200 1 0 {name=l_rref_t sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 330 -140 3 0 {name=l_rref_b sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 310 -170 0 0 {name=l_rref_bulk sig_type=std_logic lab=VGND}
