`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 18:55:03
// Design Name: 
// Module Name: gray_binary
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


module gray_binary (
  input  [2:0]G,    
  output [2:0]B      
);

  assign B[2] = G[2];
  assign B[1] = G[2] ^ G[1];
  assign B[0] = G[2] ^ G[1] ^ G[0];
endmodule
