`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 18:29:47
// Design Name: 
// Module Name: automatic_non_automatic_task
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

 module automatic_non_automatic;
  task automatic auto_example(input integer x);
    integer i;
    begin
      for (i = 0; i < x; i = i + 1)
        $display("Automatic Task: %0d", i);
    end
  endtask
  task non_auto_example(input integer x);
    integer i;
    begin
      for (i = 0; i < x; i = i + 1)
        $display("Non-Automatic Task: %0d", i);
    end
  endtask
  initial begin
    fork
      auto_example(3);
      non_auto_example(3);
    join
  end
 endmodule
