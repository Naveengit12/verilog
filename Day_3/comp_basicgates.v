`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 12:07:04
// Design Name: 
// Module Name: comp_basicgates
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
///////////////////////////////////////////////////////////////////////////////

module comp_basicgates(A1,A0,B1,B0,A_eql_B,A_gt_B,A_lt_B);
    input A1, A0, B1, B0;   
    output A_eql_B, A_gt_B, A_lt_B; 
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;

not (w1, A0);
not (w2, B0);
not (w3, A1);
not (w4, B1);

// Less then logic
and (w5,w1,w2,B0);
and (w6,w2,B1);
and (w7,w1,B1,B0);
or (A_lt_B,w5,w6,w7);

// Equality logic
xnor (w8,A1,B1);
xnor (w9,A0,B0);
and (A_eql_B,w8,w9);

// Greater then logic
and (w10,A0,w3,B0);
and (w11,A1,A0,w4);
and (w12,A1,w3);
or (A_gt_B,w10,w11,w12);
endmodule

