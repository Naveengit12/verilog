`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 16:17:47
// Design Name: 
// Module Name: Q11_tb
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


module Q11_tb;
    reg clk;
    reg reset;
    reg j;
    reg k;
    wire out;

    Q11 uut (
        .clk(clk),
        .reset(reset),
        .j(j),
        .k(k),
        .out(out)
    );

    always #5 clk = ~clk;
    initial begin
        $monitor("%0d\t%b\t%b\t%b\t%b\t%b", $time, clk, reset, j, k, out);

        clk = 0;
        reset = 1;
        j = 0;
        k = 0;

        #10;
        reset = 0;

        // State: OFF ? Stay in OFF if j = 0
        #10 j = 0; k = 0;  // OFF ? OFF

        // j = 1 ? transition to ON
        #10 j = 1; k = 0;  // OFF ? ON

        // Stay in ON if k = 0
        #10 j = 0; k = 0;  // ON ? ON

        // k = 1 ? transition to OFF
        #10 j = 0; k = 1;  // ON ? OFF

        // Try transition to ON again
        #10 j = 1; k = 0;  // OFF ? ON

        // Stay in ON
        #10 j = 0; k = 0;  // ON ? ON

        // Final: back to OFF
        #10 j = 0; k = 1;  // ON ? OFF

        #20;
        $finish;
    end
endmodule