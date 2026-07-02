module d_latch_tb;
reg d;
reg enable;
wire q, not_q;

d_latch dut (.d(d),.enable(enable),.q(q),.not_q(not_q));
initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,d_latch_tb);
$monitor ("time=%0t en=%b  d=%b |q=%b not_q=%b",$time,enable,d,q,not_q);

enable = 0 ; d=0 ; #10;
enable = 0 ; d=1 ; #10;

enable =1 ; d=0 ; #10;
enable =1 ; d=1 ; #10;

$finish;
end
endmodule
