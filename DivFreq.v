module DivFreq (Clkin, Clkout);

parameter NBT = 50000000;
parameter NBTON = 25000000;
parameter POLARITY = 0;
parameter BUS_SIZE = 32; // Choisir la taille du bus pour compter jusqu'à NBT

input Clkin;

output Clkout;

reg Clkout;
reg [(BUS_SIZE-1):0] Cnt;

always @(negedge(Clkin))
begin

	if (Cnt < NBT-1)
	begin
		Cnt <= Cnt + 1;
	end
	else
	begin
		Cnt <= 0;
	end
	
	if (Cnt < NBTON-1)
	begin
		Clkout <= POLARITY;
	end
	else
	begin
		Clkout <= ~POLARITY;
	end
	
end

endmodule
