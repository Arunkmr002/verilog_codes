module odd_even_detector (
input [3:0]d,
output even_detector,
output odd_detector);

assign even_detector = d[3] ^ d[2] ^ d[1] ^ d[0] ;

assign odd_detector = ~(d[3] ^ d[2] ^ d[1] ^ d[0]) ;

endmodule
