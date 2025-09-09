`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 17:05:52
// Design Name: 
// Module Name: Q14
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


module Q14 #(
    parameter PERIOD = 10,              // Total period in input clock cycles
    parameter HIGH_CYCLES = 6           // High time (e.g. 60% of 10 = 6 cycles)
)(
    input wire clk,
    input wire reset,
    output reg clk_out
);

    // Compute LOW_CYCLES as a derived constant
    localparam LOW_CYCLES = PERIOD - HIGH_CYCLES;
    localparam COUNTER_WIDTH = $clog2(PERIOD);

    reg [COUNTER_WIDTH-1:0] count;
    reg state;  // 0 = high period, 1 = low period

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            clk_out <= 0;
            state <= 0;
        end else begin
            case (state)
                0: begin // High period
                    clk_out <= 1;
                    if (count == HIGH_CYCLES - 1) begin
                        count <= 0;
                        state <= 1;
                    end else begin
                        count <= count + 1;
                    end
                end
                1: begin // Low period
                    clk_out <= 0;
                    if (count == LOW_CYCLES - 1) begin
                        count <= 0;
                        state <= 0;
                    end else begin
                        count <= count + 1;
                    end
                end
            endcase
        end
    end

endmodule
