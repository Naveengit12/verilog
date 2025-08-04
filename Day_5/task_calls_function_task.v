`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 20:10:15
// Design Name: 
// Module Name: task_calls_function_task
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
module task_calls_function_task;

  function integer square(input integer n);
    square =n*n;
  endfunction

  task show_msg;
    $display("Inside another task");
  endtask

  task main_task(input integer val);
    integer result;
    begin
      result = square(val);
      show_msg();
      $display("Square of %0d = %0d", val, result);
    end
  endtask

  initial main_task(5);

endmodule

