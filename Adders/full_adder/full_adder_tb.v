module full_adder_tb;
reg a,b,cin;
wire s,co;
full_adder uut(.a(a),.b(b),.cin(cin),.s(s),.co(co));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,full_adder_tb);
$display("A B CIN|S CO");
$monitor("%b %b %b|%b %b",a,b,cin,s,co);
a=0;b=0;cin=0;#10;
a=0;b=0;cin=1;#10;
a=0;b=1;cin=0;#10;
a=0;b=1;cin=1;#10;
a=1;b=0;cin=0;#10;
a=1;b=0;cin=1;#10;
a=1;b=1;cin=0;#10;
a=1;b=1;cin=1;#10;
$finish;
end
endmodule
