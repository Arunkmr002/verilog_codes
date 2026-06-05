module demux1to4(
input a,s0,s1,
output reg w,x,y,z);
always@(*)begin
w=~s0&~s1&a;
x=~s0&s1&a;
y=s0&~s1&a;
z=s0&s1&a;
end
endmodule
