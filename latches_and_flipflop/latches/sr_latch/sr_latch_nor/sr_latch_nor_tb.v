module sr_latch_tb;
reg s,r;
wire q,not_q;

integer i;

sr_latch dut (.s(s),.r(r),.q(q),.not_q(not_q));
initial begin 
$dumpfile ("wave.vcd");
$dumpvars (0,sr_latch_tb);
$display ("T      S     R |   Q      NOT_Q");
$monitor ("time=%0t s=%b r=%b | q=%b  not_q=%b",$time,s,r,q,not_q);
   
    // Reset
    s = 0; r = 1; #10;

    // Hold
    s = 0; r = 0; #10;

    // Set
    s = 1; r = 0; #10;

    // Hold
    s = 0; r = 0; #10;

    // Invalid
    s = 1; r = 1; #10;

$finish;
end
endmodule
