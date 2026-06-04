module half_sub(a,b,d,bo);
input a,b;
output d,bo;
wire d,bo,y;
xor g1(d,a,b);
not g2(y,a);
and g3(bo,y,b);
endmodule
