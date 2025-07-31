`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 12:22:28
// Design Name: 
// Module Name: shift_reg_3bit_tb
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


module shift_reg_3bit_tb;

  reg clk,rst,d_in;
  wire y;

 
  shift_reg_3bit uut (.clk(clk),.rst(rst),.d_in(d_in),.y(y));
  
  always #5 clk = ~clk;
 initial begin
 clk = 0;
 rst = 0;
 d_in = 0;  // rest
 
    #2 
    rst = 1;
    #10 
    rst = 0;
    #10 
    d_in = 1;  // Shift in 1
    #10 
    d_in = 0;  // Shift in 0
    #10 
    d_in = 1;  // Shift in 1
    #10 
    d_in = 0;  
    #20 
    $finish;  
  end
  endmodule

