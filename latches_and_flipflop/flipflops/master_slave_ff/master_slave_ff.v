module master_slave_ff(
input clk,rst,d,
output reg q,
output not_q);

reg qm;
wire not_qm;

always@(posedge clk) begin
if (rst) begin
  qm <= 0;
end
else begin
   qm <= d;
end
end

assign not_qm = ~qm;

always@(negedge clk ) begin
if (rst) begin
  q <= 0;
end
else begin
  q <= qm;
end
end

assign not_q = ~q;

endmodule
