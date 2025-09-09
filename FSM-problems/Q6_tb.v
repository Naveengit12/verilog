`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2025 19:50:27
// Design Name: 
// Module Name: Q6_tb
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
module Q6_tb;
    reg clk;
    reg reset;
    reg in;
    wire out;

    // Instantiate 
    Q6 uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        in = 0;

        // Hold reset for a few cycles
        #10;
        reset = 0;

        // Inputs: 0 0 0 => last 3: 000 => out = 0
        in = 0; #10;
        in = 0; #10;
        in = 0; #10;

        // Inputs: 0 0 1 => last 3: 001 => out = 0
        in = 1; #10;

        // Inputs: 0 1 1 => last 3: 011 => out = 1
        in = 1; #10;

        // Inputs: 1 1 0 => last 3: 110 => out = 1
        in = 0; #10;

        // Inputs: 1 0 0 => last 3: 100 => out = 0
        in = 0; #10;

        // Inputs: 0 0 1 => last 3: 001 => out = 0
        in = 1; #10;

        // Inputs: 0 1 1 => last 3: 011 => out = 1
        in = 1; #10;
        #20;
        $finish;
    end
    
    initial begin
        $monitor("%time=0t,in=%b,uut.shift_reg=%0b,out=%b", $time, in, uut.shift_reg, out);
    end
endmodule

