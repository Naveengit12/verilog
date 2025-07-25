`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 11:15:37
// Design Name: 
// Module Name: full_A_tb
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


module full_A_tb;
reg a,b,c_in;
wire sum,c_out;

full_A uut(.a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out));

initial begin
$display("a b c_in | sum c_out");
a=0; b=0; c_in=0; #10;
a=0; b=0; c_in=1; #10;
a=0; b=1; c_in=0; #10;
a=0; b=1; c_in=1; #10;
a=1; b=0; c_in=0; #10;
a=1; b=0; c_in=1; #10;
a=1; b=1; c_in=0; #10;
a=1; b=1; c_in=1; #10;
$finish;
end
endmodule
