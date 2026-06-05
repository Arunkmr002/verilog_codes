module demux1to2 (
input a,s,
output y,z);
wire x;
not g1(x,s);
and g2(y,x,a);
and g3(z,s,a);
endmodule
