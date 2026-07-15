module sequence_detector_1101_overlap_tb;
reg clk;
reg rst;
reg in;
wire out;
wire [2:0]state_dbg;

sequence_detector_1101_overlap dut(.clk(clk),.rst(rst),.in(in),.out(out),.state_dbg(state_dbg));
initial begin
clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,sequence_detector_1101_overlap_tb);
$monitor("time=%0t clk =%b rst=%b in=%b |state=%b out=%b",$time,clk,rst,in,state_dbg,out);

#5;
rst=1;
in =0;
#10;

rst=0;
in =0;
#10;

in=1; #10;
in=1; #10;
in=0; #10;
in=1; #10;

in=1; #10;
in=1; #10;
in=0; #10;
in=1; #10;

$finish;
end
endmodule
