`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 14:21:33
// Design Name: 
// Module Name: clk_gen_tb
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


module clk_gen_tb;

  wire clk;  

 
  clk_gen uut(.clk(clk));

 
  initial begin
   
    $monitor("%0t\t%b", $time, clk);
  end
  initial begin
    #80;
    $finish;
  end

endmodule

