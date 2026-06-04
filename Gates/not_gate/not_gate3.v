module not_gate(a,y);
input a;
output reg y;
always@(*)begin y= ~a;
end
endmodule
