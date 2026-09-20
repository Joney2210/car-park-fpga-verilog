module ShiftReg(Clk, Parallel_In,load, Serial_Out);
input Clk,load;
input [8:0]Parallel_In;
output reg Serial_Out;
reg [8:0]tmp;

always @(posedge Clk)
begin
	if(load)
	tmp<=Parallel_In;
else
	begin
	Serial_Out<=tmp[8];
	tmp<={tmp[8:0],1'b0};
	end
end

endmodule
