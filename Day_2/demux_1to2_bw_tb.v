`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 16:55:06
// Design Name: 
// Module Name: demux_1to2_bw_tb
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


module demux_1to2_bw_tb;
 reg i,sel;
 wire y0, y1;

  demux_1to2_bw uut (
    .i(i),
    .sel(sel),
    .y0(y0),
    .y1(y1)
  );

  initial begin
    $display("sel i | y0 y1");
    $monitor(" %b   %b |  %b  %b", sel, i, y0, y1);
    sel=0; i=0; #10;
    sel=0; i=1; #10;
    sel=1; i=0; #10;
    sel=1; i=1; #10;
    $finish;
    end
endmodule
