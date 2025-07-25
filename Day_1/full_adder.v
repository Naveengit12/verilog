`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 18:13:02
// Design Name: 
// Module Name: full_adder
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
module full_adder(input a,b,cin, output sum,cout);

	wire s1,net1,net2;

	xor (s1,a,b);
	and (net1,a,b);
    xor (sum,s1,cin);
	and (net2,s1,cin);
    xor (cout, net1, net2);
endmodule

