module sr_latch_nand (
input s,r,
output reg q,not_q);
 
always@ (*) begin 
 
 if (!s && r)
     q = 1'b1;
else if (s && !r)
     q = 1'b0;
else if (s && r) 
     q = q;
else 
     q = 1'bx;
 

not_q  =  ~q;

end
endmodule
