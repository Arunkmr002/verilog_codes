module  d_ff_enable(
input clk,
input enable,
input d,
output reg q,
output not_q);

always@(posedge clk) begin
if (enable) begin
   case (d)
        1'b0 : q <= 1'b0;
        1'b1 : q <= 1'b1;
     default : q <= 1'b0;
   endcase
end
else begin
   q <= q;
  end
end

assign not_q = ~q;

endmodule
