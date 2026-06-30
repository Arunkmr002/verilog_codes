module basic_alu(
input [3:0] a,b,
input [2:0] sel,
output [3:0] y,
output  carry);



 assign  {carry,y} = (sel == 3'b000) ? a + b :
                     (sel == 3'b001) ? a - b :
	                   (sel == 3'b010) ? {1'b0,a & b} :
	                   (sel == 3'b011) ? {1'b0,a | b} :
	                   (sel == 3'b100) ? {1'b0,~ a} :
	                   (sel == 3'b101) ? {1'b0,a ^ b} :
	                   (sel == 3'b110) ? {a[3],a << 1} :
	                   (sel == 3'b111) ? {a[0],a >> 1} : 5'b00000 ;

 
endmodule
