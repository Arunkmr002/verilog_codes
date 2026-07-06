module bidirection_shift_reg_tb;
reg clk;
reg rst;
reg dir;
reg si_left;
reg si_right;
wire [3:0] q;

bidirection_shift_reg dut (.clk(clk),.rst(rst),.dir(dir),.si_left(si_left),.si_right(si_right),.q(q));
initial begin 
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,bidirection_shift_reg_tb);
$monitor("time=%0t clk=%b rst=%b dir=%b si_left=%b si_right=%b |q=%b",$time,clk,rst,dir,si_left,si_right,q);

#5;
rst      = 1;
dir      = 0;
si_left  = 0;
si_right = 0;

#10;

rst = 0;
dir = 0;
si_right = 1;
#10;

si_right = 0;
#10;

si_right = 1;
#10;

si_right = 1;
#10;

dir      = 1;
si_right = 0;
si_left  = 1;
#10;

si_left = 0;
#10;

si_left = 0;
#10;

si_left = 1;
#10;

rst     = 1;
si_left = 1;
#10;

$finish;
end
endmodule
