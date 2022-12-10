# Single Channel Function Generator
### Part of ECE544 Course (Embedded System Design using FPGAs) at Portland State University.
### Members: Atharva Lele, Mehul Shah, Ayush Srivastava

## Intro

This is a single channel function generator implemented on a Nexys A7 FPGA board.

### Features

- Single Channel Function Generator
- -1V to +1V output voltage range
- 100 Hz to 1 MHz output frequency range
- Waveform types: Sine, Square, Triangular
- 16-bit binary pattern generator

## Implementation Details

- Sine, Square, and Triangular waves generated from sampled waveforms stored in memory.
- 16-bit pattern input taken using slider switches on the Nexys A7 board.
- Function Generator functionality implemented in SystemVerilog.
    - Check out the ``func_gen.sv`` file for the implementation.
- Control software is a simple superloop based implementation for the MicroBlaze CPU software by Xilinx.
    - Check out the ``software`` directory for the implementation.

## Demo Video

Demo Video on YouTube - https://youtu.be/93lhy8NurQE
