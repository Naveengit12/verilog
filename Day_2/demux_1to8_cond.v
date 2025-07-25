`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 17:23:25
// Design Name: 
// Module Name: demux_1to8_cond
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

module demux_1to8_cond(
  input wire A,             
  input wire [2:0] sel,       
  output wire [7:0]y        
);

  assign y[0]=(sel == 3'b000) ?A:1'b0;
  assign y[1]=(sel == 3'b001) ?A:1'b0;
  assign y[2]=(sel == 3'b010) ?A:1'b0;
  assign y[3]=(sel == 3'b011) ?A:1'b0;
  assign y[4]=(sel == 3'b100) ?A:1'b0;
  assign y[5]=(sel == 3'b101) ?A:1'b0;
  assign y[6]=(sel == 3'b110) ?A:1'b0;
  assign y[7]=(sel == 3'b111) ?A:1'b0;
  endmodule

