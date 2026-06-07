module decoder3to8_tb;
reg [2:0]a;
wire [7:0]y;
integer i;
decoder3to8 dut (.a(a),.y(y));
initial begin 
$dumpfile("wave.vcd");
$dumpvars(0,decoder3to8_tb);
$display("A|Y");
$monitor("%b |%b",a,y);
for (i=0;i<8;i=i+1) begin
a=i;
#10;
end
$finish;
end
endmodule
