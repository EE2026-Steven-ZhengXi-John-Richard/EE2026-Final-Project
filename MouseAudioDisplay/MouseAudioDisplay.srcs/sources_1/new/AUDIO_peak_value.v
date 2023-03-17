`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2023 10:37:35
// Design Name: 
// Module Name: AUDIO_peak_value
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


module AUDIO_peak_value(
    input clk_20khz, 
    input [11:0] current_value,
    output reg [11:0] peak_value = 12'b000000000000,
    output reg [11:0] peak_sample = 12'b000000000000
    );
    reg [31:0] count = 0;
    reg [31:0] limit = 4000;
    always @(posedge clk_20khz)
    begin
        count <= count + 1;
        if (current_value > peak_value)
        begin
            peak_value <= current_value;
        end
        if (count >= limit) //0.2seconds
        begin
            //UPDATE LED
            peak_sample <= peak_value;
            
            //RESET VALUES
            peak_value <= 0;
            count <= 0;
        end
    end
endmodule
