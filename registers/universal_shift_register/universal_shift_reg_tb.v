module universal_shift_reg_tb;
reg clk;
reg rst; 
reg [1:0]sel;
reg si_right;
reg si_left;
reg [3:0]d;
wire [3:0] q;

universal_shift_reg dut (.clk(clk),.rst(rst),.sel(sel),.si_right(si_right),.si_left(si_left),.d(d),.q(q));
initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,universal_shift_reg_tb);
$monitor ("time=%0t clk=%b rst=%b sel=%b si_right=%b si_left=%b d=%b |q=%b",$time,clk,rst,sel,si_right,si_left,d,q);

#5;
rst=1;
sel=0;
si_right=0;
si_left=0;
d=4'b0000;
#10;

rst=0;
sel=2'b00;


#10;

sel=2'b01;
si_right=1;
#10;

si_right=0;
#10;

si_right=1;
#10;

si_right=0;
#10;

sel=2'b10;
si_left=1;
#10;

si_left=1;
#10;

si_left=0;
#10;

si_left=1;
#10;

sel=11;
d=4'b1110;
#10;

$finish;
end
endmodule
