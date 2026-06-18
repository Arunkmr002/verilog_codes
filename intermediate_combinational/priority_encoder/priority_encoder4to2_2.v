module priority_encoder(
input [3:0]a,
output reg [1:0]y);
always@(*)begin
y[1]=a[3]|a[2];
y[0]=a[3]|~a[2]&a[1];
end
endmodule
