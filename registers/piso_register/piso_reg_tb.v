module piso_reg_tb;
reg clk;
reg rst;
reg load;
reg si;
reg [3:0]pi;
wire so;

piso_reg dut (.clk(clk),.rst(rst),.load(load),.pi(pi),.si(si),.so(so));
initial begin 
 clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,piso_reg_tb);
$monitor("time=%0t clk=%b rst=%b load=%b pi=%b si=%b | so=%b",$time,clk,rst,load,pi,si,so);

#5;
rst  = 1;
load = 0;
si   = 0;
pi   = 4'b0000;
#10;

rst  = 0;
load = 1'b1;
pi   = 4'b0101;
#10;

load = 0;
si = 0;
#10;

si = 1;
#10;
si = 0;
#10;
si = 1;
#10;

si = 0;
#10;

$finish;
end
endmodule
