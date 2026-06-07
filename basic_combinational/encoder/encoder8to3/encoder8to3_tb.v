module encoder8to3_tb;
reg [7:0]a;
wire x,y,z;
integer i;
encoder8to3 dut(.a(a),.x(x),.y(y),.z(z));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,encoder8to3_tb);
$display("A |X Y Z");
$monitor("%b|%b %b %b",a,x,y,z);
for (i=0;i<8;i=i+1) begin
 a=1<<i;
 #10;
end
$finish;
end
endmodule
