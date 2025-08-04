`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 19:25:02
// Design Name: 
// Module Name: sum_two_using_task
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


module sum_two_using_task;
  reg [4:0] a, b;
  reg [4:0] sum;

  // Task to calculate sum
  task calculate_sum;
    input [4:0] x, y;
    output [4:0] sum;
    begin
      sum = x + y;
    end
  endtask

  initial begin
    a = 8;
    b = 10;
    calculate_sum(a, b, sum);  // call task with inputs and output
    $display("a = %d, b = %d, sum = %d", a, b, sum);
  end
endmodule
