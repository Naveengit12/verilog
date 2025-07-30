`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 09:38:58
// Design Name: 
// Module Name: four_bit_RCA
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
module one_bit_RCA (
    input A, B, C_in,
    output Sum, C_out
);
    wire w1, w2, w3, w4;

    xor (w1, A, B);
    xor (Sum, w1, C_in);

    and (w2, A, B);
    and (w3, B, C_in);
    and (w4, A, C_in);
    or  (C_out, w2, w3, w4);
endmodule


module four_bit_RCA (
    input [3:0] A, B,
    input C_in,
    output [3:0] Sum,
    output C_out
);
    wire C1, C2, C3;

    one_bit_RCA U0 (.A(A[0]), .B(B[0]), .C_in(C_in), .Sum(Sum[0]), .C_out(C1));
    one_bit_RCA U1 (.A(A[1]), .B(B[1]), .C_in(C1),   .Sum(Sum[1]), .C_out(C2));
    one_bit_RCA U2 (.A(A[2]), .B(B[2]), .C_in(C2),   .Sum(Sum[2]), .C_out(C3));
    one_bit_RCA U3 (.A(A[3]), .B(B[3]), .C_in(C3),   .Sum(Sum[3]), .C_out(C_out));
endmodule

