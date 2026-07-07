module down_counter(
input clk,
input rst,
output reg [3:0]q);

always@(posedge clk) begin
if(rst)
    q <= 4'b1111;
else
    q <= q-1'b1;
end
endmodule
