`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:22:28
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb;
  reg j,k,clk;
  wire q,q_bar;
  
  jk_ff uut(.j(j), .k(k), .clk(clk), .q(q), .q_bar(q_bar));
  initial begin
  
      $monitor("Time=%b, J=%b, K=%b, clk=%b =, q=%b, q_bar=%b", $time, j, k, clk, q, q_bar);

    j = 0; k = 0; clk = 0;

    #5 j = 1; k = 0; clk = 1; 
    #5 clk = 0;
    #5 j = 0; k = 1; clk = 1; 
    #5 clk = 0;
    #5 j = 1; k = 1; clk = 1; 
    #5 clk = 0;
    #5 j = 0; k = 0; clk = 1; 
    #5 clk = 0;

    #10 $finish;
  end
endmodule
