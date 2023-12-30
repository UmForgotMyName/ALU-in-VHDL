This is a fully functional Arithmetic Logic Unit coded in VHDL completed during F23 in Digital Systems Design
This project could not have been completed without the help of my group members: Hasan Ahmad, Aalyan Alam and Uzair Ali.

Below is the constraint file to map the ALU to a Xilinx Nexys 3 FPGA board.
 
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

Input B is a 4 bit vector which is assigned to the switches from T10 to M8 (Left from right)
Input A is a 4 bit vector which is assigned to the switches from N8 to T5 (Left from right)
S0, S1 and S2 are the selection switches and they are ordered respectfully as D9, B8, C4

segs is a vector which represents the 7 segment display and as such, its mappings identify to the 7 different segments of the digit

Cin is the carry in and is mapped to button C9, Cout is the carry out and is represented by the led at T11s