`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 19:51:38
// Design Name: 
// Module Name: half_sub_tb
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

module half_sub_tb;
  reg a, b;
  wire barrow, diff;

  half_sub uut(.barrow(barrow),.diff(diff),.a(a),.b(b));

  initial begin
    a = 0; b = 0; #10;
    $display("a=%b, b=%b, barrow=%b, diff=%b", a, b, barrow, diff);

    a = 0; b = 1; #10;
    $display("a=%b, b=%b, barrow=%b, diff=%b", a, b, barrow, diff);

    a = 1; b = 0; #10;
    $display("a=%b, b=%b, barrow=%b, diff=%b", a, b, barrow, diff);

    a = 1; b = 1; #10;
    $display("a=%b, b=%b, barrow=%b, diff=%b", a, b, barrow, diff);
  end
endmodule

