`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 19:21:30
// Design Name: 
// Module Name: mux_2to1_gates
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


module mux_2to1_gates(
    input  wire A,
    input  wire B,
    output wire AND_out,
    output wire OR_out,
    output wire NAND_out,
    output wire NOR_out,
    output wire XOR_out,
    output wire XNOR_out
);

 assign A=1,B=1;   
assign AND_out = (A) ? B : 1'b0;   
assign OR_out = (A) ? 1'b1 : B;  
assign NAND_out = (A) ? ~B : 1'b1;   
assign NOR_out = (A) ? 1'b0 : ~B;   
assign XOR_out = (A) ? ~B : B;    
assign XNOR_out = (A) ? B : ~B;   
endmodule
