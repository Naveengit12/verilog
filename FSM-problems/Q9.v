`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 09:41:49
// Design Name: 
// Module Name: Q9
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
/////////////////////////////////////////////////////////////////////////////////
module Q9(clk,rst,din,detected);
input clk;
input rst;
input din;
output reg detected;

parameter a = 2'b00,
          b = 2'b01,
          c = 2'b10,
          d = 2'b11;
          
 reg[1:0] present_state,next_state;
 always @(posedge clk) begin
 if(rst)
 present_state <= a;
 else
 present_state <= next_state;
 end
 
 always @(*) begin
 case(present_state)
 a : next_state = din ? a : b;
 b : next_state = din ? b : c;
 c : next_state = din ? c : d;
 d : next_state = din ? d : a;
 default : next_state = a;
 endcase
 end
 
     always @(*) begin
        case (present_state)
            d: detected = 1;
            default: detected = 0;
        endcase
    end        
endmodule