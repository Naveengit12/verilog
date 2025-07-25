`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 14:29:20
// Design Name: 
// Module Name: R_C_A
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


module R_C_A(a,b,c_in,c_out,s);
input a,b,c_in;
output c_out,s;


assign s = a^b^c_in;
assign c_out = (a&b) | (b&c_in) | (a&c_in);
endmodule
