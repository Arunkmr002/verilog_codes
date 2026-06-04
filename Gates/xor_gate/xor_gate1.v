module xor_gate(a,b,y);
input a,b;
output y;
wire x;
xor g1(y,a,b);
endmodule
