`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 12:57:53
// Design Name: 
// Module Name: nand_switch_level
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


module nand_switch_level(output Out, input A, B);
  wire w1, w2, w3;

  supply1 Vdd;  
  supply0 gnd;   

  // PMOS transistors: source connected to Vdd
  pmos p1(out, Vdd, A);  
  pmos p2(Out, w1, B);  

  // NMOS transistors: drain connected to output
  nmos n1(Out, w2, A); 
  nmos n2(w2, gnd, B);  

endmodule



