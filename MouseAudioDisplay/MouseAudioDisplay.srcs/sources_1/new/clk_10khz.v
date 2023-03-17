`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2023 09:51:37
// Design Name: 
// Module Name: clk_10khz
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


module clk_10hz(input basys_clock, output reg clk_10hz = 0
        );
        reg [31:0] count =0;
       always @(posedge basys_clock)
           begin
               count = (count == 4999999) ? 0 : count+1;
               clk_10hz= (count ==0) ? ~clk_10hz : clk_10hz;
           end
endmodule
