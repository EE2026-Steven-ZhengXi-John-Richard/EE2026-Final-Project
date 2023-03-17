`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2023 09:53:46
// Design Name: 
// Module Name: audio_clock
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


module audio_clock(
    input basys_clock, input [1:0] sw, input clk_10hz, input clk_20khz,
    output reg audio_clock = 0
    );
    always @(posedge basys_clock)
        begin
            if(sw[1] == 1)
            begin
                audio_clock = clk_10hz;
            end
            if(sw[1] == 0)
            begin
                audio_clock = clk_20khz;
            end
        end
endmodule
