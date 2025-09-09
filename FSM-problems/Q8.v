`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:07:16
// Design Name: 
// Module Name: Q8
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


module Q8(clk,rst,din,dout);
input clk;
input rst;
input din;
output reg dout;

reg[1:0] present_state,next_state;
parameter a = 2'd0,
          b = 2'd1,
          c = 2'd2;
          
 always @(posedge clk or posedge rst) begin
 if(rst) begin
 present_state <= a;
 end else
 present_state <= next_state;
 end
 
 always @(*) begin
 next_state = present_state;
 dout = 1'b0;
 case(present_state)
 a : begin
     if(din)
     next_state = b;
     else
     next_state = a;
     end
     
 b : begin
     if(din)
     next_state = c;
     else
     next_state = a;
     end
     
 c : begin
     if(din) begin
     next_state = c;
     dout = 1'b1;
     end else
     next_state = a;
     end
     
   default : next_state = a;
   endcase
   end                      
endmodule
