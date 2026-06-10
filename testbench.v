`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2026 08:20:45 PM
// Design Name: 
// Module Name: testbench
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


module testbench;

reg clk, reset;
wire out;

// Instantiate the Unit Under Test (UUT)
divider_by5 uut(
    .clk(clk), 
    .reset(reset),
    .out(out)
);
   
// Clock generation
initial clk = 0;
always #2 clk = ~clk;
 
initial begin
    $dumpfile("divider_by5.vcd"); 
    $dumpvars(0, testbench);

    $monitor("Time: %0t | Reset: %b | Output: %b", $time, reset, out);

    // reset logic
    reset = 1'b1;
    #3 reset = 1'b0;

    $display("Testbench completed successfully.");
    #100 $finish;
end 
   
endmodule
