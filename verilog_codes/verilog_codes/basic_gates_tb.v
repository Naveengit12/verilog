`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:26:37
// Design Name: 
// Module Name: basic_gates_tb
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


module basic_gates_tb;
reg a,b;
wire f,y,x,w,c,z,g;

basic_gates uut(".a(a), .b(b), .f(f), .y(y)), .x(x), .z(z), .g(g), .w(w), .c(c");
initial begin

    $display("a b | NOT AND OR  NAND NOR XOR XNOR");

    a = 0; b = 0; #10;
    $display("%b %b |  %b %b %b %b %b %b %b", a, b, f, y, z, w, x, c, g);

    a = 0; b = 1; #10;
    $display("%b %b |  %b %b %b %b %b %b %b", a, b, f, y, z, w, x, c, g);

    a = 1; b = 0; #10;
    $display("%b %b |  %b %b %b %b %b %b %b", a, b, f, y, z, w, x, c, g);

    a = 1; b = 1; #10;
    $display("%b %b |  %b %b %b %b %b %b %b", a, b, f, y, z, w, x, c, g);

    $finish;
  end
endmodule
