module mux2to1_tb;
reg s,i0,i1;
wire y;
mux2to1 dut(.s(s),.i0(i0),.i1(i1),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,mux2to1_tb);
$display("S A B|Y");
$monitor("%b %b %b|%b",s,i0,i1,y);
s=0;i0=0;i1=0;#10;
s=0;i0=0;i1=1;#10;
s=0;i0=1;i1=0;#10;
s=0;i0=1;i1=1;#10;
s=1;i0=0;i1=0;#10;
s=1;i0=0;i1=1;#10;
s=1;i0=1;i1=0;#10;
s=1;i0=1;i1=1;#10;
$finish;
end
endmodule
