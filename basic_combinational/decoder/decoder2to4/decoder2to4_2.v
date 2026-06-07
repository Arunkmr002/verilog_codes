module decoder2to4 (
input [1:0]a,
output [3:0]y);
assign y[0]=~a[0]&~a[1];
assign y[1]=a[0]&~a[1];
assign y[2]=~a[0]&a[1];
assign y[3]=a[0]&a[1];
endmodule
