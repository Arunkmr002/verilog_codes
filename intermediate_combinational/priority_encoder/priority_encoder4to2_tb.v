module priority_encoder_tb;
reg [3:0]a;
wire [1:0]y;
integer i;
priority_encoder dut(.a(a),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,priority_encoder_tb);
$display("A|Y");
$monitor("%b|%b",a,y);
for (i=0;i<4;i=i+1) begin
 a=1<<i;
 #10;
end
$finish;
end
endmodule
