`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 14:26:15
// Design Name: 
// Module Name: Q10_tb
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


module Q10_tb;
    reg clk;
    reg reset;
    reg din;
    wire detected;

    Q10 uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        din = 0;

        #10 reset = 0;

        // Test case:
        // Sequence: 1 0 1 1 1 0 1 1 1 1
        // Count of 1’s: ? 1 ? 2 ? 3 ? 4 ? 5 ? 6 ? 7 ? 8 

        #10 din = 1;  // 1 ? state = S1 ? detected = 0
        #10 din = 0;  // no change
        #10 din = 1;  // 2  ? S2
        #10 din = 1;  // 3  ? S3
        #10 din = 1;  // 4  ? S0 ? detected = 1 
        #10 din = 0;  // no change
        #10 din = 1;  // 5  ? S1
        #10 din = 1;  // 6  ? S2
        #10 din = 1;  // 7  ? S3
        #10 din = 1;  // 8  ? S0 ? detected = 1 

        #20;
        $finish;
    end

    initial begin
        $monitor("time =0%b, clk=%b, reset=%b,din=%b,dout=%b", $time, clk, reset, din, detected);
    end

endmodule

