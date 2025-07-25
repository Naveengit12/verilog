`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 18:46:29
// Design Name: 
// Module Name: binary_gray_tb
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

module binary_gray_tb;
  reg [3:0]B;           
  wire [3:0]gray;       

  
  binary_gray uut(.B(B), .gray(gray) );

  initial begin
    $display("Binary | Gray");
    $monitor("B=%b   | gray=%b", B, gray);
    B = 4'b0000; #10;
    B = 4'b0001; #10;
    B = 4'b0010; #10;
    B = 4'b0011; #10;
    B = 4'b0100; #10;
    B = 4'b0101; #10;
    B = 4'b0110; #10;
    B = 4'b0111; #10;
    B = 4'b1000; #10;
    B = 4'b1001; #10;
    B = 4'b1010; #10;
    B = 4'b1011; #10;
    B = 4'b1100; #10;
    B = 4'b1101; #10;
    B = 4'b1110; #10;
    B = 4'b1111; #10;
    $finish;
  end

endmodule
