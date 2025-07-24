`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:54:56
// Design Name: 
// Module Name: half_add_tb
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


module half_add_tb;
reg a,b;
wire sum,carry;

half_add uut(.a(a), .b(b), .sum(sum), .carry(carry));

initial begin
    $display(" a  b | sum carry");
    a = 0; b = 0; #10;
    $display(" %b  %b |  %b   %b", a,b,sum,carry);
    a = 0; b = 1; #10;
    $display(" %b  %b |  %b   %b", a,b,sum,carry);
    a = 1; b = 0; #10;
    $display(" %b  %b |  %b   %b", a,b,sum,carry);
    a = 1; b = 1; #10;
    $display(" %b  %b |  %b   %b", a,b,sum,carry);
    $finish;
    end
endmodule
