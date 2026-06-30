module bcd_adder(
input [3:0] a,b,
input  cin,
output [3:0] sum,
output cout);

wire [4:0]bin_sum;
wire [4:0]bcd_sum;
wire correction;

assign bin_sum = a+b+cin;

assign correction = bin_sum[4]|
	            (bin_sum[3]&bin_sum[2])|
		          (bin_sum[3]&bin_sum[1]);

assign bcd_sum = correction ? (bin_sum+5'b00110) : (bin_sum);

assign sum  = bcd_sum[3:0];
assign cout = bcd_sum[4];

endmodule
