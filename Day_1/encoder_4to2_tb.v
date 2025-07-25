`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 17:46:13
// Design Name: 
// Module Name: encoder_4to2_tb
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

module encoder_4to2_tb;
  reg i0, i1, i2, i3;
  wire y0, y1;
  
  encoder_4to2 uut (
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .y0(y0), .y1(y1)
  );

  initial begin

    $display(" i3 i2 i1 i0 | y1 y0 ");
    {i3, i2, i1, i0} = 4'b0001; #10; 
    $display("  %b  %b  %b  %b |  %b  %b", i3, i2, i1, i0, y1, y0);
    {i3, i2, i1, i0} = 4'b0010; #10; 
    $display("  %b  %b  %b  %b |  %b  %b", i3, i2, i1, i0, y1, y0);
    {i3, i2, i1, i0} = 4'b0100; #10; 
    $display("  %b  %b  %b  %b |  %b  %b", i3, i2, i1, i0, y1, y0);
    {i3, i2, i1, i0} = 4'b1000; #10;
    $display("  %b  %b  %b  %b |  %b  %b", i3, i2, i1, i0, y1, y0);
    $finish;
  end
endmodule

