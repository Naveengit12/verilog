`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 17:04:54
// Design Name: 
// Module Name: mux_2to1
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


module mux_2x1 ( input a, b, sel, output out);
	wire sel_n;
	wire out_0;

	not (sel_n, sel);

	and (out_0, a, sel);
	and (out_1, b, sel_n);

	or (out, out_0, out_1);
endmodule
