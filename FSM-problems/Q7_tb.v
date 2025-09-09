`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2025 16:29:29
// Design Name: 
// Module Name: Q7_tb
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

module Q7_tb;
    reg clk;
    reg reset;
    reg din;
    wire detected;

    // Instantiate 
    Q7 uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        reset = 1;
        din = 0;
        #20;
        reset = 0;

        // Test Case 1: din = 0 (A=0), expect oscillation between a-b or c-d pairs
        repeat (6) begin
            #10 din = 0;
        end

        // Test Case 2: din = 1 (A=1), expect switching between pairs
        repeat (10) begin
            #10 din = 1;
        end
        din = 0; #20;
        din = 1; #20;
        din = 0; #20;
        din = 1; #20;

        // Finish simulation
        #40;
        $finish;
    end
    
    initial begin
        $monitor("Time: %0t | din=%b | detected=%b", $time, din, detected);
    end
endmodule