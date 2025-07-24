`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:02:32
// Design Name: 
// Module Name: nand_gate
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
module nand_gate(input a, b, output y);

  supply1 vdd;
  supply0 gnd;
   wire w;

  pmos p1(y, vdd, a);
  pmos p2(y, vdd, b);
  nmos n1(y, w, a);
  nmos n2(w, gnd, b);

endmodule



