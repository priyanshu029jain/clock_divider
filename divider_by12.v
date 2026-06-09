`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 06:27:28 PM
// Design Name: 
// Module Name: divider_by12
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


module divider_by12(
input clk, reset,
output out
    );
    
    reg [3: 0] count;
    assign out = count[3];
    
//    always @(posedge clk)
//    if(reset == 1'b1) count <= 0;
//    else  if(count == 11) count <= 0;
//          else count <= count + 1; 
          
    //50% duty cycle      
    always @(posedge clk)
    if(reset == 1'b1) count <= 2;
    else  if(count == 13) count <= 2;
          else count <= count + 1;  
                                           
endmodule
