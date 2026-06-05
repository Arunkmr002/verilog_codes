module full_sub_tb;
reg a,b,bin;
wire d,bo;
full_sub dut(.a(a),.b(b),.bin(bin),.d(d),.bo(bo));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,full_sub_tb);
$display("A B Bin|D Bo");
$monitor("%b %b %b|%b %b",a,b,bin,d,bo);
a=0;b=0;bin=0;#10;
a=0;b=0;bin=1;#10;
a=0;b=1;bin=0;#10;
a=0;b=1;bin=1;#10;
a=1;b=0;bin=0;#10;
a=1;b=0;bin=1;#10;
a=1;b=1;bin=0;#10;
a=1;b=1;bin=1;#10;
$finish;
end
endmodule
