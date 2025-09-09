`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2025 19:46:48
// Design Name: 
// Module Name: Q6
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


module Q6(
    input clk,
    input reset,
    input in,          // 1-bit serial input
    output reg out     // 1 if more than one '1' in last 3 samples
);
    reg [2:0] shift_reg;

    // Sequential logic to update shift register
    always @(posedge clk or posedge reset) begin
        if (reset)
            shift_reg <= 3'b000;
        else
            shift_reg <= {shift_reg[1:0], in}; // Shift left and insert new input
    end

    // Combinational logic to count 1's
    always @(*) begin
        case (shift_reg)
            3'b000, 3'b001, 3'b010, 3'b100: out = 0;  // 0 or 1 ones
            default: out = 1;                        // 2 or 3 ones
        endcase
    end
endmodule