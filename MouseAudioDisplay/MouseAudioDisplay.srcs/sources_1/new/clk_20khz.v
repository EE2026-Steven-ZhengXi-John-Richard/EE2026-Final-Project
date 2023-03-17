`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2023 09:27:12
// Design Name: 
// Module Name: clk_20khz
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


module clk_20khz(input basys_clock, output reg clk_20khz = 0
    );
    reg [31:0] count =0;
   always @(posedge basys_clock)
       begin
           count = (count == 2499) ? 0 : count+1;
           clk_20khz= (count ==0) ? ~clk_20khz : clk_20khz;
       end
endmodule
