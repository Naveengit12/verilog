`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 17:08:58
// Design Name: 
// Module Name: Q3
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
module Q3(
    input  [7:0]binary_in,
    output [11:0]bcd_out  // [11:8]=hundreds, [7:4]=tens, [3:0]=ones
);

    integer i;
    reg [19:0] shift_reg;

    always @(*) begin
        shift_reg = 20'd0;
        shift_reg[7:0] = binary_in;

        for (i = 0; i < 8; i = i + 1) begin
            if (shift_reg[11:8] >= 5)
                shift_reg[11:8] = shift_reg[11:8] + 3;
            if (shift_reg[15:12] >= 5)
                shift_reg[15:12] = shift_reg[15:12] + 3;
            if (shift_reg[19:16] >= 5)
                shift_reg[19:16] = shift_reg[19:16] + 3;
            shift_reg = shift_reg << 1;
        end
    end
   assign bcd_out = shift_reg[19:8];
endmodule