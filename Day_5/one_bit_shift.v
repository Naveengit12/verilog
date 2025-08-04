`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 12:12:49
// Design Name: 
// Module Name: one_bit_shift
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

module one_bit_shift;
function[7:0] shift_right(input [7:0] value);
shift_right=value>>1;
endfunction
initial begin
$display("shift_right=%d",shift_right(8'b01011011));
end
endmodule

