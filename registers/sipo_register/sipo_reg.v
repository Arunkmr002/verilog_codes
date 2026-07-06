module sipo_reg(
input clk,
input rst,
input si,
output [3:0]po);

reg [3:0] q;

always@(posedge clk) begin
if (rst)
    q <= 4'b0000;
else begin
    q[3] <= si;
    q[2] <= q[3];
    q[1] <= q[2];
    q[0] <= q[1];
end
end

assign po = {q[3],q[2],q[1],q[0]};

endmodule
