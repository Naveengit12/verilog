`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 19:20:00
// Design Name: 
// Module Name: decoder_2to4_tb
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
////////////////////////////////////////////////////////////////////////////////

module decoder_2to4_tb;

    reg En;
    reg [1:0] a;
    wire [3:0] d;
    
    decoder_2to4 uut (
        .En(En),
        .a(a),
        .d(d)
    );

    initial begin
        $display("Time\tEn\ta[1:0]\td[3:0]");
        $monitor("%0t\t%b\t%b\t%b", $time, En, a, d);

        En = 0; a = 2'b00; #100;
        a = 2'b01; #10;
        a = 2'b10; #10;
        a = 2'b11; #10;
        En = 1; a = 2'b00; #100;
        En = 1; a = 2'b01; #100;
        En = 1; a = 2'b10; #100;
        En = 1; a = 2'b11; #100;

        $finish;
    end

endmodule

