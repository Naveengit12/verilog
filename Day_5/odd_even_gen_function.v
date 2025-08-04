`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 10:41:46
// Design Name: 
// Module Name: odd_even_gen_function
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


module odd_even_gen_function;
integer i;

//fuction to get odd numbers
function[7:0]get_odd(input integer n);
get_odd=2*n+1;
endfunction

//function to get even numbers
function[7:0]get_even(input integer n);
get_even=2*n;
endfunction
initial begin
for(i=0; i<8; i=i+1)
$display("get_odd(i)=%d,i=%d", get_odd(i),i);
 
 for(i=0; i<8; i=i+1)
 $display("get_even(i)=%d,i=%d", get_even(i),i);
 end
endmodule
