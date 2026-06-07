module decoder2to4_tb;
reg [1:0]a;
wire [3:0]y;
integer i ;
decoder2to4 dut (.a(a),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,decoder2to4_tb);
$display("A|Y");
$monitor("%b |%b",a,y);
for (i=0;i<4;i=i+1) begin
a=i;
#10;
end
$finish;
end
endmodule
