`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 13:44:07
// Design Name: 
// Module Name: mux_4to1
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
module mux_4to1(i0,i1,i2,i3,s0,s1,y,s1_bar,s0_bar);
input i0,i1,i2,i3,s0,s1;
output y,s1_bar,s0_bar;
wire w1,w2,w3,w4;

not not01(s0_bar,s0);
not not02(s1_bar,s1);
and and01(w1,s1_bar,s0_bar,i0);
and and02(w2,s1_bar,s0,i1);
and and03(w3,s1,s0_bar,i2);
and and04(w4,s1,s0,i3);
or or01(y,w1,w2,w3,w4);
endmodule
