`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 16:45:01
// Design Name: 
// Module Name: Q13
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
module Q13(
    input clk,
    input reset,
    input din,          // Serial input
    output reg detected // Output high when last 3 bits are alternating
);

    reg [2:0] shift_reg;
    always @(posedge clk or posedge reset) begin
        if (reset)
            shift_reg <= 3'b000;
        else
            shift_reg <= {shift_reg[1:0], din}; // Shift left and insert din
    end

    always @(*) begin
        case (shift_reg)
            3'b010,
            3'b101: detected = 1;
            default: detected = 0;
        endcase
    end
endmodule