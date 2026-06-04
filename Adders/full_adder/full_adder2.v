module full_adder(a,b,cin,s,co);
input a,b,cin;
output wire s,co;
assign s=a^b^cin;
assign co=a&b|cin&(a^b);
endmodule
