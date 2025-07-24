`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:34:14
// Design Name: 
// Module Name: decoder_3to8_tb
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


module decoder_3to8_tb;
 reg i0, i1, i2;
  wire y0, y1, y2, y3, y4, y5, y6, y7;

  decoder_3to8 uut (
    .i0(i0), .i1(i1), .i2(i2),
    .y0(y0), .y1(y1), .y2(y2), .y3(y3),
    .y4(y4), .y5(y5), .y6(y6), .y7(y7)
  );

  initial begin
    $display("i2  i1  i0   ||   y7 y6 y5 y4 y3 y2 y1 y0");
     i2=0; i1=0; i0=0; #10;
    $display("%b %b %b   ||    %b %b %b %b %b %b %b %b",i2,i1,i0,y7,y6,y5,y4,y3,y2,y1,y0);

    i2=0; i1=0; i0=1; #10;
    $display("%b %b %b   ||    %b %b %b %b %b %b %b %b",i2,i1,i0,y7,y6,y5,y4,y3,y2,y1,y0);

    i2=0; i1=1; i0=0; #10;
    $display("%b %b %b   ||    %b %b %b %b %b %b %b %b",i2,i1,i0,y7,y6,y5,y4,y3,y2,y1,y0);

    i2=0; i1=1; i0=1; #10;
    $display("%b %b %b   ||    %b  %b  %b  %b  %b  %b  %b  %b",i2,i1,i0, y7,y6,y5,y4,y3,y2,y1,y0);

    i2=1; i1=0; i0=0; #10;
    $display("%b %b %b   ||    %b %b %b %b %b %b %b %b",i2,i1,i0,y7,y6,y5,y4,y3,y2,y1,y0);

    i2=1; i1=0; i0=1; #10;
    $display("%b %b %b   ||    %b %b %b %b %b %b %b %b",i2,i1,i0,y7,y6,y5,y4,y3,y2,y1,y0);

    i2=1; i1=1; i0=0; #10;
    $display("%b %b %b   ||    %b  %b  %b  %b  %b  %b  %b  %b",i2,i1,i0,y7,y6,y5,y4,y3,y2,y1,y0);

    i2=1; i1=1; i0=1; #10;
    $display("%b %b %b   ||    %b %b %b %b %b %b %b %b",i2,i1,i0,y7,y6,y5,y4,y3,y2,y1,y0);
    $finish;
    end
    endmodule
