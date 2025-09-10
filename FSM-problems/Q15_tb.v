`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 18:24:41
// Design Name: 
// Module Name: Q15_tb
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


module Q15_tb;
   reg start, stop,reset,clk;
    wire [9:0] millisec;
    wire [5:0] sec, min;
    
 Q15  uut(
           .start(start),
           .stop(stop),
           .reset(reset), 
           .clk(clk),
           .millisec(millisec),
           .sec(sec), 
           .min(min));
           
    always #500000 clk=~clk;
    initial begin
        clk=0;
        reset=1;
        start=0;
        stop=0; 
        #250000 reset=0;
        start=1;
        #1000000000 stop=1; start=0;
        #1000000000
        #1000000000
        #2000000000
        
        
        stop=0;
        
        #1000000000
        
        start=1;
        
        #1000000000
        #2000000000
        #1000000000
        
        stop=1;
        $monitor("time=%b,millisec=%b,sec=%b,min=%b,start=%b,stop=%b",$time,millisec,sec,min,start,stop);
        end       
endmodule