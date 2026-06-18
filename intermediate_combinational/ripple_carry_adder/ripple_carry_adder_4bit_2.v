module ripple_carry_adder_4bit(
input [3:0] a,b,
input cin,
output reg [3:0] s,
output reg cout);
reg [3:0]c;
always@(*) begin
 s[0]=a[0]^b[0]^cin;
 s[1]=a[1]^b[1]^c[0];
 s[2]=a[2]^b[2]^c[1];
 s[3]=a[3]^b[3]^c[2];

 c[0]=a[0]&b[0]|cin&(a[0]^b[0]);
 c[1]=a[1]&b[1]|c[0]&(a[1]^b[1]);
 c[2]=a[2]&b[2]|c[1]&(a[2]^b[2]);
 c[3]=a[3]&b[3]|c[2]&(a[3]^b[3]);
 cout=c[3];
 end
endmodule
