module CntMem (Clk, Rpm, Q);

input Clk, Rpm;

output [8:0] Q;

wire [8:0] QByte;

CntNBits#(9,300)Compteur(Rpm, Clk, QByte);
Mem Memoire(Clk, QByte, Q);

endmodule
