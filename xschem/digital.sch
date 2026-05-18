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
T {Digital control block (placeholder schematic)
Real implementation lives in verilog/digital_synth.v
This stub exposes pins only, so xschem can netlist sslope_adc.sch
with 'digital' as a black-box subckt. The actual SPICE definition is
included from a wrapper around the synthesized Verilog.} -200 -700 0 0 0.4 0.4 {}
C {devices/iopin.sym} -180 -480 0 0 {name=p1 lab=VDPWR}
C {devices/iopin.sym} -180 -440 0 0 {name=p2 lab=VGND}
C {devices/ipin.sym} -180 -400 0 0 {name=p3 lab=clk}
C {devices/ipin.sym} -180 -360 0 0 {name=p4 lab=rst_n}
C {devices/ipin.sym} -180 -320 0 0 {name=p5 lab=cmp_out}
C {devices/opin.sym} -180 -280 0 0 {name=p6 lab=rst_ramp}
C {devices/opin.sym} -180 -240 0 0 {name=p7 lab=sample_valid}
C {devices/opin.sym} -180 -200 0 0 {name=p8 lab=code0}
C {devices/opin.sym} -180 -160 0 0 {name=p9 lab=code1}
C {devices/opin.sym} -180 -120 0 0 {name=p10 lab=code2}
C {devices/opin.sym} -180 -80 0 0 {name=p11 lab=code3}
C {devices/opin.sym} -180 -40 0 0 {name=p12 lab=code4}
C {devices/opin.sym} -180 0 0 0 {name=p13 lab=code5}
C {devices/opin.sym} -180 40 0 0 {name=p14 lab=code6}
C {devices/opin.sym} -180 80 0 0 {name=p15 lab=code7}
