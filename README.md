# ASK-modulator
-->Design and simulation of ASK Generation System In Verilog

        This project implements an Amplitude Shift Keying (ASK) Modulation System using Verilog HDL.
ASK is a digital modulation technique where the amplitude of a carrier signal is varied according to the digital input data. This design simulates the process of modulating a high-frequency carrier with a binary data stream.

-->Design Description

1.Carrier Generator:Generates a square-wave carrier signal using a clock divider.

2.Data Input:Binary input stream (e.g., from a pattern generator).

3.ASK Modulator:Multiplies (ANDs) the carrier with the data to produce the ASK signal.

"The output is high-amplitude carrier when data = 1, and zero when data = 0".

-->For simulation:
Use ModelSim, Vivado, or any Verilog simulator.
Run the provided testbench ask_modulator_tb.v




