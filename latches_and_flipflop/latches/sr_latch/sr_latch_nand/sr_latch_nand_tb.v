module sr_latch_nand_tb;
reg s,r;
wire q,not_q;


sr_latch_nand dut (.s(s),.r(r),.q(q),.not_q(not_q));
initial begin 
$dumpfile ("wave.vcd");
$dumpvars (0,sr_latch_nand_tb);
$monitor ("time=%0t s=%b r=%b q=%b not_q=%b",$time,s,r,q,not_q);


 //reset
 s=1 ; r=0 ; #10;
 s=1 ; r=1 ; #10; //memory
 
 //set
 s=0 ; r=1 ; #10;
 s=1 ; r=1 ; #10; //memory
 
 //invalid
 s=0 ; r=0 ; #10;

$finish;
end
endmodule
