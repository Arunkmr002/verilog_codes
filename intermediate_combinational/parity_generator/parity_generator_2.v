module parity_generator(
input [3:0] d,
output reg odd_parity,
output reg even_parity);

always@(*) begin
even_parity = (d[3]^d[2]^d[1]^d[0]);
odd_parity = ~(d[3]^d[2]^d[1]^d[0]);

end
endmodule
