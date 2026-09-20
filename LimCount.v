module LimCount (clk,Q);
	input clk;
	output reg[3:0] Q;
	
	always @(posedge clk)begin
		if (Q==9) 
			Q<=4'b0;
		else 
			Q<=Q+1;
	end
endmodule