module FIFO_asynchronous_tb;
    parameter data_width = 8;
    parameter addr_width = 4; // Depth = 2^4 = 16

    reg write_clk = 0;
    reg read_clk  = 0;
    reg write     = 0;
    reg read      = 0;
    reg [data_width-1:0] write_data = 0;
    wire [data_width-1:0] read_data;
    wire write_full;
    wire read_empty;

    // Instantiate 
    FIFO_asynchronous #(
        .data_width(data_width),
        .addr_width(addr_width)
    ) uut (
        .write_clk(write_clk),
        .write(write),
        .write_data(write_data),
        .write_full(write_full),

        .read_clk(read_clk),
        .read(read),
        .read_data(read_data),
        .read_empty(read_empty)
    );

    // Generate write clock (10ns period = 100MHz)
    always #5 write_clk = ~write_clk;

    // Generate read clock (13ns period ≈ 76.9MHz)
    always #10 read_clk = ~read_clk;

    // Stimulus process
    initial begin
        $display("Time\twrite\twdata\tWFull\tread\trdata\trempty");

        // Wait for clocks to settle
        #20;

        // ==== Write Phase ====
        repeat (10) begin
            @(posedge write_clk);
            if (!write_full) begin
                write <= 1;
                write_data <= write_data + 8'h1;
            end else begin
                write <= 0;
            end
        end
        // Stop writing
        @(posedge write_clk);
        write <= 0;

        // Wait before starting to read
        #100;

        // ==== Read Phase ====
        repeat (10) begin
            @(posedge read_clk);
            if (!read_empty) begin
                read <= 1;
            end else begin
                read <= 0;
            end
        end
        // Stop reading
        @(posedge read_clk);
        read <= 0;

        // Wait and end simulation
        #100;
        $finish;
    end

    // Monitor signals
    always @(posedge write_clk or posedge read_clk) begin
        $display("%0t\t%b\t%h\t%b\t%b\t%h\t%b", 
                 $time, write, write_data, write_full, read, read_data, read_empty);
    end

endmodule
