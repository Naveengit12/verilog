`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:50:50
// Design Name: 
// Module Name: demux_1to8
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


module demux_1to8(I,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);
input I,s0,s1,s2;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire w0,w1,w2;

not not01(w0,s0);
not not02(w1,s1);
not not03(w2,s2);
and and01(y0,w2,w1,w0,I);
and and02(y1,w2,w1,s0,I);
and and03(y2,w2,s1,w0,I);
and and04(y3,w2,s1,s0,I);
and and05(y4,s2,w1,w0,I);
and and06(y5,s2,w1,s0,I);
and and07(y6,s2,s1,w0,I);
and and08(y7,s2,s1,s0,I);
endmodule
