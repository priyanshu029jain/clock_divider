
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 06:23:19 PM
// Design Name: 
// Module Name: divider_by2
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


module divider_by2(
input clk, reset,
output out
    );
    
    reg count;
    assign out = count;
    
    always @(posedge clk)
    if(reset == 1'b1) count <= 1'b0;
    else  count <= count + 1; 
                                      
endmodule
