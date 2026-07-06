module pipo_reg_tb;
reg clk;
reg rst;
reg [3:0] pi;
wire [3:0] po;

pipo_reg dut (.clk(clk),.rst(rst),.pi(pi),.po(po));
initial begin
 clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,pipo_reg_tb);
$monitor ("time=%0t clk=%b rst=%b pi=%b | po=%b",$time,clk,rst,pi,po);

#5;
rst = 1;
pi = 4'b0000;
#10;

rst = 0;
pi = 4'b0111;
#10;

pi = 4'b1011;
#10;

pi =4'b1101;
#10;

rst = 1;
pi = 4'b1111;
#10;

$finish;
end
endmodule
