`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 11:22:27
// Design Name: 
// Module Name: arthmetic_op_task
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


module arthmetic_op_task;
 integer result;
 
task add(input integer a,input integer b, output integer sum);
begin
sum=a+b;
$display("add=%d",sum);
end
endtask

task sub(input integer a, input integer b, output integer diff);
begin
diff=a-b;
$display("sub=%d",diff);
end
endtask

task mult(input integer a, input integer b, output integer x);
begin
x=a*b;
$display("mult=%d",x);
end
endtask

task divi(input integer a, input integer b, output integer c);
begin
c=a/b;
$display("divi=%d", c);
end
endtask

initial begin
add(20,5,result);
sub(13,8,result);
mult(14,15,result);
divi(49,7,result);
end
endmodule
