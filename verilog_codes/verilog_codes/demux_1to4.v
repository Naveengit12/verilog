`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:16:22
// Design Name: 
// Module Name: demux_1to4
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


module demux_1to4(I,s1,s0,y0,y1,y2,y3);
input s1,s0,I;
output y0,y1,y2,y3;
wire w1,w2;

not not01(w1,s1);
not not02(w2,s0);
and and01(y0,w1,w2,I);
and ando2(y1,w1,s0,I);
and and03(y2,s1,w2,I);
and and04(y3,s1,s0,I);
endmodule
