`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 16:54:53
// Design Name: 
// Module Name: Q2_tb
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

module Q2_tb;
    reg clk;
    reg rst;
    reg in;
    wire out;

    Q2 uut (
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out)
    );

    // Generate a clock: 10ns period
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        in = 0;

        // Apply reset
        #10; 
        rst = 0;
        $display("Test Case 1: 10100 (20)");
        send_bit(1); // 1
        send_bit(0); // 10
        send_bit(1); // 101
        send_bit(0); // 1010
        send_bit(0); // 10100 

        #10;
        $display("Out = %b", out); // Should be 1

        // Test Case 2: Input = 111 (binary for 7) ? not divisible by 5 ? output should be 0
        $display("Test Case 2: 111 (7)");
        rst = 1; #10; rst = 0;
        send_bit(1);
        send_bit(1);
        send_bit(1);

        #10;
        $display("Out = %b", out); // Should be 0

        // Test Case 3: Input = 0 ? output should be 1
        $display("Test Case 3: 0");
        rst = 1; #10; rst = 0;
        send_bit(0);

        #10;
        $display("Out = %b", out); // Should be 1

        $finish;
    end

    // Task to send input bits with timing
    task send_bit(input bit_val);
        begin
            in = bit_val;
            #10;
        end
    endtask
endmodule