module t_flipflop_tb;
reg clk;
reg rst;
reg t;
wire q;
wire not_q;

t_flipflop dut (.clk(clk),.rst(rst),.t(t),.q(q),.not_q(not_q));
initial begin
 clk = 0;
forever #5 clk = ~clk ;
end

initial begin 
$dumpfile("wave.vcd");
$dumpvars (0,t_flipflop_tb);
$monitor ("time=%0t clk=%b rst=%b t=%b |q=%b not_q=%b",$time,clk,rst,t,q,not_q);

#5;
rst = 1;
t   = 0;
#10;

rst = 0;
t   = 0;
#10;

t = 1;
#10;

t = 1;
#10;

t = 1;
#10;

t = 0;
#10;

rst = 1;
#10;

rst = 0;
t   = 1;
#10;

$finish;
end
endmodule
