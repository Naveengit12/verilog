`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 22:16:42
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb;
     reg a,b,cin;
     wire diff,barrow;
     
     full_sub uut(.a(a), .b(b), .cin(cin), .diff(diff), .barrow(barrow));
     
     initial begin
     $display("a b cin | diff barrow");  
      a=0; b=0; cin=0; #10;
   $display(" a=%b, b=%b, cin=%b, | diff=%b, barrow=%b", a, b, cin, diff, barrow);
     a=0; b=0; cin=1; #10;
    $display(" a=%b, b=%b, cin=%b, | diff=%b, barrow=%b", a, b, cin, diff, barrow);
     a=0; b=1; cin=0; #10;
    $display(" a=%b, b=%b, cin=%b, | diff=%b, barrow=%b", a, b, cin, diff, barrow);
    a=0; b=1; cin=1; #10;
    $display(" a=%b, b=%b, cin=%b, | diff=%b, barrow=%b", a, b, cin, diff, barrow);
    a=1; b=0; cin=0; #10;
    $display(" a=%b, b=%b, cin=%b, | diff=%b, barrow=%b", a, b, cin, diff, barrow);
    a=1; b=0; cin=1; #10;
    $display(" a=%b, b=%b, cin=%b, | diff=%b, barrow=%b", a, b, cin, diff, barrow);
    a=1; b=1; cin=0; #10;
    $display(" a=%b, b=%b, cin=%b, | diff=%b, barrow=%b", a, b, cin, diff, barrow);
     a=1; b=1; cin=1; #10;
   $display(" a=%b, b=%b, cin=%b, | diff=%b, barrow=%b", a, b, cin, diff, barrow);
   end
endmodule
