module full_sub(a,b,bin,d,bo);
input a,b,bin;
output reg d,bo;
always@(*)begin d=a^b^bin;
bo=~(a)&b|bin & ~(a^b);
end
endmodule
