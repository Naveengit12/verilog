`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 15:13:39
// Design Name: 
// Module Name: mux_4to1_tb
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

module tb_mux_4to1;
  reg i0, i1, i2, i3;
  reg s0, s1;
  wire y, s0_bar, s1_bar;

  mux_4to1 uut (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y),
    .s0_bar(s0_bar),
    .s1_bar(s1_bar)
  );

  initial begin
    $display("s1 s0 | i0 i1 i2 i3 | y");
    {s1, s0} = 2'b00; {i0, i1, i2, i3} = 4'b1000; #10;
    $display(" %b  %b |  %b  %b  %b  %b | %b", s1, s0, i0, i1, i2, i3, y);
    {s1, s0} = 2'b01; {i0, i1, i2, i3} = 4'b0100; #10;
    $display(" %b  %b |  %b  %b  %b  %b | %b", s1, s0, i0, i1, i2, i3, y);
    {s1, s0} = 2'b10; {i0, i1, i2, i3} = 4'b0010; #10;
    $display(" %b  %b |  %b  %b  %b  %b | %b", s1, s0, i0, i1, i2, i3, y);
    {s1, s0} = 2'b11; {i0, i1, i2, i3} = 4'b0001; #10;
    $display(" %b  %b |  %b  %b  %b  %b | %b", s1, s0, i0, i1, i2, i3, y);

    $finish;
  end
endmodule

