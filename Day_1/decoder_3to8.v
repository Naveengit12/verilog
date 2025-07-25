`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:13:29
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8(i0,i1,i2,y0,y1,y2,y3,y4,y5,y6,y7);
input i0,i1,i2;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire i0_bar,i1_bar,i2_bar;

not not01(i0_bar,i0);
not not02(i1_bar,i1);
not not03(i2_bar,i2);
and and01(y0,i0_bar,i1_bar,i2_bar);
and and02(y1,i0_bar,i1_bar,i2);
and and03(y2,i0_bar,i1,i2_bar);
and and04(y3,i0_bar,i1,i2);
and and05(y4,i0,i1_bar,i2_bar);
and and06(y5,i0,i1_bar,i2);
and and07(y6,i0,i1,i2_bar);
and and08(y7,i0,i1,i2);
endmodule
