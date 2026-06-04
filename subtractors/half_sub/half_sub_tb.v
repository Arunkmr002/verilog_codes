module half_sub_tb;
reg a,b;
wire d,bo;
half_sub dut(.a(a),.b(b),.d(d),.bo(bo));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,half_sub_tb);
$display("A B|D Bo");
$monitor("%b %b|%b %b",a,b,d,bo);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
