module full_adder(a,b,cin,s,co);
input a,b,cin;
output s,co;
wire x,y,z;
xor g1(x,a,b);
xor g2(s,x,cin);
and g3(y,x,cin);
and g4(z,a,b);
or g5(co,y,z);
endmodule
