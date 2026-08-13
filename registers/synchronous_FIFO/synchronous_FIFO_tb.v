module synchronous_fifo_tb;

reg clk;
reg rst;
reg wr_en;
reg rd_en;
reg [7:0] data_in;

wire full;
wire empty;
wire [7:0] data_out;

synchronous_fifo uut (
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .full(full),
    .empty(empty),
    .data_out(data_out)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("fifo_wave.vcd");
    $dumpvars(0, synchronous_fifo_tb);

    clk = 0;
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 8'b0;

    #10;
    rst = 0;

  
    #10;
    wr_en = 1;
    rd_en = 0;
    data_in = 8'hA1;

   
    #10;
    data_in = 8'hB2;

    #10;
    data_in = 8'hC3;

    
    #10;
    wr_en = 0;

    
    #10;
    rd_en = 1;
    #30; //all data  read complete

    rd_en = 0;

 
    #10;
    wr_en = 1;
    data_in = 8'h11;

    #10 data_in = 8'h22;
    #10 data_in = 8'h33;
    #10 data_in = 8'h44;
    #10 data_in = 8'h55;
    #10 data_in = 8'h66;
    #10 data_in = 8'h77;
    #10 data_in = 8'h88; // this should not write if full becomes 1

    #10;
    wr_en = 0;

    // Read all stored values
    #10;
    rd_en = 1;

    #100;

    rd_en = 0;
    #20;

    $finish;
end

initial begin
    $monitor("Time=%0t rst=%b wr_en=%b rd_en=%b data_in=%h data_out=%h full=%b empty=%b",
              $time, rst, wr_en, rd_en, data_in, data_out, full, empty);
end

endmodule
