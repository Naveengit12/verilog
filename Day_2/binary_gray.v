`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 18:24:54
// Design Name: 
// Module Name: binary_gray
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


module binary_gray(
input  [3:0]B,    
 output [3:0] gray 
 );     

  assign gray[0] = B[1] ^ B[0];
  assign gray[1] = B[2] ^ B[1];
  assign gray[2] = B[3] ^ B[2];
   assign gray[3] =B[3];
 endmodule
