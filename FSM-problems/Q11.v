`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 16:02:38
// Design Name: 
// Module Name: Q11
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


module Q11(
    input clk,
    input reset,
    input j,       // Used in OFF state
    input k,       // Used in ON state
    output reg out // Output based on current state
); 
     localparam OFF = 2'b00,
                 ON  = 2'b01;

reg[1:0] present_state,next_state;
    always @(posedge clk or posedge reset) begin
        if (reset)
          present_state <= OFF;
        else
            present_state <= next_state;
    end

    always @(*) begin
        case (present_state)
            OFF: begin
                if (j)
                    next_state = ON;
                else
                    next_state = OFF;
            end

            ON: begin
                if (k)
                    next_state = OFF;
                else
                    next_state = ON;
            end

            default: next_state = OFF;
        endcase
    end

    // Moore output logic
    always @(*) begin
        case (present_state)
            OFF: out = 0;
            ON : out = 1;
            default: out = 0;
        endcase
    end
endmodule