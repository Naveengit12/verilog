`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 15:35:37
// Design Name: 
// Module Name: Q1_tb
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


module Q1_tb;
    reg clk;
    reg reset_n;
    reg x;
    wire y;

    Q1 uut (
        .clk(clk),
        .reset_n(reset_n),
        .x(x),
        .y(y)
    );

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;
    // Stimulus block
    initial begin
        reset_n = 0;
        x = 0;
        #12;
        reset_n = 1;
        @(posedge clk);
        x = 0;  
        @(posedge clk);
        x = 0;  
        @(posedge clk);
        x = 0;  
        @(posedge clk);
        x = 0;  
        @(posedge clk);
        x = 1; 

        @(posedge clk);
        x = 1;  
        @(posedge clk);
        x = 1;  
        @(posedge clk);
        x = 1;  
        @(posedge clk);
        x = 1;  
        @(posedge clk);
        x = 0; 

        @(posedge clk);
        x = 1;
        @(posedge clk);
        x = 0;
        @(posedge clk);
        x = 1;
        @(posedge clk);
        x = 1;
        @(posedge clk);
        x = 1;  
        
        // Finish simulation after some time
        #30;
        $stop;
    end

    initial begin
        $monitor("Time=%0t clk=%b reset_n=%b x=%b y=%b state=%b", $time, clk, reset_n, x, y,state);
    end
endmodule