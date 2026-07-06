module sipo_reg_tb;
reg clk;
reg rst;
reg si;
wire [3:0]po;

sipo_reg dut (.clk(clk),.rst(rst),.si(si),.po(po));
initial begin
 clk = 0;
forever #5 clk = ~clk;
end

initial begin 
$dumpfile("wave.vcd");
$dumpvars(0,sipo_reg_tb);
$monitor("time=%0t clk=%b rst=%b si=%b |po=%b",$time,clk,rst,si,po);

#5;
rst = 1;
si = 0;
#10;

rst = 0;
si = 0;
#10;

si = 1;
#10;

si = 0;
#10;

si = 1;
#10;

$finish;
end
endmodule
