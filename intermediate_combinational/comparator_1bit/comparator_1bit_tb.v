module comparator_1_bit_tb;
reg a,b;
wire l,e,g;
integer i;
comparator_1_bit dut (.a(a),.b(b),.l(l),.e(e),.g(g));
initial begin 
$dumpfile ("wave.vcd");
$dumpvars (0,comparator_1_bit_tb);
$display("A    B   |  L     E      G");
$monitor("%b    %b   |   %b     %b      %b",a,b,l,e,g);
for (i=0;i<4;i=i+1)begin
      {a,b}=i;
#10;
end
$finish;
end
endmodule
