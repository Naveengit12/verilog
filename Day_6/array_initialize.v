`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 18:49:18
// Design Name: 
// Module Name: array_initialize
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


module array_initialize;
 parameter DEPTH = 10;   // Parameters
  parameter WIDTH = 8;

  
  reg [WIDTH-1:0] mem [0:DEPTH-1];  // 10x8 array declaration

  integer i;

  initial begin
  
    for (i = 0; i < DEPTH; i = i + 1) begin      // Initialize all locations to 0 at 0ns
      mem[i] = 8'd101;
    end
    end
endmodule

