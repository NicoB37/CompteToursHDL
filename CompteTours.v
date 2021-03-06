module CompteTours (Pico, Clk, LEDG, LEDR);

input Pico, Clk;

output [7:0] LEDG;
output [9:0] LEDR;

wire Clkout;
wire [8:0] QSignal;

DivFreq#(50000000, 25000000, 0, 32) DiviseurFrequence (Clk, Clkout);
CntMem CompteurRAZAMemoire (Clkout, Pico, QSignal);
TranscoLeds#(1)TranscodeurLeds (QSignal, LEDG, LEDR);

endmodule

