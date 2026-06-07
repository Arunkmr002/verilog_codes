module decoder2to4 (
input [1:0]a,
output [3:0] y);
wire d,e;
not g1(d,a[0]);
not g2(e,a[1]);
and g3(y[0],d,e);
and g4(y[1],a[0],e);
and g5(y[2],d,a[1]);
and g6(y[3],a[0],a[1]);
endmodule
