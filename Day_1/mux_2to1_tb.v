`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 17:52:13
// Design Name: 
// Module Name: mux_2to1_tb
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

module mux_2to1_tb;
  reg a, b, sel;
  wire out;
  integer i;

  mux_2to1 u0 (.a(a), .b(b), .sel(sel), .out(out));

  initial begin
    {a,b,sel} = 0;

    $monitor("T=%0t | a=%0b b=%0b sel=%0b => out=%0b", $time,a,b,sel,out);

    for (i = 0; i < 10; i = i + 1) begin
      #5;
      a   = $random % 2;
      b   = $random % 2;
      sel = $random % 2;
    end

    #10 $finish;
  end
endmodule

