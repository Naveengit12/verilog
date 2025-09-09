`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 11:54:38
// Design Name: 
// Module Name: Q9_tb
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


module Q9_tb;
reg clk;
reg rst;
reg din;
wire detected;

Q9 uut( 
       .clk(clk),
       .rst(rst),
       .din(din),
       .detected(detected));
       
   always  #10 clk = ~clk;    
   initial begin
   $monitor ("time = 0%d,din = %din,detected = %detected", $time,din,detected);
   clk = 0;
   rst = 1;
   din = 0;
   
   #10;
   rst = 0;
   
   #10; din = 0;
    #10; din = 0;
     #10; din = 0;   // detected 1
      #10; din = 1;   // detected 0
       #10; din = 0;
        #10; din = 0;
         #10; din = 1;   // stays, not going to d
          #10; din = 0;  // detected 1
           #10; din = 1;
           
           #30;
           $finish;
           end 
   
endmodule
