module comparator_1_bit(
input a,b,
output reg l,e,g);
always@(*) begin
l = ~a&b;
e = ~(a^b);
g = a&~b;
end
endmodule 
