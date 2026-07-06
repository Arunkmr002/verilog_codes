module bidirection_shift_reg (
input clk,
input rst,
input dir,
input si_left,
input si_right,
output reg [3:0]q);

always@(posedge clk) begin
if(rst) 
   q <=4'b0000;
else if (dir)
   q <= {q[2:0],si_left};
else
   q <= {si_right,q[3:1]};
end
endmodule
