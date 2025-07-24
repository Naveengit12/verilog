`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 18:00:08
// Design Name: 
// Module Name: encoder_8to3
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


module encoder_8to3(i0,i1,i2,i3,i4,i5,i6,i7,y0,y1,y2);
input i0,i1,i2,i3,i4,i5,i6,i7;
output y0,y1,y2;

or or01(y0,i1,i3,i5,i7);
or or02(y1,i2,i3,i6,i7);
or or03(y2,i4,i5,i6,i7);
endmodule
