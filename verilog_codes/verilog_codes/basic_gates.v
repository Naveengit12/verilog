`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:16:40
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(a,b,f,y,x,z,w,c,g);
input a,b;
output f,y,x,z,w,c,g;

not not01(f,a);
and and01(y,a,b);
or or01(z,a,b);
nand nand01(w,a,b);
nor nor01(x,a,b);
xor xor01(c,a,b);
xnor xnor01(g,a,b);
endmodule
