`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 18:22:47
// Design Name: 
// Module Name: full_adder_tb
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

module full_adder_tb;
  reg a, b, cin;
  wire sum, cout;
  integer i;

  full_adder u0 (.a(a), .b(b), .cin(cin),
         .sum(sum), .cout(cout));

  initial begin
    {a, b, cin} = 1;

    $monitor ("T=%0t a=%0b b=%0b cin=%0b cout=%0b sum=%0b",
              $time, a, b, cin, cout, sum);

    for (i = 0; i < 10; i = i+1) begin
      #1  a <= $random % 2;
          b <= $random % 2;
          cin <= $random % 2;
    end
  end
endmodule

