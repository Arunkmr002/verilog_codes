module even_odd_zero_detector(
input clk,
input rst,
input in,
output reg even,
output reg odd,
output reg zero,
output [1:0]state_dbg);

reg[1:0] state,next_state;

parameter  s_zero  = 2'b00,
            s_odd  = 2'b01,
	    s_even = 2'b10;

assign state_dbg = state;

always@(posedge clk or posedge rst)begin
if(rst)
  state <= s_zero;
else 
  state <= next_state;
end

always@(*)begin
case(state)
         s_zero : next_state = in ? s_zero : s_odd;
         s_odd  : next_state = in ? s_odd  : s_even;
	 s_even : next_state = in ? s_even : s_odd;
       default  : next_state = s_zero;
  endcase
end

always@(*)begin
case(state)
	s_zero : begin 
	     zero = 1'b1;
		   odd  = 1'b0;
		   even = 1'b0;
	         end
	s_odd  : begin
		  odd  = 1'b1;
		  even = 1'b0;
		  zero = 1'b0;
	         end
        s_even : begin 
	           even = 1'b1;
		         zero = 1'b0;
		         odd  = 1'b0;
	        end 
      default : begin
	         even = 1'b0;
           odd  = 1'b0;
		       zero = 1'b0;
                 end
 endcase
end
endmodule
