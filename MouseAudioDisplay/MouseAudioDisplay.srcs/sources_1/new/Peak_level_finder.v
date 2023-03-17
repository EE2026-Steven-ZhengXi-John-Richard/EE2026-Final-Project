`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 16:52:48
// Design Name: 
// Module Name: Peak_level_finder
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


module Peak_level_finder(
    input clk_20khz, 
    input [11:0] peak_sample,
    output reg [4:0] peak_level = 5'b00000
    );
    always @(posedge clk_20khz)
    begin
        if (peak_sample <= 12'd4095 && peak_sample > 12'd3925)
        begin
            peak_level <= 5'b01011;
        end
        else if (peak_sample <= 12'd3925 && peak_sample > 12'd3755)
        begin
            peak_level <= 5'b01010;
        end
        else if (peak_sample <= 12'd3755 && peak_sample > 12'd3584)
        begin
            peak_level <= 5'b01001;
        end
        else if (peak_sample <= 12'd3584 && peak_sample > 12'd3413)
        begin
            peak_level <= 5'b01000;
        end
        else if (peak_sample <= 12'd3413 && peak_sample > 12'd3243)
        begin
            peak_level <= 5'b00111;
        end
        else if (peak_sample <= 12'd3243 && peak_sample > 12'd3072)
        begin
            peak_level <= 5'b00110;
        end
        else if (peak_sample <= 12'd3072 && peak_sample > 12'd2901)
        begin
            peak_level <= 5'b00101;
        end
        else if (peak_sample <= 12'd2901 && peak_sample > 12'd2731)
        begin
            peak_level <= 5'b00100;
        end
        else if (peak_sample <= 12'd2731 && peak_sample > 12'd2560)
        begin
            peak_level <= 5'b00011;
        end
        else if (peak_sample <= 12'd2560 && peak_sample > 12'd2389)
        begin
            peak_level <= 5'b00010;
        end
        else if (peak_sample <= 12'd2389 && peak_sample > 12'd2219)
        begin
            peak_level <= 5'b00001;
        end
        else if (peak_sample <= 12'd2219)
        begin
            peak_level <= 5'b00000;
        end
    end
endmodule