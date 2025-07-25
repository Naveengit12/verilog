`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 16:20:05
// Design Name: 
// Module Name: mux_8to1_cond
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


module mux_8to1_cond(
  input wire [7:0] I,    
  input wire [2:0] sel,     
  output wire y               
  );

  assign y = (sel == 3'b000)?I[0]:
             (sel == 3'b001)?I[1]:
             (sel == 3'b010)?I[2]:
             (sel == 3'b011)?I[3]:
             (sel == 3'b100)?I[4]:
             (sel == 3'b101)?I[5]:
             (sel == 3'b110)?I[6]:
             // Default when sel == 3'b111
                              I[7];   

endmodule
