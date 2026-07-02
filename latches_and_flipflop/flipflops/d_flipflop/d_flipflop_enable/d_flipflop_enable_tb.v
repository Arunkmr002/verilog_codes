module d_ff_enable_tb;
reg clk;
reg enable;
reg d;
wire q;
wire not_q;

d_ff_enable dut (.clk(clk),.enable(enable),.d(d),.q(q),.not_q(not_q));
initial begin 
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,d_ff_enable_tb);
$monitor ("time=%0t clk=%b enable=%b  d=%b q=%b not_q=%b",$time,clk,enable,d,q,not_q);

#5;
enable = 1;
d      = 0;
#10;

enable = 0;
d      = 0;
#10;

enable = 0;
d      = 1;
#10;

enable = 1;
d      = 1;
#10;

enable = 1;
d      = 0;
#10;

enable = 0;
d      = 1;
#10;

enable = 1;
d      = 1;
#10;

$finish;
end
endmodule
