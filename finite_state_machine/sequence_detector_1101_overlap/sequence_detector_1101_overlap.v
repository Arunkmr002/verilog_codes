module sequence_detector_1101_overlap(
input clk,
input rst,
input in,
output reg out,
output [2:0]state_dbg);

parameter s0 = 3'b000,
          s1 = 3'b001,
          s2 = 3'b010,
          s3 = 3'b011,
          s4 = 3'b100;

reg[2:0]state,next_state;

assign state_dbg = state;

always@(posedge clk or posedge rst )begin
if(rst)
  state <=  s0;
else
  state <= next_state;
end

always@(*)begin
case(state)
          s0 : next_state = in ? s1 : s0;
          s1 : next_state = in ? s2 : s0;
          s2 : next_state = in ? s2 : s3;
          s3 : next_state = in ? s4 : s0;
          s4 : next_state = in ? s2 : s0;
     default : next_state = s0;
 endcase
end

always@(*)begin
case(state)
          s4 : out = in ? 1'b1 : 1'b0;
     default : out = 1'b0;
 endcase
end
endmodule
