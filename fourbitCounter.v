module fourbitCounter(clk,rst,Q);
	input clk,rst;
	output reg[3:0] Q;
	always @(posedge clk,negedge rst)
	begin
		if (~rst) 
			Q<=4'b0;
		else if (clk==1)
			Q<=Q+1;
		else if (clk==0)
			Q=Q;
	end
endmodule