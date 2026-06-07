module encoder4to2 (
input a0,a1,a2,a3,
output y0,y1);
assign y0=a2|a3;
assign y1=a1|a3;
endmodule
