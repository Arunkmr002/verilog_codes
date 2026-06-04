module not_gate_tb;
reg a;
wire y;
not_gate utt(.a(a),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,not_gate_tb);
$display("A|Y");
$monitor("%b|%b",a,y);
a=0;#10;
a=1;#10;
$finish;
end
endmodule
