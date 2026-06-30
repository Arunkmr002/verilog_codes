module comparator_4_bit(
input [3:0]a,b,
output reg l,e,g);
always@(*) begin
       l = a < b;
       e = a == b;
	   g = a > b;
end
endmodule
