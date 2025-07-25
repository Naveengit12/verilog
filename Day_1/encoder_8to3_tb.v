`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 18:09:24
// Design Name: 
// Module Name: encoder_8to3_tb
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


module encoder_8to3_tb;
reg i0,i1,i2,i3,i4,i5,i6,i7;
  wire y0,y1,y2;

  encoder_8to3 uut(i0,i1,i2,i3,i4,i5,i6,i7,y0,y1,y2);

  initial begin
   $display(" i7 i6 i5 i4 i3 i2 i1 i0 | y2 y1 y0");
   {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00000001; #10;
    $display("  %b  %b  %b  %b  %b  %b  %b  %b |  %b  %b  %b", 
              i7,i6,i5,i4,i3,i2,i1,i0, y2,y1,y0);
   {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00000010; #10;
    $display("  %b  %b  %b  %b  %b  %b  %b  %b |  %b  %b  %b", 
              i7,i6,i5,i4,i3,i2,i1,i0, y2,y1,y0);
   {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00000100; #10;
    $display("...");
   {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b10000000; #10;
    $display("  %b  %b  %b  %b  %b  %b  %b  %b |  %b  %b  %b", 
              i7,i6,i5,i4,i3,i2,i1,i0, y2,y1,y0);
    $finish;
  end
endmodule
