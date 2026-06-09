`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 06:25:06 PM
// Design Name: 
// Module Name: divider_by7
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


module divider_by7(
input clk, reset,
output out
    );
    
    reg [2: 0] count;
    assign out = count[2];
    
    always @(posedge clk)
    if(reset == 1'b1) count <= 0;
    else  if(count == 6) count <= 0;
          else count <= count + 1;
          
endmodule
