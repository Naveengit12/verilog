`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 16:32:52
// Design Name: 
// Module Name: mux_8to1_cond_tb
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


module mux_8to1_cond_tb;
reg [7:0] I;        
  reg [2:0] sel;      
  wire y;              

  mux_8to1_cond uut (.I(I), .sel(sel), .y(y));

  initial begin
    $display("Sel  |  y");
    $monitor("%b  |  %b", sel, y);
    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;
    $finish;
  end
endmodule
