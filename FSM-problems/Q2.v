`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 15:47:20
// Design Name: 
// Module Name: Q2
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

module Q2(
input clk,
input rst,
input in,
output out );

localparam s0 = 3'd0,
           s1 = 3'd1,
           s2 = 3'd2,
           s3 = 3'd3,
           s4 = 3'd4;
          
  reg[2:0] state,next_state;
  always @(*) begin
  case(state)
  s0: next_state = in ? s1 : s0;            
  s1: next_state = in ? s3 : s2;          
  s2: next_state = in ? s0 : s4;       
  s3: next_state = in ? s2 : s1;          
  s4: next_state = in ? s4 : s3;
  default : next_state = s0;
  endcase
  end
  
  always @(posedge clk or posedge rst) begin
  if(rst)
  state <= s0;
  else
  state <= next_state;
  end
  
  assign out =  (state == s0) ? 1'b1 : 1'b0;           
endmodule