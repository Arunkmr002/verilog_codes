module carry_look_ahead_adder (
input [3:0] a,b,
input cin,
output reg [3:0] s,
output reg cout);
reg [3:0] g,p;
reg [2:0] c;

always@(*) begin
 g = a&b;
 p = a^b;


 c[0] = (g[0])|
	       (p[0]&cin);

 c[1] = (g[1])|
	       (p[1]&g[0])|
	       (p[0]&p[1]&cin);

 c[2] = (g[2])|
         (p[2]&g[1])|
         (p[2]&p[1]&g[0])|
	       (p[2]&p[1]&p[0]&cin);

 cout = (g[3])|
         (p[3]&g[2])|
	       (p[3]&p[2]&g[1])|
	       (p[3]&p[2]&p[1]&g[0])|
	       (p[3]&p[2]&p[1]&p[0]&cin);

 s[0] = p[0]^cin;
 s[1] = p[1]^c[0];
 s[2] = p[2]^c[1];
 s[3] = p[3]^c[2];

end
endmodule
