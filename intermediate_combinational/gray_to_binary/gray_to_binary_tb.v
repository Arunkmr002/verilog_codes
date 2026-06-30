module gray_to_binary_4bit_tb;
reg [3:0] g;
wire [3:0] b;
integer i;

gray_to_binary_4bit dut (.g(g),.b(b));
initial begin 
$dumpfile ("wave.vcd");
$dumpvars (0,gray_to_binary_4bit_tb);
$display (" G   |    B");
$monitor ("%b    |    %b" ,g,b);

for (i=0;i<16;i=i+1) begin
     g=i;
#10;
end
$finish;
end
endmodule
