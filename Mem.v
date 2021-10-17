module Mem(Clk,Byte, Q);

input [8:0] Byte;
input Clk;

output [8:0] Q;
reg [8:0] Q;

always@(negedge(Clk))
begin
	Q <= Byte;
end

endmodule
