`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 16:49:00
// Design Name: 
// Module Name: Q13_tb
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
module Q13_tb;
reg clk;
reg reset;
reg din;
wire detected;

Q13 uut (
          .clk(clk),
          .reset(reset),
          .din(din),
          .detected(detected));
          
          
   always #5 clk = ~clk;       
initial begin
    clk = 0;
    reset = 1;
    din = 0;

    #10 reset = 0;

    // Feed pattern: 1 0 1 ? should detect at 30ns
    #10 din = 1;
    #10 din = 0;
    #10 din = 1; // detected = 1 (pattern: 101)

    #10 din = 0; // detected = 1 (pattern: 010)
    #10 din = 0; // detected = 0
    #10 din = 1; // detected = 0
    #10 din = 1; // detected = 0
    
    #20
    $finish;
    
    $display("time=%b,clk=%d,reset=%b,din=%din,detected=%b", $time,clk,reset,din,detected);
end
endmodule


