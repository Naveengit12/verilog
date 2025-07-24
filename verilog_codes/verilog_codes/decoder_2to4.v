`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 19:09:00
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


module decoder_2to4(
input En,
input [1:0]a,
output [3:0]d
 );
 
wire En_bar, a1_bar, a0_bar;
not not01(En_bar, En);
not not02(a1_bar, En);
nand nand01(d[0],En_bar, a1_bar, a0_bar);
nand nand02(d[1],En_bar, a1_bar, a[0]);
nand nand03(d[2],En_bar, a[1], a0_bar);
nand nand04(d[3],En_bar, a[1], a[0]);
endmodule
