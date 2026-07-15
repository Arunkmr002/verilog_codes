module mealy_fsm(
input clk,
input rst,
input in,
output reg out,
output [1:0] state_dbg);

reg [1:0]state,next_state;

parameter s0 = 2'b00,
          s1 = 2'b01,
          s2 = 2'b10,
          s3 = 2'b11;

assign state_dbg = state;

//state reg
always@(posedge clk or posedge rst)begin
if(rst)
      state <= s0;
else 
      state <= next_state;
end

//nxt state reg
always@(*)begin
 case(state)
	 s0 : next_state = in ? s1 : s0;
         s1 : next_state = in ? s2 : s1;
         s2 : next_state = in ? s3 : s2;
         s3 : next_state = in ? s0 : s3;
	 default : next_state = s0;
   endcase
  end

  //output logic
always@(*)begin
  case(state)
	  s0 : out = 1'b0;
	  s1 : out = 1'b0;
	  s2 : out = 1'b0;
	  s3 : out = in ? 1'b1: 1'b0;
	  default : out = 1'b0;
   endcase
  end
endmodule
