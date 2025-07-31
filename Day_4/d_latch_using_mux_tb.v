`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 18:59:50
// Design Name: 
// Module Name: d_latch_using_mux_tb
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


module d_latch_using_mux_tb;
    reg D;
    reg En;
    wire Q;

    d_latch_using_mux uut (.D(D),.En(En),.Q(Q));

    initial begin
        $monitor("%0t,En=%b,D=%b,Q=%B", $time, En, D, Q);
        D = 0; En = 0;
        #10;
        En = 1; D = 0;
        #10;
        En = 0; D = 1;
        #10;
        En = 1; D = 1;
        #10;
        En = 0; D = 0;
        #10;
         $finish;
    end
endmodule

