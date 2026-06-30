module odd_even_detector (
input [3:0]d,
output reg  even_detector,
output reg  odd_detector);

always@(*) begin

 even_detector = d[3] ^ d[2] ^ d[1] ^ d[0] ;

 odd_detector = ~(d[3] ^ d[2] ^ d[1] ^ d[0]) ;

end

endmodule
