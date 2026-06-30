module basic_alu(
input [3:0] a,b,
input [2:0] sel,
output reg [3:0] y,
output reg carry);

always@(*) begin
    case(sel)
         3'b000: 
	        begin 
	         {carry,y} = a + b;
                end
         3'b001:
	        begin
	         {carry,y} = a - b;
                end
         3'b010:
	        begin 
	         {carry,y} = {1'b0, a & b};
	        end
         3'b011:
	        begin
		 {carry,y} = {1'b0,a | b};
	        end
         3'b100:
	        begin
		 {carry,y} = {1,b0,~ a};
		end
         3'b101: 
		 begin 
		  {carry,y} = {1'b0,a ^ b};
		 end
         3'b110: 
		 begin
	          {carry,y} = {a[3],a << 1};
	         end
         3'b111: 
		 begin 
		  {carry,y} = {a[0],a >> 1};
		 end
         default :
		  begin
		   {carry,y} = 5'b00000;
	          end
     endcase
   end
endmodule
