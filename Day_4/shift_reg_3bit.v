`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 12:01:25
// Design Name: 
// Module Name: shift_reg_3bit
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


module shift_reg_3bit(
input clk,rst,d_in,
output reg y );

reg Q0,Q1,Q2;
always @(posedge rst or posedge clk)
begin
if(rst)begin
Q0 <=0;
Q1 <=0;
Q2 <=0;
y <=0;
end
else begin
Q0 <=d_in;
Q1 <=Q0;
Q2 <=Q1;
y <=Q2; // assign output here
end
end
endmodule

