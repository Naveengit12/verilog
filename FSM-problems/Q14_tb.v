`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 18:08:38
// Design Name: 
// Module Name: Q14_tb
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


module Q14_tb;

    reg clk;
    reg reset;

    // Output
    wire clk_out;

    // Instantiate the DUT (Device Under Test)
    Q14 #(
        .PERIOD(10),
        .HIGH_CYCLES(6)
    ) uut (
        .clk(clk),
        .reset(reset),
        .clk_out(clk_out)
    );

    // Generate input clock (10ns period => 100MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle every 5ns
    end

    // Test sequence
    initial begin
        $monitor("%dns\t%b\t%b\t%b", $time, clk, reset, clk_out);
        reset = 1;
        #20;
        reset = 0;

     
        #500;

        $finish;
    end
endmodule