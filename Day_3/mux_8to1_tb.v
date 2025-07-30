`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 12:36:33
// Design Name: 
// Module Name: mux_8to1_tb
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


module mux_8to1_tb;

    reg [7:0] in;         
    reg [2:0] sel;         
    wire out;              

   
    mux_8to1 uut ( .in(in), .sel(sel), .out(out));

    initial begin
        $display("Time\ sel\ in\\out");
        $monitor("%0t\ %b\ %b\ %b", $time, sel, in, out);

       
        in = 8'b00000000; sel = 3'b000; #10;  
        in = 8'b00000001; sel = 3'b001; #10;  
        in = 8'b00000010; sel = 3'b010; #10;  
        in = 8'b00000100; sel = 3'b011; #10;  
        in = 8'b00001000; sel = 3'b100; #10;  
        in = 8'b00010000; sel = 3'b101; #10;  
        in = 8'b00100000; sel = 3'b110; #10; 
        in = 8'b01000000; sel = 3'b111; #10;  
        $finish;
    end
endmodule


