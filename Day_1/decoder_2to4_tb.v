`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:06:43
// Design Name: 
// Module Name: decoder_2to4_tb
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


module decoder_2to4_tb;
reg i0, i1;
wire y0, y1, y2, y3;

 decoder_2to4 uut(i0, i1, y0, y1, y2, y3);

  initial begin
     $display("i1 i0 | y3 y2 y1 y0");
     {i1, i0} = 2'b00; #10;
     $display(" %b  %b |  %b  %b  %b  %b", i1, i0, y3, y2, y1, y0);
     {i1, i0} = 2'b01; #10;
     $display(" %b  %b |  %b  %b  %b  %b", i1, i0, y3, y2, y1, y0);
     {i1, i0} = 2'b10; #10;
     $display(" %b  %b |  %b  %b  %b  %b", i1, i0, y3, y2, y1, y0);
     {i1, i0} = 2'b11; #10;
     $display(" %b  %b |  %b  %b  %b  %b", i1, i0, y3, y2, y1, y0);
     $finish;
  end
endmodule
