`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2025 16:24:10
// Design Name: 
// Module Name: Q7
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

module Q7(
    input clk,
    input reset,
    input din,  
    output reg detected
);
   reg [1:0] state, next_state;
    parameter a = 2'b00,
              b = 2'b01,
              c = 2'b10,
              d = 2'b11;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= a;
        else
            state <= next_state;
    end

    // Next state and output logic
    always @(*) begin
        detected = 1'b0; 
        case (state)
            a: begin
                if (din == 0)
                    next_state = b;   // Stay in low pair
                else
                    next_state = c;   // Switch to high pair
            end

            b: begin
                if (din == 0)
                    next_state = a;   // Toggle in low pair
                else
                    next_state = d;   // Switch to high pair
            end

            c: begin
                if (din == 0)
                    next_state = d;   // Toggle in high pair
                else
                    next_state = a;   // Switch to low pair
            end

            d: begin
                if (din == 0)
                    next_state = c;   // Toggle in high pair
                else begin
                    next_state = b;   // Switch to low pair
                    detected = 1'b1;  // Detection on this transition
                end
            end
            default: next_state = a;
        endcase
    end
endmodule

