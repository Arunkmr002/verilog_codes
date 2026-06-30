module odd_even_detector_tb;
reg [3:0] d;
wire even_detector;
wire odd_detector;

integer i;

odd_even_detector dut (.d(d),.even_detector(even_detector),.odd_detector(odd_detector));
initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,odd_even_detector_tb);
$display (" D  | E O ");
$monitor ("%b %b %b",d,even_detector,odd_detector);
for (i=0;i<16;i=i+1) begin
     d = i;
#10;
end
$finish;
end
endmodule
