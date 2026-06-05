module mux2to1 (s,i0,i1,y);
input s,i0,i1;
output reg y;
always@(*)begin y=~s&i0|s&i1;
end
endmodule
