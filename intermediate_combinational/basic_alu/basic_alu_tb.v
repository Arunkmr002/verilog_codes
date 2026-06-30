module basic_alu_tb;
reg [3:0] a,b;
reg [2:0] sel;
wire [3:0] y;
wire carry ;

integer i;
integer j;

basic_alu dut (.a(a),.b(b),.sel(sel),.carry(carry),.y(y));
initial begin 
$dumpfile ("wave.vcd");
$dumpvars (0,basic_alu_tb);
$display ("A B Sel |carry Y");
$monitor ("Time=%0t %b %b %b | %b %b",$time,a,b,sel,carry,y);
#10;
for (i=0;i<256;i=i+1)begin
   {a,b} = i;
for (j=0;j<8;j=j+1)begin
    sel = j;
#1;
    end
  end
$finish;
end
endmodule
