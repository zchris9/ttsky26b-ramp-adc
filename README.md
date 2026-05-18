![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# tt_um_ramp_adc — 2-channel 8-bit single-slope ADC

A Tiny Tapeout sky130A analog project: a 2-channel, 8-bit single-slope
analog-to-digital converter. The selected analog input is compared
against an on-chip linear ramp; the 8-bit count at the moment the ramp
crosses the input is the output code.

- **Inputs**: 2 analog channels on `ua[0]`/`ua[1]`, recommended range 0 – ~1.0 V
- **Output**: 8-bit code on `uo_out[7:0]`, validated by `uio_out[0]`
- **Clock**: ~4 MHz recommended → 64 µs conversion, ~16 kSPS per channel
- **Architecture**: bias gen, ramp gen, 2:1 analog mux, sample-and-hold (with bypass),
  PMOS-input comparator, LibreLane-synthesized digital controller

See [docs/info.md](docs/info.md) for full pinout, testing instructions, and
the explanation of why the usable input range is 0 – ~1.0 V (PMOS-input
common-mode limit).

## Repository layout

```
docs/info.md   chip datasheet
gds/           final GDS output
lef/           final LEF output
librelane/     LibreLane config for synthesizing the digital macro
mag/           magic layout files for each block and the top level
xschem/        schematics (each block + top-level)
src/project.v  TT blackbox stub (top module pin list)
verilog/       digital RTL (digital.v) and testbench
info.yaml      TT submission metadata
```
