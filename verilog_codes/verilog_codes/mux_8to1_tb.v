`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 15:55:34
// Design Name: 
// Module Name: mux_8to1_tb
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

module tb_mux_8to1;
  reg i0, i1, i2, i3, i4, i5, i6, i7;
  reg s0, s1, s2;
  wire y;
  wire s0_bar, s1_bar, s2_bar;
  
  mux_8to1 uut (
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .i4(i4), .i5(i5), .i6(i6), .i7(i7),
    .s0(s0), .s1(s1), .s2(s2),
    .s0_bar(s0_bar), .s1_bar(s1_bar), .s2_bar(s2_bar),
    .y(y)
  );

 initial begin
    $display("s2 s1 s0 | i0 i1 i2 i3 i4 i5 i6 i7 | y");
    {s2, s1, s0} = 3'b000; {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b10000000; #10;
    $display(" %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b | %b",
              s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7, y);

    {s2, s1, s0} = 3'b001; {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b01000000; #10;
    $display(" %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b | %b",
              s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7, y);

    {s2, s1, s0} = 3'b010; {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00100000; #10;
    $display(" %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b | %b",
              s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7, y);

    {s2, s1, s0} = 3'b011; {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00010000; #10;
    $display(" %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b | %b",
              s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7, y);

    {s2, s1, s0} = 3'b100; {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00001000; #10;
    $display(" %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b | %b",
              s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7, y);

   
    {s2, s1, s0} = 3'b101; {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00000100; #10;
    $display(" %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b | %b",
              s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7, y);

    {s2, s1, s0} = 3'b110; {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00000010; #10;
    $display(" %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b | %b",
              s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7, y);
              
    {s2, s1, s0} = 3'b111; {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00000001; #10;
    $display(" %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b | %b",
              s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7, y);

    $finish;
  end
endmodule

