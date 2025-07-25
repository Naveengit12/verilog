`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 11:05:58
// Design Name: 
// Module Name: full_A
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


module full_A(a,b,c_in,sum,c_out);
input a,b,c_in;
output sum,c_out;
wire w1,w2,w3,w4;

assign sum = (a ^ b ^ c_in);
assign c_out = (a & b) | (b & c_in) | (a & c_in);
endmodule
