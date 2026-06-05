module mux4to1_tb;
reg s0,s1,a,b,c,d;
wire y;
integer i,j;
mux4to1 dut(.s0(s0),.s1(s1),.a(a),.b(b),.c(c),.d(d),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,mux4to1_tb);
$display("S0 S1 A B C D|Y");
$monitor("%b %b %b %b %b %b|%b",s0,s1,a,b,c,d,y);
for (i=0;i<4;i=i+1)begin
{s1,s0}=i;
for (j=0;j<16;j=j+1)begin
{a,b,c,d}=j;#10;
end
end
$finish;
end
endmodule
