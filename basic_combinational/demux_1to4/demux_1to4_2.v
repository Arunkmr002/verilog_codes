module demux1to4(
input a,s0,s1,
output wire w,x,y,z);
assign w=~s0&~s1&a;
assign x=~s0&s1&a;
assign y=s0&~s1&a;
assign z=s0&s1&a;
endmodule
