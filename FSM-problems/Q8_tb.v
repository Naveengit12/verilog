`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:36:29
// Design Name: 
// Module Name: Q8_tb
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

module Q8_tb;
reg clk;
reg rst;
reg din;
wire dout;

Q8 uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .dout(dout));
        
always #10 clk = ~clk;
initial begin
clk = 0;
rst = 1;
din = 0;

#10; rst = 0;
  // Input:   1 1 1 1 0 1 1 1 0
  // Detect:      ? ?     ?
 // Expected dout: 0 0 1 1 0 0 0 1 0
        
   #10; din = 1;
   #10; din = 1; 
    #10; din = 1;  // dout 1
     #10; din = 1;  // dout 1
      #10; din = 0;
       #10; din = 1;  
        #10; din = 1;  // dout 1
         #10; din = 1;
          #10; din = 0;   
          
          #30;
          $finish;
          
   $display("time=0%b, din=&b,dout=%b",$time,din,dout);
   end                   
endmodule
