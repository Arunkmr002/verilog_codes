module sr_flipflop_tb;
reg clk;
reg s;
reg r;
wire q;
wire not_q;

integer i;

sr_flipflop dut (.clk(clk),.s(s),.r(r),.q(q),.not_q(not_q));
initial begin 
 clk = 0;
forever #5 clk = ~clk ;
end

initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,sr_flipflop_tb);
$monitor ("time=%0t clk=%b s=%b r=%b | q=%b not_q=%b",$time,clk,s,r,q,not_q);

s=0;
r=0;

for (i=0;i<4;i=i+1) begin
   {s,r} = i;
#10;
end
$finish;
end
endmodule
