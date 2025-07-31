`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 12:52:02
// Design Name: 
// Module Name: mux_8to1_loop_tb
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


module mux_8to1_loop_tb;

  reg  [7:0] in;
  reg  [2:0] sel;
  wire y;

  
  mux_8to1_loop uut (.in(in),.sel(sel),.y(y));

  initial begin
    $monitor("Time=%d | sel=%b | y=%b | in[sel]=%b", $time, sel, y, in[sel]);
  end

  initial begin
    in = 8'b11110000;  

    sel = 3'd0; #10;
    sel = 3'd1; #10;
    sel = 3'd2; #10;
    sel = 3'd3; #10;
    sel = 3'd4; #10;
    sel = 3'd5; #10;
    sel = 3'd6; #10;
    sel = 3'd7; #10;

    #10 $finish;
  end

endmodule

