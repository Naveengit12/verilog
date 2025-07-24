`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:02:23
// Design Name: 
// Module Name: and_gate
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
module and_gate(input a, b, output y);

  supply1 vdd;
  supply0 gnd;
  wire w;

  pmos p1(y, vdd, a);
  pmos p0(y, vdd, b);
  nmos n1(w, gnd, a);
  nmos n0(y, w, b);

endmodule
