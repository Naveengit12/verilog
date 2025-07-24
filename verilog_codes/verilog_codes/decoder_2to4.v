`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 18:17:15
// Design Name: 
// Module Name: decoder_2to4
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


module decoder_2to4(i0,i1,y0,y1,y2,y3);
input i0,i1;
output y0,y1,y2,y3;
wire i0_bar,i1_bar;

not not01(i0_bar,i0);
not not02(i1_bar,i1);
and and01(y0,i0_bar,i1_bar);
and and02(y1,i0_bar,i1);
and and03(y2,i0,i1_bar);
and and04(y3,i0,i1);
endmodule
