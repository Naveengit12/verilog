`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:22:19
// Design Name: 
// Module Name: and_gate_tb
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
module tb_and_gate;
  reg a,b;
  wire y;

  and_gate uut(.a(a),.b(b),.y(y));

  initial begin
    $display("A B | Y");
    a=0; b=0; #10; $display("%b %b | %b", a,b,y);
    a=0; b=1; #10; $display("%b %b | %b", a,b,y);
    a=1; b=0; #10; $display("%b %b | %b", a,b,y);
    a=1; b=1; #10; $display("%b %b | %b", a,b,y);
    $finish;
  end
endmodule

