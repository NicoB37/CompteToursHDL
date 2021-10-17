module CntNBits(Rpm, EN_RAZ, Q);

parameter BUS_SIZE = 9;
parameter modulo = 300;

input Rpm, EN_RAZ;

output [(BUS_SIZE-1):0] Q;
reg [(BUS_SIZE-1):0] Q;

always @(posedge(Rpm))
begin
	if (EN_RAZ == 1)
	begin
		if (Q < modulo)
		begin
			Q <= Q + 1;
		end
	end
	else
	begin
		Q <= 0;
	end
end

endmodule
