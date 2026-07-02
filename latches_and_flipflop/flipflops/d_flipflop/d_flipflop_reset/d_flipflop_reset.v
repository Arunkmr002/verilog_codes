module d_flipflop (
input clk,rst,d,
output reg q,
output not_q);

always@(posedge clk ) begin 
      if (rst) begin 
          q     <= 0;
        end
      else begin  
       case (d)
           1'b0 : q <= d;
           1'b1 : q <= d;
        default : q <= q;
       endcase
  end 
end
assign not_q = ~q;

endmodule
