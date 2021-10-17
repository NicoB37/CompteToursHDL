module TranscoLeds (Signal, LEDG, LEDR);

parameter OUTPUT_POLARITY = 0;

input [8:0] Signal;

output [7:0] LEDG;
output [9:0] LEDR;

reg [7:0] iLEDG;
reg [9:0] iLEDR;

always @(Signal)
begin

	if(Signal>=16 && Signal<33)
	begin
		iLEDG <= 8'b10000000;
		iLEDR <= 10'b0000000000;
	end
	
	else if(Signal>=33 && Signal<49)
	begin
		iLEDG <= 8'b11000000;
		iLEDR <= 10'b0000000000;
	end
	
	else if(Signal>=49 && Signal<66)
	begin
		iLEDG <= 8'b11100000;
		iLEDR <= 10'b0000000000;
	end
	
	else if(Signal>=66 && Signal<82)
	begin
		iLEDG <= 8'b11110000;
		iLEDR <= 10'b0000000000;
	end
	
	else if(Signal>=82 && Signal<99)
	begin
		iLEDG <= 8'b11111000;
		iLEDR <= 10'b0000000000;
	end
	
	else if(Signal>=99 && Signal<115)
	begin
		iLEDG <= 8'b11111100;
		iLEDR <= 10'b0000000000;
	end
	
	else if(Signal>=115 && Signal<132)
	begin
		iLEDG <= 8'b11111110;
		iLEDR <= 10'b0000000000;
	end
	
	else if(Signal>=132 && Signal<149)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b0000000000;
	end
	
	else if(Signal>=149 && Signal<166)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1000000000;
	end
	
	else if(Signal>=166 && Signal<182)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1100000000;
	end
	
	else if(Signal>=182 && Signal<199)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1110000000;
	end
	
	else if(Signal>=199 && Signal<215)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1111000000;
	end
	
	else if(Signal>=215 && Signal<232)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1111100000;
	end
	
	else if(Signal>=232 && Signal<248)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1111110000;
	end
	
	else if(Signal>=248 && Signal<265)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1111111000;
	end
	
	else if(Signal>=265 && Signal<281)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1111111100;
	end
	
	else if(Signal>=281 && Signal<298)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1111111110;
	end
	
	else if(Signal>=298)
	begin
		iLEDG <= 8'b11111111;
		iLEDR <= 10'b1111111111;
	end
	
	else
	begin
		iLEDG <= 8'b00000000;
		iLEDR <= 10'b0000000000;
	end
end


assign LEDG = (OUTPUT_POLARITY==1)?iLEDG:~iLEDG;
assign LEDR = (OUTPUT_POLARITY==1)?iLEDR:~iLEDR;

endmodule
	