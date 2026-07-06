module siso_reg (
input clk,
input rst,
input si,
output so);

reg [3:0] q;

always@(posedge clk ) begin

if(rst)
   q <= 4'b0000;
else begin
   q[3] <= si;
   q[2] <= q[3];
   q[1] <= q[2];
   q[0] <= q[1];
end
end

assign so = q[0];

endmodule
