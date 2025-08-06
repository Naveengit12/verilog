`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 10:25:34
// Design Name: 
// Module Name: mux_4to1_tb
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


module mux_4to1_tb;
    reg [3:0] i0, i1, i2, i3;
    reg S0,S1;    
    wire [3:0] Y;     
    
    mux_4to1 uut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .S0(S0), .S1(S1), .Y(Y));

    initial begin
        $display("S1 S0 | i3   i2   i1   i0   | Y");
        $monitor("S1=%b,S0=%b  | i3=%b,i2=%b,i1=%b,i0=%b | Y=%b", S1, S0, i3, i2, i1, i0, Y);

        i0 = 4'b0001;
        i1 = 4'b0010;
        i2 = 4'b0100;
        i3 = 4'b1000;

        S1=0; S0=0; #10;
        S1=0; S0=1; #10; 
        S1=1; S0=0; #10; 
        S1=1; S0=1; #10;  
        $finish;
    end
endmodule

