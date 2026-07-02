module jk_flipflop_tb;
reg clk;
reg j;
reg k;
wire  q;
wire not_q;

integer i;

jk_flipflop dut (.clk(clk),.j(j),.k(k),.q(q),.not_q(not_q));
initial begin
 clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,jk_flipflop_tb);
$monitor("time=%0t clk=%b j=%b k=%b q=%b not_q=%b",$time,clk,j,k,q,not_q);

j=0;
k=0;
for (i=0;i<4;i=i+1) begin
  {j,k} = i;
  #10;
end

j=1;
k=1;
for(i=0;i<4;i=i+1) begin
#10;
end
$finish;
end
endmodule
