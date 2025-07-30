`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 16:42:53
// Design Name: 
// Module Name: alu_4_bit
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


module alu_4_bit(A,B,op,alu_out);
    input [3:0] A, B;          
    input [2:0] op;           
    output [3:0] alu_out;  
    
    reg [3:0] result;

    always @(*)
    begin
        case(op)
            3'b000: result = 4'b0000;   // Clear (all zeros)
            3'b001: result = A + B;     // Addition
            3'b010: result = A - B;     // Subtraction
            3'b011: result = A & B;     // Bitwise AND
            3'b100: result = A | B;     // Bitwise OR
            3'b101: result = ~A;        // Bitwise NOT of A
            3'b110: result = ~B;        // Bitwise NOT of B
            3'b111: result = 4'b0000;   // Clear (all zeros)
            default: result = 4'b0000;  // Good practice to include default
        endcase
    end
    
    assign alu_out = alu_out;  // Connect the result to output
endmodule

