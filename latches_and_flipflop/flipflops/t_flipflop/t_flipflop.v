module t_flipflop(
input clk,
input rst,
input t,
output reg q,
output not_q);

always@(posedge clk)begin
	if (rst)begin
	    q <= 0;
        end
	else begin
          case (t)
              1'b0 : q <= q;
              1'b1 : q <= ~q;
           default : q <= q;
          endcase
        end
    end

assign not_q  = ~q;

endmodule
