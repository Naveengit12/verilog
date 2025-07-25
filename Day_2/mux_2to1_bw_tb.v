`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 15:58:39
// Design Name: 
// Module Name: mux_2to1_bw_tb
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


module mux_2to1_bw_tb;
reg a,b,s;
  wire c;

  mux_2to1_bw uut(.a(a), .b(b), .s(s), .c(c));

  initial begin
    $display("a b s | c");
    $monitor("a=%b b=%b s=%b | c=%b",a,b,s,c);
    a=0; b=0; s=0; #10;
    a=0; b=0; s=1; #10;
    a=0; b=1; s=0; #10;
    a=0; b=1; s=1; #10;
    a=1; b=0; s=0; #10;
    a=1; b=0; s=1; #10;
    a=1; b=1; s=0; #10;
    a=1; b=1; s=1; #10;
    $finish;
  end
 endmodule
