`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 12:23:58
// Design Name: 
// Module Name: mux_8to1
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

module Mux_8to1(
    input  [7:0] in,    
    input  [2:0] sel,    
    output out           
);

    wire [7:0] and_out;  
    wire [7:0] sel_n;     

    not (sel_n[0], sel[0]);
    not (sel_n[1], sel[1]);
    not (sel_n[2], sel[2]);
    and (and_out[0], in[0], sel_n[2], sel_n[1], sel_n[0]);  
    and (and_out[1], in[1], sel_n[2], sel_n[1], sel[0]);   
    and (and_out[2], in[2], sel_n[2], sel[1], sel_n[0]);    
    and (and_out[3], in[3], sel_n[2], sel[1], sel[0]);      
    and (and_out[4], in[4], sel[2], sel_n[1], sel_n[0]);    
    and (and_out[5], in[5], sel[2], sel_n[1], sel[0]);      
    and (and_out[6], in[6], sel[2], sel[1], sel_n[0]);      
    and (and_out[7], in[7], sel[2], sel[1], sel[0]);       
   
    or (out, and_out[0], and_out[1], and_out[2], and_out[3],
              and_out[4], and_out[5], and_out[6], and_out[7]);

endmodule


