`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 17:03:29
// Design Name: 
// Module Name: demux_1to8_tb
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

module mux_1to8_tb;
  reg I, s0, s1, s2;
  wire y0, y1, y2, y3, y4, y5, y6, y7;

  demux_1to8 uut(
    .I(I), .s0(s0), .s1(s1), .s2(s2),
    .y0(y0), .y1(y1), .y2(y2), .y3(y3),
    .y4(y4), .y5(y5), .y6(y6), .y7(y7)
  );

  initial begin
  I = 1;
    $display(" s2 s1 s0 | y0 y1 y2 y3 y4 y5 y6 y7 ");
  s2 = 0; s1 = 0; s0 = 0; #10;
    $display("  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b", 
             s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);
  s2 = 0; s1 = 0; s0 = 1; #10;
    $display("  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b", 
             s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);
  s2 = 0; s1 = 1; s0 = 0; #10;
    $display("  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b", 
             s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);
  s2 = 0; s1 = 1; s0 = 1; #10;
    $display("  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b", 
             s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);
  s2 = 1; s1 = 0; s0 = 0; #10;
    $display("  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b", 
             s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);
  s2 = 1; s1 = 0; s0 = 1; #10;
    $display("  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b", 
             s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);
  s2 = 1; s1 = 1; s0 = 0; #10;
    $display("  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b", 
             s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);
  s2 = 1; s1 = 1; s0 = 1; #10;
    $display("  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b", 
             s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);
    $finish;
  end
endmodule


