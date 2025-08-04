`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 10:56:15
// Design Name: 
// Module Name: mult_divis_function
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


module mult_divis_function;
//function to get multipliction
function[7:0]get_mult(input integer x,input integer y);
get_mult=x*y;
endfunction

//function to get division
function[7:0]get_divis(input integer x, input integer y);
get_divis=x/y;
endfunction

initial begin
$display("get_mult(20,5)=%d",get_mult(20,5));
$display("get_divis(20,5)=%d",get_divis(20,5));
end
endmodule
