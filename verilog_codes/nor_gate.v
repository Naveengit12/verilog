`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:29:42
// Design Name: 
// Module Name: nor_gate
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
module nor_gate(input a, b, output f);
  supply1 vdd;
  supply0 gnd;
   wire w;

  pmos p1(f,vdd,a);
  pmos p2(f,vdd,b);
  nmos n1(f,gnd,a);
  nmos n2(f,gnd,b);

endmodule



