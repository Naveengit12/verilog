`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 19:09:04
// Design Name: 
// Module Name: sum_two_using_function
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

module sum_two_using_function;
reg [3:0] a, b; 
reg [3:0] sum;       

 function [3:0] calculate_sum;
    input [3:0] x, y;    // inputs to the function
    begin
     calculate_sum = a + b;   // return sum
    end
  endfunction

  initial begin
    a = 15;      
    b = 10;      
    // call function
    sum = calculate_sum(a, b); 
   $display("a = %d, b = %d, sum = %d", a, b, sum);
  end
endmodule

