module full_sub(a,b,bin,d,bo);
input a,b,bin;
output d,bo;
wire x,y,z,e,f;
xor g1(x,a,b);
xor g2(d,x,bin);
not g3(e,a);
and g4(y,e,b);
not g5(f,x);
and g6(z,bin,f);
or g7(bo,y,z);
endmodule
