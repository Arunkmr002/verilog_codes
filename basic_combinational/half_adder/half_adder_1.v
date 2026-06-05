module half_adder(a,b,s,co);
input a,b;
output s,co;
xor g1(s,a,b);
and g2(co,a,b);
endmodule
