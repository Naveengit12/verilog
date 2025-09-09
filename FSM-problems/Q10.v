`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 14:24:23
// Design Name: 
// Module Name: Q10
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
module Q10(
    input clk,
    input reset,
    input din,            // Serial input bit
    output reg detected   // Output: 1 if number of 1's is a multiple of 4
);

    // State encoding (2 bits for 4 states)
reg [1:0] present_state,next_state;
 
parameter S0 = 2'd0,  // 0 mod 4 ? output 1
          S1 = 2'd1,  // 1 mod 4 ? output 0
          S2 = 2'd2,  // 2 mod 4 ? output 0
          S3 = 2'd3;   // 3 mod 4 ? output 0

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            present_state <= S0;
        else
            present_state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (present_state)
            S0: next_state = (din) ? S1 : S0;
            S1: next_state = (din) ? S2 : S1;
            S2: next_state = (din) ? S3 : S2;
            S3: next_state = (din) ? S0 : S3;
            default: next_state = S0;
        endcase
    end

    // Moore output logic 
    always @(*) begin
        case (present_state)
            S0: detected = 1;
            default: detected = 0;
        endcase
    end
endmodule