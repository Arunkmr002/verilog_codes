module demux1to2_tb;
reg a,s;
wire y,z;
demux1to2 dut(.a(a),.s(s),.y(y),.z(z));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,demux1to2_tb);
$display("A S|Y Z");
$monitor("%b %b|%b",a,s,y,z);
a=0;s=0;#10;
a=0;s=1;#10;
a=1;s=0;#10;
a=1;s=1;#10;
$finish;
end
endmodule
