module mux4to1 (a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;
wire e,f,g,h;
and g1(e,~s0,~s1,a);
and g2(f,s0,~s1,b);
and g3(g,~s0,s1,c);
and g4(h,s0,s1,d);
or g5(y,e,f,g,h);
endmodule
