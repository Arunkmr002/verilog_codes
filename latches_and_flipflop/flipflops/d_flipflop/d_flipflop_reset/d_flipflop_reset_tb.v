module d_flipflop_tb;
reg clk;
reg rst;
reg d;
wire q;
wire not_q;

integer i;

d_flipflop dut (.clk(clk),.rst(rst),.d(d),.q(q),.not_q(not_q));
initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,d_flipflop_tb);
$monitor ("time=%0t clk=%b rst=%b d=%b | q=%b not_q=%b",$time,clk,rst,d,q,not_q);

rst=0;
d  =0;

for (i=0;i<4;i=i+1) begin
     {rst,d} = i;
#10;
end
$finish;
end
endmodule
