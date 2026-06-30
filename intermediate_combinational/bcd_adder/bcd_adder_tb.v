module bcd_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
integer i,j,k;
integer errors;
reg[4:0] bin_sum;
reg[4:0] bcd_sum;
bcd_adder dut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,bcd_adder_tb);
$display("A B Cin | Cout SUM");
$monitor("%b %b %b |%b %b",a,b,cin,cout,sum);

errors=0;

for (i=0;i<10;i=i+1) begin 
 for (j=0;j<10;j=j+1) begin
  for (k=0;k<2;k=k+1) begin
     a   = i;
     b   = j;
     cin = k;
#10;
bin_sum = a+b+cin;

if (bin_sum>9)
       bcd_sum = bin_sum +6;
else
	bcd_sum = bin_sum;

if({cout,sum} !== bcd_sum) begin
	$display("ERROR: a=%b b=%b ci=%b -> dut=%b %b expected=%b",a,b,cin,cout,sum,bcd_sum);
	errors=errors+1;
        end
     end
   end
  end
if (errors==0)
	$display("PASS: all cases are matched");
else
	$display("FAIL:%0d errors found", errors );

$finish;
end
endmodule
