module bcd_adder(
input [3:0] a,b,
input  cin,
output reg [3:0] sum,
output reg cout);

reg [4:0]bin_sum;
reg [4:0]bcd_sum;
reg correction;

always@(*) begin

 bin_sum = a+b+cin;

 correction = bin_sum[4]|
	       (bin_sum[3]&bin_sum[2])|
	       (bin_sum[3]&bin_sum[1]);

 bcd_sum = correction ? (bin_sum+5'b00110) : (bin_sum);

 sum  = bcd_sum[3:0];
 cout = bcd_sum[4];

end
endmodule
