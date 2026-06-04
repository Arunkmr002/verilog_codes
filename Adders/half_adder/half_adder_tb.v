module half_adder_tb;
reg a,b;
wire s,co;
half_adder dut (.a(a),.b(b),.s(s),.co(co));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,half_adder_tb);
$display("A B|S Co");
$monitor("%b %b|%b %b",a,b,s,co);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
