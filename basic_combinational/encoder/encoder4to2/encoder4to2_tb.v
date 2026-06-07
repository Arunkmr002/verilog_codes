module encoder4to2_tb;
reg a0,a1,a2,a3;
wire y0,y1;
encoder4to2 dut(.a0(a0),.a1(a1),.a2(a2),.a3(a3),.y0(y0),.y1(y1));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,encoder4to2_tb);
$display("A0 A1 A2 A3|Y0 Y1");
$monitor("%b %b %b %b|%b %b",a0,a1,a2,a3,y0,y1);
{a0,a1,a2,a3}= 4'd8;#10;
{a0,a1,a2,a3}= 4'd4;#10;
{a0,a1,a2,a3}= 4'd2;#10;
{a0,a1,a2,a3}= 4'd1;#10;
$finish;
end
endmodule
