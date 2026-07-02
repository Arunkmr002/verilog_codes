module master_slave_ff_tb;
reg clk;
reg rst;
reg d;
wire q;
wire not_q;

reg qm;
reg not_qm;

master_slave_ff dut (.clk(clk),.rst(rst),.d(d),.q(q),.not_q(not_q));

initial begin
 clk = 0;
forever #5 clk = ~clk;
end

initial begin 
$dumpfile("wave.vcd");
$dumpvars(0,master_slave_ff_tb);
$monitor ("time=%0t clk=%b rst=%b d=%b |qm=%b q=%b not_q=%b",$time,clk,rst,d,dut.qm,q,not_q);
 

#5;
rst = 1;
d   = 0;
#10;

rst = 0;
d   = 1;
#10;

d = 0;
#10;

rst = 1;
#10;

rst = 0;
#10;

$finish;
end
endmodule
