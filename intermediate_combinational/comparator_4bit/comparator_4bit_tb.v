module comparator_4_bit_tb;
reg [3:0]a,b;
wire l,e,g;
integer i,j;
comparator_4_bit dut (.a(a),.b(b),.l(l),.e(e),.g(g));
initial begin
$dumpfile ("wave.vcd");
$dumpvars(0, comparator_4_bit_tb);
$display("A B | L E G");
$monitor ("%b %b |%b %b %b",a,b,l,e,g);
for (i=0;i<16;i=i+1) begin
a = i;
for (j=0;j<16;j=j+1) begin
b = j;
#10;
end
end
$finish;
end
endmodule
