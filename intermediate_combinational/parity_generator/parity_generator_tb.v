module parity_generator_tb;
reg [3:0] d;
wire even_parity;
wire odd_parity;

integer i;
reg expected_even;
reg expected_odd;

parity_generator dut (.d(d),.even_parity(even_parity),.odd_parity(odd_parity));
initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,parity_generator_tb);
$display ("d    even      odd  ");

for (i=0;i<16;i=i+1) begin
     d = i;
     #10;

expected_even = (^d);
expected_odd  = ~(^d);

if (even_parity !== expected_even)
$display ("even parity mismatch for data =%b ",d);

if (odd_parity !== expected_odd)
$display ("odd parity mismatch for data =%b",d);

$display ("%b %b %b ",d,even_parity,odd_parity);
end
$finish;
end
endmodule
