module clkdiv(clk_in, clk_out);
input clk_in;
output reg clk_out;

reg [27:0] counter=28'd0;
parameter Divisor = 28'd9;

always @(posedge clk_in)
begin	counter <= counter + 28'd1;
if (counter >=(Divisor-1))
	counter <= 28'd0;
clk_out <= (counter <Divisor/2)?1'b1:1'b0;
end
endmodule 

