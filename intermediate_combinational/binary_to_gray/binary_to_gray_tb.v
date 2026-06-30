module binary_to_gray_4bit_tb;
reg [3:0] b;
wire [3:0] g;
integer i;

binary_to_gray_4bit dut (.b(b),.g(g));
initial begin 
$dumpfile ("wave.vcd");
$dumpvars (0,binary_to_gray_4bit_tb);
$display ("B     |   G");
$monitor ("%b  | %b ",b,g);

for (i=0;i<16;i=i+1)begin
   b=i;
#10;
end

$finish;
end
endmodule
