`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 13:30:07
// Design Name: 
// Module Name: FA_using_HA
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

module FA_using_HA (
    input A, B, Cin,
    output Sum, Cout
);
    wire sum1, carry,carry1;

    
    assign sum1   = A ^ B;
    assign carry = A & B;

    
    assign Sum    = sum1 ^ Cin;
    assign carry1 = sum1 & Cin;
    assign Cout   = carry | carry1;
endmodule

   