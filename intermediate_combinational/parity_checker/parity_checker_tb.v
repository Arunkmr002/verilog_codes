module parity_checker_tb;
reg [3:0]  d;
reg p;
reg mode;
wire error;

integer i;
integer j;
integer k;

parity_checker dut (.d(d),.p(p),.mode(mode),.error(error));
initial begin
$dumpfile("wave.vcd");
$dumpvars (0,parity_checker_tb);
$display (" D    P   M| E ");
$monitor ("%b  %b  %b %b ",d,p,mode,error);

for (k=0;k<2;k=k+1) begin
     mode = k;

for (i=0;i<16;i=i+1) begin
     d=i;

for (j=0;j<2;j=j+1)begin
     p=j;
#10;
     end
    end
  end
$finish;
end
endmodule
