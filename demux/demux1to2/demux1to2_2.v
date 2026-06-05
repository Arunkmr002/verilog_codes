module demux1to2 (
input a,s,
output y,z);
assign y=~s&a;
assign z=s&a;
endmodule
