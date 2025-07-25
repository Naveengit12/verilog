`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:40:48
// Design Name: 
// Module Name: nor_gate_tb
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


module nor_gate_tb;
  reg a, b;
  wire f;

  nor_gate uut(.a(a),.b(b),.f(f));

  initial begin
    $display("ab|y");
    a = 0; b = 0; #10; $display("%b %b | %b", a,b,f);
    a = 0; b = 1; #10; $display("%b %b | %b", a,b,f);
    a = 1; b = 0; #10; $display("%b %b | %b", a,b,f);
    a = 1; b = 1; #10; $display("%b %b | %b", a,b,f);
    $finish;
  end
endmodule



