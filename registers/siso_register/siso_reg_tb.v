module siso_reg_tb;
reg clk;
reg rst;
reg si;
wire so;

siso_reg dut (.clk(clk),.rst(rst),.si(si),.so(so));
initial begin 
 clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,siso_reg_tb);
$monitor("time=%0t clk=%b rst=%b si=%b |so=%b",$time,clk,rst,si,so);

#5;
rst=1;
si=0;
#10;

rst=0;
si=1'b1;
#10;

si=1'b1;
#10;

si=1'b0;
#10;

si=1'b1;
#10;

si=1'b0;
#10;

#20;

rst=1;
si=1'b1;
#10;


$finish;
end
endmodule
