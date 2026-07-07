module ring_counter_tb;
reg clk;
reg rst;
wire [3:0]q;

ring_counter dut (.clk(clk),.rst(rst),.q(q));
initial begin
clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,ring_counter_tb);
$monitor("time=%0t clk=%b rst=%b | q=%b",$time,clk,rst,q);

#5;
rst=1;
#10;

rst=0;
#10;

#50;

$finish;
end
endmodule
