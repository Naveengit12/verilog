`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 19:44:37
// Design Name: 
// Module Name: mux_2to1_gates_tb
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

module mux_2to1_gates_tb;
    reg A, B;
    wire AND_out, OR_out, NAND_out, NOR_out, XOR_out, XNOR_out;

    // Instantiate the module under test
    mux_2to1_gates uut (
        .A(A),
        .B(B),
        .AND_out(AND_out),
        .OR_out(OR_out),
        .NAND_out(NAND_out),
        .NOR_out(NOR_out),
        .XOR_out(XOR_out),
        .XNOR_out(XNOR_out)
    );

    initial begin
        $display("A B | AND OR NAND NOR XOR XNOR");
        $monitor("A=%b,B=%b |  AND_out=%b,OR_out=%b,NAND_out=%b,NOR_out=%b,XOR_out=%b,XNOR_out=%b",
                 A, B, AND_out, OR_out, NAND_out, NOR_out, XOR_out, XNOR_out);

       begin
        A = 0; B = 0; #100;
        A = 0; B = 1; #100;
        A = 1; B = 0; #100;
        A = 1; B = 1; #100;
        $finish;
    end
    end
endmodule

