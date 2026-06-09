`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 06:23:52 PM
// Design Name: 
// Module Name: divider_by8
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


module divider_by8(
input clk, reset,
output out
    );
    
    reg [2: 0] count;
    assign out = count[2];
    
    always @(posedge clk)
    if(reset == 1'b1) count <= 1'b0;
    else  count <= count + 1; 
                                      
endmodule
