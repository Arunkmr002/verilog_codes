module full_sub(a,b,bin,d,bo);
input a,b,bin;
output d,bo;
assign d=a^b^bin;
assign bo=~(a)&b|bin & ~(a^b);
endmodule
