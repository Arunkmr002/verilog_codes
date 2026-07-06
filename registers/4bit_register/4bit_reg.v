module reg_4bit(
input clk,
input rst,
input [3:0] d,
output reg [3:0]q);

always@(posedge clk)begin
if(rst)
   q <= 0;
else 
   q <= d;
end
endmodule
