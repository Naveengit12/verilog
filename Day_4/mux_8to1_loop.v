`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 12:40:53
// Design Name: 
// Module Name: mux_8to1_loop
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


module mux_8to1_loop(
input [7:0] in,
input [2:0] sel,
output reg y);

integer i;
always@(*)
begin
y=0;
for(i=0; i<8; i=i+1)
begin
if (sel == i)
y=in[i];
end
end
endmodule
