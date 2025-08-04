`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 20:14:25
// Design Name: 
// Module Name: function_calls_function
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
module function_calls_function;
  function integer double(input integer a);
    double = a * 2;
  endfunction
  function integer next_val(input integer x);
    next_val = double(x) + 1;
  endfunction
  initial begin
    $display("Result: %0d", next_val(5));
  end
 endmodule
