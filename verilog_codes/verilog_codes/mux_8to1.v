`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 15:21:06
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,s0_bar,s1_bar,s2_bar,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output s0_bar,s1_bar,s2_bar,y;
wire w1,w2,w3,w4,w5,w6,w7,w8;

not not01(s2_bar,s2);
not not02(s1_bar,s1);
not notO3(s0_bar,s0);
or or01(y,w1,w2,w3,w4,w5,w6,w7);
and and01(w1,s2_bar,s1_bar,s0_bar,i0);
and and02(w2,s2_bar,s1_bar,s0,i1);
and and03(w3,s2_bar,s1,s0_bar,i2);
and and04(w4,s2_bar,s1,s0,i3);
and and05(w5,s2,s1_bar,s0_bar,i4);
and and06(w6,s2,s1_bar,s0,i5);
and and07(w7,s2,s1,s0_bar,i6);
and and08(w8,s2,s1,s0,i7);
endmodule
