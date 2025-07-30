`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 13:21:02
// Design Name: 
// Module Name: nor_switch_level
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

module nor_switch_level(output y, input A, B);
 wire w;

  supply1 Vdd;  
  supply0 GND; 

  
  pmos p1(w, Vdd, A);  
  pmos p2(y, w, B);    
  nmos n1(y, GND, A);  
  nmos n2(y, GND, B); 

endmodule
