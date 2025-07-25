`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 16:43:20
// Design Name: 
// Module Name: demux_1to2_bw
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


module demux_1to2_bw(
input wire i,     
  input wire sel,       
  output wire y0,       
  output wire y1
  );       
  

  assign y0 = (~sel) & i;
  assign y1 = sel & i;

endmodule
