`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 19:26:33
// Design Name: 
// Module Name: parity_gen_odd
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

module parity_gen_odd (
  input [2:0]data,     
  output  parity     
);

   assign parity = data[2] ^ data[1] ^ data[0];  
endmodule

