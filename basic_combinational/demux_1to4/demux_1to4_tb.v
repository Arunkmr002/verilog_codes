module demux1to4_tb ;
reg a,s0,s1;
wire w,x,y,z;
integer i;
demux1to4 dut (.a(a),.s0(s0),.s1(s1),.w(w),.x(x),.y(y),.z(z));
initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,demux1to4_tb);
$display("A S0 S1|W X Y Z");
$monitor("%b %b %b|%b %b %b %b",a,s0,s1,w,x,y,z);
for(i=0;i<4;i=i+1)begin
 {s0,s1}=i;
 a=0;#10;
 a=1;#10;
end
$finish;
end
endmodule
