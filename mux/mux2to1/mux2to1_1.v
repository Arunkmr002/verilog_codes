module mux2to1 (s,i0,i1,y);
input s,i0,i1;
output y;
wire u,v,w,x,y;
not g1(u,s);
and g2(v,u,i0);
and g3(w,s,i1);
or g4(y,v,w);
endmodule
