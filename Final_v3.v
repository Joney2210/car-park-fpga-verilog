module Final_v3(P, clk, D0, D1, f, u, l0, l1);

input [17:0] P;
input clk;
output [6:0] D0, D1;
output reg [6:0] f, u, l0, l1;

wire full;
wire [7:0] w;

clkdiv (clk, w[0]);

//left
ShiftReg (clk, P[8:0], 0, w[1]);
LimCount (clk, w[2]);
FSM_v1 (w[2], w[1], w[3]);
fourbitCounter(w[3], w[0], w[4]);
sevenD (w[4], D0[6:0]);

//right
ShiftReg (clk, P[17:9], 0, w[5]);
FSM_v1 (w[2], w[5], w[6]);
fourbitCounter(w[6], w[0], w[7]);
sevenD (w[7], D1[6:0]);

//full
assign full = P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0];

always @(full)
	if(full == 1)
		f = 7'b1000111;
	else
		f = 7'b0000000;

always @(full)
	if(full == 1)
		u = 7'b0111110;	
	else
		u = 7'b0000000;
		
always @(full)
	if(full == 1)
		l0 = 7'b0001110;
	else
		l0 = 7'b0000000;
		
always @(full)
	if(full == 1)
		l1 = 7'b0001110;
	else
		l1 = 7'b0000000;
		
endmodule
		


