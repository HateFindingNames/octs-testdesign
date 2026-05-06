# Digital Flip-Flop Chain

## Basic idea

A toggleish flip-flop divides frequency by 2:

- input clock = `f`
- output clock = `f/2`

Chaining them gives:

```
RO -> buffer -> DFF1 -> DFF2 -> DFF3 -> DFF4
                /2      /4      /8      /16
```

## T-Flipflop


Compiling/synthesizing the ``tff`` module, inside ``octs_testdesign/digital/tff`` do:
```sh
librelane config.yaml
```

## RTL-level Simulation 

Simulating the testbench using ``iverilog``:
```sh
iverilog -g2012 -o srv/tff_tb.out srv/tff.sv srv/tff_tb.sv
```

> [!IMPORTANT]
> The option ``-g2012`` tells ``iverilog`` to read the input file as SystemVerilog.

This produces the files ``tff_tb.out`` and ``tff_tb.vcd`` inside ``src/`` and prints something like a truth table to the terminal. Viewing the waveforms with ``GTKWave``:
```sh
gtkwave src/tff_tb.vcd
```

![[assets/waveform.png]]
Looks good!

## Simulation/Integration in ``xschem``

An ``xschem`` symbol is made from the generated ``.spice`` file found inside the ``runs/RUN_*/final/spice/`` dir. The testbench, symbol and ``.spice`` file are found inside ``xschem/``.