`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 08:44:53 PM
// Design Name: 
// Module Name: divider_byEVEN
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


module divider_byEVEN(
input clk, reset,
output reg out
    );
    
    parameter divider = 2;
    reg[$clog2(divider/2): 0] count;
    
    always @(posedge clk)
    if(reset == 1'b1) begin 
            count <= 1'b1;
            out <= 1'b0;
            end
    else 
     if(count == divider/2 )begin 
                count <= 1'b1;
                out <= ~out;
              end 
              else begin 
                count <= count + 1; 
                out <= out;
              end
                           
endmodule
