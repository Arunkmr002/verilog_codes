module encoder8to3(
input [7:0]a,
output reg x,y,z);
always @ (*) begin 
x=a[4]|a[5]|a[6]|a[7];
y=a[2]|a[3]|a[6]|a[7];
z=a[1]|a[3]|a[5]|a[7];
end
endmodule
