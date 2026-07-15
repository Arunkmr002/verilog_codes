module sequence_detector_101(
input clk,
input rst,
input in,
output reg out,
output [1:0]state_dbg);

parameter s0 = 2'b00,
          s1 = 2'b01,
          s2 = 2'b10;

reg [1:0]state,next_state;

assign state_dbg = state;

//state reg
always@(posedge clk or posedge rst)begin
if(rst)
	state <= s0;
else
state <= next_state;
end	

//nxt state
always@(*)begin
 case(state)
      s0 : next_state = in ? s1 : s0;
      s1 : next_state = in ? s1 : s2;
      s2 : next_state = in ? s0 : s0;
 default : next_state = s0;
 endcase
end


always@(*)begin
case(state)
      s2 : out = in ? 1'b1 : 1'b0;
 default : out = 1'b0;
endcase
end
endmodule
