module sr_latch (
input s,r,
output q,not_q);

assign  q = ~(r|(not_q));
assign not_q = ~(s|q);

endmodule
