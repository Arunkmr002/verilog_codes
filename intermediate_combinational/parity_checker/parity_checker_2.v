module parity_checker (
input [3:0]d,
input p,
input mode,
output reg error);

reg parity_check;

always @(*) begin


parity_check = ( d[3] ^ d[2] ^ d[1] ^ d[0] ^ p ) ;

error = (mode == 1'b0) ? parity_check : ~(parity_check);

end

endmodule
