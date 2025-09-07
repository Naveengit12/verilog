`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 17:51:13
// Design Name: 
// Module Name: Q3_tb
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

module Q3_tb;
    reg [7:0] binary_in;
    wire [11:0] bcd_out;

   Q3 uut (
        .binary_in(binary_in),
        .bcd_out(bcd_out));

    wire [3:0] hundreds = bcd_out[11:8];
    wire [3:0] tens  = bcd_out[7:4];
    wire [3:0] ones  = bcd_out[3:0];
    initial begin
        $display("Binary\tBCD (H T O)");
        $monitor("binary_in=%b,hundreds=%d,tens=%d,ones=%d", binary_in, hundreds, tens, ones);

        binary_in = 8'd0;    #10;
        binary_in = 8'd1;    #10;
        binary_in = 8'd10;   #10;
        binary_in = 8'd45;   #10;
        binary_in = 8'd99;   #10;
        binary_in = 8'd123;  #10;
        binary_in = 8'd255;  #10;
        $finish;
    end
endmodule