`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 15:10:56
// Design Name: 
// Module Name: Q1
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
module Q1(
    input clk,
    input reset_n,
    input x,
    output reg y
);

    // State encoding   
localparam S0  = 3'b000,  // Initial
        S1_0   = 3'b001,  // 1 zero
        S2_0   = 3'b010,  // 2 zeros
        S3_0   = 3'b011,  // 3 or more zeros
        S1_1   = 3'b100,  // 1 one
        S2_1   = 3'b101,  // 2 ones
        S3_1   = 3'b110;   // 3 or more ones  

     reg [2:0]state, next_state;
    // State transition logic (combinational)
    always @(*) begin
        case (state)
            S0: begin
                if (x == 1'b0) next_state = S1_0;
                else           next_state = S1_1;
            end
            S1_0: begin
                if (x == 1'b0) next_state = S2_0;
                else           next_state = S1_1;
            end
            S2_0: begin
                if (x == 1'b0) next_state = S3_0;
                else           next_state = S1_1;
            end
            S3_0: begin
                if (x == 1'b0) next_state = S3_0; // stay if 0 continues
                else           next_state = S1_1;
            end
            S1_1: begin
                if (x == 1'b1) next_state = S2_1;
                else           next_state = S1_0;
            end
            S2_1: begin
                if (x == 1'b1) next_state = S3_1;
                else           next_state = S1_0;
            end
            S3_1: begin
                if (x == 1'b1) next_state = S3_1; // stay if 1 continues
                else           next_state = S1_0;
            end
            default: next_state = S0;
        endcase
    end

    // State flip-flops and output logic
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state <= S0;
            y <= 1'b0;
        end else begin
            state <= next_state;
            case (next_state)
                S3_0, S3_1: y <= 1'b1;
                default:    y <= 1'b0;
            endcase
        end
    end
endmodule