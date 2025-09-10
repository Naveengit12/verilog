`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 17:04:40
// Design Name: 
// Module Name: Q15
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


module Q15(
    input start, stop, reset, clk,
    output reg [9:0] millisec, 
    output reg [5:0] sec, min);
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            millisec<=0;
            sec<=0;
            min<=0;
            end
        else begin
            if (~stop) begin
                if (start) begin
                    if (millisec == 999) begin
                            sec<=sec+1;
                            millisec<=0;
                        end
                    else millisec<=millisec+1;
                    if (sec==59) begin
                        min<=min+1;
                        sec<=0;
                        end
                    end
                end
            end
    end
                
endmodule
