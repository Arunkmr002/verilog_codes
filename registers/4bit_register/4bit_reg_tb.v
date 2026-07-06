module reg_4bit_tb;
reg clk;
reg rst;
reg [3:0]d;
wire [3:0]q;

reg_4bit dut (.clk(clk),.rst(rst),.d(d),.q(q));
initial begin
 clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,reg_4bit_tb);
$monitor ("time=%0t clk=%b rst=%b d=%b q=%b",$time,clk,rst,d,q);
#5;
rst = 1;
d   = 0;
#10;

rst = 0;
d   = 0;
#10;

d = 4'd15;
#10;

d = 4'd9;
#10;

d = 4'd4;
#10;

rst = 1;
#10;


$finish;
end
endmodule
