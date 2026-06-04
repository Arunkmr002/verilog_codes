module nand_gate(a,b,y);
input a,b;
output y;
wire y;
nand g1(y,a,b);
endmodule
