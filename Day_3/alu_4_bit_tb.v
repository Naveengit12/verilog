`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 16:03:50
// Design Name: 
// Module Name: ALU_4_bit_tb
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


module alu_4_bit_tb;
    reg [3:0] A, B;
    reg [2:0] op;
    wire [3:0] alu_out;
    
    ALU_4_bit uut(A, B, op, alu_out);
    
    initial begin
        A = 4'b1100; B = 4'b1010;
        
        op = 3'b000; #10; $display("CLEAR %b", alu_out);
        op = 3'b001; #10; 
        $display("ADD  : %b + %b = %b", A, B, alu_out);
        op = 3'b010; #10; 
        $display("SUB  : %b - %b = %b", A, B, alu_out);
        op = 3'b011; #10; 
        $display("AND  : %b & %b = %b", A, B, alu_out);
        op = 3'b100; #10;
         $display("OR   : %b | %b = %b", A, B, alu_out);
        op = 3'b101; #10; 
        $display("NOT A: ~%b = %b", A, alu_out);
        op = 3'b110; #10; 
        $display("NOT B: ~%b = %b", B, alu_out);
        op = 3'b111; #10;
         $display("CLEAR: %b", alu_out);
    end
endmodule

