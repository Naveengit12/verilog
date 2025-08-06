`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 09:57:46
// Design Name: 
// Module Name: mux_4to1
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



module mux_4to1(
    input wire[3:0] i0, i1, i2, i3,
    input wire S0, S1,         
    output wire [3:0]Y          
);
    assign Y = S1 ? (S0 ? i3 : i2) : (S0 ? i1 : i0);
endmodule