# Arithmetic Logic Unit (ALU) Constraint File

This project was completed during F23 in Digital Systems Design. Special thanks to my group members: Hasan Ahmad, Aalyan Alam, and Uzair Ali.

## Constraint File for Xilinx Nexys 3 FPGA Board

```xdc
NET B(0) LOC = T10;
NET B(1) LOC = T9;
NET B(2) LOC = V9;
NET B(3) LOC = M8;
NET A(0) LOC = N8;
NET A(1) LOC = U8;
NET A(2) LOC = V8;
NET A(3) LOC = T5;
NET S0 LOC = D9;
NET S1 LOC = B8;
NET S2 LOC = C4;
NET Cin LOC = C9;
NET Cout LOC = T11;
NET segs(6) LOC = T17;
NET segs(5) LOC = T18;
NET segs(4) LOC = U17;
NET segs(3) LOC = U18;
NET segs(2) LOC = M14;
NET segs(1) LOC = N14;
NET segs(0) LOC = L14;

Cin is the carry in and is mapped to button C9, Cout is the carry out and is represented by the led at T11s
