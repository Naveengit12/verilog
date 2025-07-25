`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:05:32
// Design Name: 
// Module Name: sr_latch_tb
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

module sr_latch_tb;
  reg s, r;
  wire q, q_bar;
  
  sr_latch uut (
    .s(s),
    .r(r),
    .q(q),
    .q_bar(q_bar)
  );

  initial begin
   $display("s r | q q_bar");
    s = 0; r = 0;
    #10;
    s = 1; r = 0;
    #10;
    s = 0; r = 0;
    #10;
    s = 0; r = 1;
    #10;
    s = 1; r = 1;
    #10;
    $finish;
  end
 endmodule
