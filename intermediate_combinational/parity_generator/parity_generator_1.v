module parity_generator(
input [3:0] d,
output odd_parity,
output even_parity);

assign even_parity = (d[3]^d[2]^d[1]^d[0]);
assign odd_parity = ~(d[3]^d[2]^d[1]^d[0]);

endmodule
