module synchronous_fifo(
input clk,
input rst,
input wr_en,
input rd_en,
input [7:0] data_in,
output  full,
output    empty,
output reg  [7:0] data_out);

reg [7:0] fifo_mem [7:0];
reg [2:0] wr_ptr;
reg [2:0] rd_ptr;

assign empty = (wr_ptr == rd_ptr);
assign full  = (wr_ptr +1 == rd_ptr);

always@(posedge clk) begin
 if (rst) begin
   wr_ptr   <= 3'b000;
   rd_ptr   <= 3'b000;
   data_out <= 8'b00000000;
 end
 else begin 
    if (wr_en && !full)begin
	  fifo_mem[wr_ptr] <= data_in;
           wr_ptr <= wr_ptr+1'b1;
       end
    if (rd_en && !empty)begin
	   data_out <= fifo_mem[rd_ptr];
           rd_ptr <= rd_ptr+1'b1;
       end
     end
  end
endmodule
