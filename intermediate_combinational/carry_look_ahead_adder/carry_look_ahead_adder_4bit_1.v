module carry_look_ahead_adder (
input [3:0] a,b,
input cin,
output [3:0] s,
output cout);
wire [3:0] g,p;
wire [2:0] c;

assign g = a&b;
assign p = a^b;

assign s[0] = p[0]^cin;
assign s[1] = p[1]^c[0];
assign s[2] = p[2]^c[1];
assign s[3] = p[3]^c[2];

assign c[0] = (g[0])|
	           (p[0]&cin);

assign c[1] = (g[1])|
	           (p[1]&g[0])|
	           (p[0]&p[1]&cin);

assign c[2] = (g[2])|
               (p[2]&g[1])|
	           (p[2]&p[1]&g[0])|
	           (p[2]&p[1]&p[0]&cin);

assign cout = (g[3])|
               (p[3]&g[2])|
	           (p[3]&p[2]&g[1])|
	           (p[3]&p[2]&p[1]&g[0])|
	           (p[3]&p[2]&p[1]&p[0]&cin);
endmodule
