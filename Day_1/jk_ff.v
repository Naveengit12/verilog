`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 22:53:53
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(j,k,clk,q,q_bar);
 input j,k,clk;
 output q,q_bar;
 wire w1,w2;
 nand nand01(w1, q_bar,j,clk);
 nand nand02(w2, q,k,clk);
 nand nand03(q, w1,q_bar);
 nand nand04(q_bar, w2,q);
endmodule
