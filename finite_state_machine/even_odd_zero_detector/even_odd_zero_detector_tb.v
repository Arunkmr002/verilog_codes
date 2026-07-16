module even_odd_zero_detector_tb;
reg clk;
reg rst;
reg in;
wire even;
wire odd;
wire zero;
wire [1:0]state_dbg;

even_odd_zero_detector dut (.clk(clk),.rst(rst),.in(in),.even(even),.odd(odd),.zero(zero),.state_dbg(state_dbg));

initial begin
clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,even_odd_zero_detector_tb);
$monitor("time=%0t clk=%b rst=%b in=%b |state=%b even=%b odd=%b zero=%b ",$time,clk,rst,in,state_dbg,even,odd,zero);
rst=0;
in=0;

#5;
rst=1;
in =0;
#10;

rst=0;
in =0;
#10;

@(negedge clk);
in=1;
@(negedge clk);
in=0;
@(negedge clk);
in=1;
@(negedge clk);
in=0;
@(negedge clk);
in=0;
@(negedge clk);
in=1;
@(negedge clk);
in=1;
@(negedge clk);
in=0;
@(negedge clk);
in=0;
#10;

$finish;
end
endmodule
