module encoder8to3(
input [7:0]a,
output x,y,z);
or g1(x,a[4],a[5],a[6],a[7]);
or g2(y,a[2],a[3],a[6],a[7]);
or g3(z,a[1],a[3],a[5],a[7]);
endmodule
