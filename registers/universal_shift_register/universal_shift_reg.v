module universal_shift_reg (
input clk,
input rst,
input [1:0] sel,
input si_right,
input si_left,
input [3:0] d,
output reg [3:0]q);

always @(posedge clk)begin
if(rst)
   q <= 4'b0000;
else begin
   case(sel)
          2'b00 : q <= q;
          2'b01 : q <= {si_right,q[3:1]};
          2'b10 : q <= {q[2:0],si_left};
          2'b11 : q <= d;
        default : q <= 4'b0000;
   endcase
end
end
endmodule
