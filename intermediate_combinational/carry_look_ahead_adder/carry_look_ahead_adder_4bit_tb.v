module carry_look_ahead_adder_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;
integer i;

carry_look_ahead_adder dut  (.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,carry_look_ahead_adder_tb);
$display("A  B  Cin | S   Cout");
for (i=0;i<512;i=i+1) begin
{a,b,cin}=i;
#1;
$monitor ("%b %b %b  |%b  %b ",a,b,cin,s,cout);
#9;
end
$finish;
end
endmodule
