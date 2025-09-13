module synchronous_FIFO_tb;
  parameter FIFO_depth = 8;
  parameter data_width = 32;
  reg clk, rst, cs, wr_ena, rd_ena;
  reg [data_width-1:0] data_in;
  wire [data_width-1:0] data_out;
  wire full, empty;

  // Instantiate 
  synchronous_FIFO #(FIFO_depth, data_width) dut (
    .clk(clk),
    .rst(rst),
    .cs(cs),
    .wr_ena(wr_ena),
    .rd_ena(rd_ena),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1;
    cs = 0;
    wr_ena = 0;
    rd_ena = 0;
    data_in = 0;

    // Apply Reset
    #10; rst = 0;
    #10; rst = 1;

    // Write data into FIFO
    cs = 1;
    $display("Starting write sequence...");
    repeat (FIFO_depth) begin
      @(negedge clk);
      wr_ena = 1;
      rd_ena = 0;
      data_in = $random;
      @(negedge clk);
      wr_ena = 0;
      // Can check: $display("Full=%b, Empty=%b", full, empty);
      #5;
    end

    // Try to write when full
    @(negedge clk);
    wr_ena = 1;
    data_in = 32'hDEADBEEF;
    @(negedge clk);
    wr_ena = 0;
    #5;

    // Read data from FIFO
    $display("Starting read sequence...");
    repeat (FIFO_depth) begin
      @(negedge clk);
      wr_ena = 0;
      rd_ena = 1;
      @(negedge clk);
      rd_ena = 0;
      $display("Read data: %h, Full=%b, Empty=%b", data_out, full, empty);
      #5;
    end

    // Try to read when empty
    @(negedge clk);
    rd_ena = 1;
    @(negedge clk);
    rd_ena = 0;
    #5;

    // End simulation
    $display("FIFO testbench finished.");
    #50;
    $finish;
  end

endmodule
