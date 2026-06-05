module demux1to2 (
input a,s,
output reg y,z);
always@(*) begin y=~s&a;
z=s&a;
end
endmodule
