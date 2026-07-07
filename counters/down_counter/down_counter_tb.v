module down_counter_tb;
reg clk;
reg rst;
wire [3:0]q;


down_counter dut (.clk(clk),.rst(rst),.q(q));
initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,down_counter_tb);
$monitor("time=%0t clk=%b rst=%b |q=%b",$time,clk,rst,q);

#5;
rst=1;
#10;

rst=0;
#10;

#160;

$finish;
end
endmodule
