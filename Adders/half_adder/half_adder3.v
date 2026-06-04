module half_adder(a,b,s,co);
input a,b;
output reg s,co;
always @ (*) begin s=a^b;
co=a&b;
end
endmodule
