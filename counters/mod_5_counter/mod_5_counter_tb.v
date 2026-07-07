module mod_5counter_tb;
reg clk;
reg rst;
wire [2:0]q;


mod_5counter dut (.clk(clk),.rst(rst),.q(q));
initial begin 
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,mod_5counter_tb);
$monitor("time=%0t clk=%b rst=%b| q=%b",$time,clk,rst,q);

#5;
rst=1;
#11;

rst=0;
#10;

#80;
rst=1;
#10;

$finish;
end
endmodule
