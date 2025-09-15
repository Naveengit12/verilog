module FIFO_asynchronous #(
    parameter data_width = 8,
    parameter addr_width = 4  // FIFO depth = 2^ADDR_WIDTH
)(
    input wire write_clk,
    input wire write,
    input wire [data_width-1:0] write_data,
    output wire write_full,

    input wire  read_clk,
    input wire  read,
    output reg [data_width-1:0] read_data,
    output wire read_empty
);

    localparam depth = 1 << addr_width;

    //  FIFO memory 
    reg [data_width-1:0] mem [0:depth-1];

    // Binary and Gray pointers 
    reg [addr_width:0] wr_ptr_bin = 0;
    reg [addr_width:0] rd_ptr_bin = 0;
    reg [addr_width:0] wr_ptr_gray = 0;
    reg [addr_width:0] rd_ptr_gray = 0;

    //  Synchronizers
    reg [addr_width:0] rd_ptr_gray_wclk1, rd_ptr_gray_wclk2;
    reg [addr_width:0] wr_ptr_gray_rclk1, wr_ptr_gray_rclk2;

    // Functions 
    function [addr_width:0] bin_gray(input [addr_width:0] bin);
        bin_gray = bin ^ (bin >> 1);
    endfunction

    function [addr_width:0] gray_bin(input [addr_width:0] gray);
        integer i;
        begin
            gray_bin[addr_width] = gray[addr_width];
            for (i = addr_width - 1; i >= 0; i = i - 1)
                gray_bin[i] = gray_bin[i + 1] ^ gray[i];
        end
    endfunction

    // WRITE Domain
    always @(posedge write_clk) begin
        if (write && !write_full) begin
            mem[wr_ptr_bin[addr_width-1:0]] <= write_data;
            wr_ptr_bin <= wr_ptr_bin + 1;
            wr_ptr_gray <= bin_gray(wr_ptr_bin + 1);
        end
    end

    // Sync read pointer into write clock domain
    always @(posedge write_clk) begin
        rd_ptr_gray_wclk1 <= rd_ptr_gray;
        rd_ptr_gray_wclk2 <= rd_ptr_gray_wclk1;
    end

    //  READ Domain
    always @(posedge read_clk) begin
        if (read && !read_empty) begin
            read_data <= mem[rd_ptr_bin[addr_width-1:0]];
            rd_ptr_bin <= rd_ptr_bin + 1;
            rd_ptr_gray <= bin_gray(rd_ptr_bin + 1);
        end
    end

    // Sync write pointer into read clock domain
    always @(posedge read_clk) begin
        wr_ptr_gray_rclk1 <= wr_ptr_gray;
        wr_ptr_gray_rclk2 <= wr_ptr_gray_rclk1;
    end

    // Full and Empty Flags
    assign write_full = (wr_ptr_gray == {~rd_ptr_gray_wclk2[addr_width:addr_width-1],
                                      rd_ptr_gray_wclk2[addr_width-2:0]});
    assign read_empty = (rd_ptr_gray == wr_ptr_gray_rclk2);

endmodule
