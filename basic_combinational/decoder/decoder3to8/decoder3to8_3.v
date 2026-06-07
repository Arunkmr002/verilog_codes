module decoder3to8(
input [2:0]a,
output reg [7:0]y);
always@(*) begin
 y[0]=~a[2]&~a[1]&~a[0];
 y[1]=~a[2]&~a[1]&a[0];
 y[2]=~a[2]&a[1]&~a[0];
 y[3]=~a[2]&a[1]&a[0];
 y[4]=a[2]&~a[1]&~a[0];
 y[5]=a[2]&~a[1]&a[0];
 y[6]=a[2]&a[1]&~a[0];
 y[7]=a[2]&a[1]&a[0];
end
endmodule
