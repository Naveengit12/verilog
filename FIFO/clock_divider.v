`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 19:42:26
// Design Name: 
// Module Name: clock_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module clock_divider;
    reg clk_50mhz = 0;
    reg reset = 1;
    reg [31:0] count = 0;
    reg clk_100hz = 0;

    // Parameters
    parameter integer COUNT_MAX = 250_000;  // 50MHz 

    // Clock Generation: 50MHz ? 20ns period
    always #10 
    clk_50mhz = ~clk_50mhz;

    always @(posedge clk_50mhz or posedge reset) begin
        if (reset) begin
            count <= 0;
            clk_100hz <= 0;
        end else begin
            if (count == COUNT_MAX - 1) begin
                count <= 0;
                clk_100hz <= ~clk_100hz;  // Toggle
            end else begin
                count <= count + 1;
            end
        end
    end

    // Initial block for reset and display
    initial begin
        $monitor("%0t\t%b\t\t%b\t\t%b", $time, clk_50mhz, clk_100hz, reset);

        // Release reset after 50ns
        #50 reset = 0;

        // Let it run long enough to see few clk_100hz pulses
        #5_000_000 $finish;
    end
endmodule

