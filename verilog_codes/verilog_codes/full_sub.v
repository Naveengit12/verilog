`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 22:05:14
// Design Name: 
// Module Name: full_sub
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


 module full_sub(a,b,cin,diff,barrow);
input a,b,cin;
output diff,barrow;
wire w1,w2,w3;

not not01(s1,a);
not not02(s2,w1);
or or01(b,w2,w3);
and and01(w2,s1,b);
and and02(w3,s2,cin);
xor xor01(w1,a,b);
xor xor02(diff,w1,cin);
   
endmodule
