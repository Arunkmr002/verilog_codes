module d_latch(
input d,enable,
output q,not_q);

assign q = ((enable) ? d : q);

assign not_q = ~q;

endmodule
