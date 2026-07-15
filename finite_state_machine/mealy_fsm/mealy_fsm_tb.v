module mealy_fsm_tb;
reg clk;
reg rst;
reg in;
wire out;
wire [1:0] state_dbg;

mealy_fsm dut(.clk(clk),.rst(rst),.in(in),.out(out),.state_dbg(state_dbg));
initial begin
clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,mealy_fsm_tb);
$monitor("time=%0t clk=%b rst=%b in=%b |state=%b out=%b",$time,clk,rst,in,state_dbg,out);

#5;
rst=1;
in =0;
#10;

rst=0;
in =0;  
#10;

in=1; #10;

in=0; #10;

in=1; #10;

in=0; #10;

in=1; #10;

in=0; #10;

in=1; #10;

in=0; #10;


$finish;
end
endmodule
