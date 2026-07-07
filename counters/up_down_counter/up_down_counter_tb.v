module up_down_counter_tb;
reg clk;
reg rst;
reg up_down;
wire [3:0]q;

up_down_counter dut (.clk(clk),.rst(rst),.up_down(up_down),.q(q));
initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,up_down_counter_tb);
$monitor("time=%0t clk=%b rst=%b up_down=%b |q=%b",$time,clk,rst,up_down,q);

#5;
rst=1;
up_down=0;
#10;

rst=0;
up_down=1;
#10;

#160;
up_down=0;
#10;
#160;

$finish;
end
endmodule
