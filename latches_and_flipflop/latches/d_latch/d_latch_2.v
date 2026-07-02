module d_latch (
input enable,d,
output reg q,
output not_q);

always @(*) begin
 
  case (enable) 
            1'b1 : q = d;
            1'b0 : q = q; //hold           
  endcase
  end

assign not_q = ~q;

endmodule
