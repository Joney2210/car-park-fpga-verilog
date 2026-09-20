module FSM_v1 (count,sr,a);

input sr;
input [3:0] count;
output reg a;

always@(*)
	if (count<=4'b1001)
			if (sr)
				a=sr;
				
			else 
				a=0;
	else if (count>4'b1001)
		a=0;
						
endmodule