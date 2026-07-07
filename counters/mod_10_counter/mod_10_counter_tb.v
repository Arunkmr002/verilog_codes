module mod_10counter_tb;
reg clk;
reg rst;
reg en;
wire [3:0] q;

mod_10counter dut (.clk(clk),.rst(rst),.en(en),.q(q));
initial begin
clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,mod_10counter_tb);
$monitor("time=%0t clk=%b rst=%b en=%b |q=%b",$time,clk,rst,en,q);

#5;
rst=1;
en=0;
#10;

rst=0;
#10;

en=1;
#10;

#100;
rst=1;
#10;

$finish;
end
endmodule
