`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 13:12:37
// Design Name: 
// Module Name: cmos_inverter_tb
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
////////////////////////////////////////////////////////////////////////////
module tb_cmos_inverter;
  reg in;
  wire out;

  cmos_inverter uut(.out(out),.in(in));

  initial begin
    $display("IN | OUT");
    in = 0; #10; $display("%b|%b", in,out);
    in = 1; #10; $display("%b|%b", in,out);
    $finish;
  end
endmodule
