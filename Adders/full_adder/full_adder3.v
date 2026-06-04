module full_adder(a,b,cin,s,co);
input a,b,cin;
output reg s,co;
always@(*)begin s=a^b^cin;
co=a&b|cin&(a^b);
end
endmodule
