`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 18:58:07
// Design Name: 
// Module Name: gray_binary_tb
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


module gray_binary_tb;
reg [2:0]G;
wire [2:0]B;

  
  gray_binary uut (.G(G), .B(B));

  initial begin
    $display("G | B");
    $monitor("G=%b | B=%b",G,B);
    G = 3'b000; #10;
    G = 3'b001; #10;
    G = 3'b011; #10;
    G = 3'b010; #10;
    G = 3'b110; #10;
    G = 3'b111; #10;
    G = 3'b101; #10;
    G = 3'b100; #10;
    $finish;
  end
endmodule

