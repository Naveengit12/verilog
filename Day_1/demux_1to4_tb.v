`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:33:10
// Design Name: 
// Module Name: demux_1to4_tb
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

module tb_demux_1to4;
  reg I, s0, s1;        
  wire y0, y1, y2, y3;

  demux_1to4 uut (
    .I(I),
    .s0(s0),
    .s1(s1),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
  );

  initial begin
    I = 1;
    s1 = 0; s0 = 0;
    #10;
    s1 = 0; s0 = 1;
    #10;
    s1 = 1; s0 = 0;
    #10;
    s1 = 1; s0 = 1;
    #10;

    $finish;
  end
endmodule

