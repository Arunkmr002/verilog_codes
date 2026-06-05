module mux(s0,s1,a,b,c,d,y);
input s0,s1,a,b,c,d;
output reg y;
always@(*)begin y=~s0&~s1&a|~s0&s1&b|s0&~s1&c|s0&s1&d;
end
endmodule
