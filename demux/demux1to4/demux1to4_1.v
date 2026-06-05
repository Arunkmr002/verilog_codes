module demux1to4 (
input a,s0,s1,
output w,x,y,z);
wire h,i,j,k;
not g1(h,s0);
not g2(i,s1);
and g3(w,h,i,a);
and g4(x,h,s1,a);
and g5(y,s0,i,a);
and g6(z,s0,s1,a);
endmodule
