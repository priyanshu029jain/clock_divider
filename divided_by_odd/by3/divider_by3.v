`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 06:24:41 PM
// Design Name: 
// Module Name: divider_by3
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


module divider_by3(
input clk, reset,
output out
    );
    
    reg [1: 0] count;
    assign out = count[1];
    
    always @(posedge clk)
    if(reset == 1'b1) count <= 0;
    else  if(count == 2) count <= 0;
          else count <= count + 1;
          
endmodule
