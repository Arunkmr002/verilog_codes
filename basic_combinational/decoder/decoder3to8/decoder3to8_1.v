module decoder3to8(
input [2:0]a,
output [7:0]y);
wire d,e,f;
not g1(d,a[2]);
not g2(e,a[1]);
not g3(f,a[0]);
and g4(y[0],d,e,f);
and g5(y[1],d,e,a[0]);
and g6(y[2],d,a[1],f);
and g7(y[3],d,a[1],a[0]);
and g8(y[4],a[2],e,f);
and g9(y[5],a[2],e,a[0]);
and g10(y[6],a[2],a[1],f);
and g11(y[7],a[2],a[1],a[0]);
endmodule
