`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 06:25:57 PM
// Design Name: 
// Module Name: divider_by5_half
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


module divider_by5_half(
input clk, reset,
output out
    );
    
    reg [2: 0] countP, countN;
    assign out = countP[1] | countN[1];
    
    always @(posedge clk)
    if(reset == 1'b1) countP <= 1;
    else  if(countP == 5) countP <= 1;
          else countP <= countP + 1;
    
    always @(negedge clk)
    if(reset == 1'b1) countN <= 1;
    else  if(countN == 5) countN <= 1;
          else countN <= countN + 1;
                
endmodule
