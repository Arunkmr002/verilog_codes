module reg_8bit_tb;
reg clk;
reg rst;
reg [7:0] d;
wire [7:0] q;

integer i;

reg_8bit dut (.clk(clk),.rst(rst),.d(d),.q(q));
initial begin
 clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,reg_8bit_tb);
$monitor ("time=%0t clk=%b rst=%b d=%b q=%b",$time,clk,rst,d,q);

#5;
rst = 1;
d   = 0;
#10;

rst = 0;
#1;
for (i=0;i<256;i=i+1) begin
	d = i;
#10;
end

rst = 1;
#10;

$finish;
end
endmodule
