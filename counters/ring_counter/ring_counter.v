module ring_counter(
input clk,
input rst,
output reg [3:0]q);

always@(posedge clk) begin
if(rst)
  q <= 4'b1000;
else if (q == 4'd5)
  q <= 4'd0;
else 
  q <= {q[0],q[3:1]};
end
endmodule
