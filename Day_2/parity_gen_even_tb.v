`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 19:11:11
// Design Name: 
// Module Name: parity_gen_even_tb
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


module parity_gen_even_tb;
reg [2:0] data;
wire parity;

  
  parity_gen_even uut (.data(data), .parity(parity));

  initial begin
    $display("Data | Parity");
    data = 3'b000; #10;
    data = 3'b001; #10;
    data = 3'b010; #10;
    data = 3'b011; #10;
    data = 3'b100; #10;
    data = 3'b101; #10;
    data = 3'b110; #10;
    data = 3'b111; #10;
    $finish;
  end
endmodule


