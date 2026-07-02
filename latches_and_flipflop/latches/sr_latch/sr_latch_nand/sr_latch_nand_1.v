module sr_latch_nand (
input s,r,
output q,not_q
);

assign q     = ~(s & not_q);

assign not_q = ~(r & q);

endmodule
