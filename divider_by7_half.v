`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 06:26:10 PM
// Design Name: 
// Module Name: divider_by7_half
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


module divider_by7_half(
input clk, reset,
output out
    );
    
    reg [2: 0] countP, countN;
    assign out = countP[2] | countN[2];
    
    always @(posedge clk)
    if(reset == 1'b1) countP <= 0;
    else  if(countP == 6) countP <= 0;
          else countP <= countP + 1;
    
    always @(negedge clk)
    if(reset == 1'b1) countN <= 0;
    else  if(countN == 6 ) countN <= 0;
          else countN <= countN + 1;
                
endmodule
