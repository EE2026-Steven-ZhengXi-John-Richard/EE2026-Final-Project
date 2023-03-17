`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2023 11:07:02
// Design Name: 
// Module Name: Audio_LED_Output
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


module Audio_LED_Output(
    input [4:0] peak_level,
    output reg [11:0] LED = 12'b000000000000,
    input audio_clock
    );
    always @(posedge audio_clock)
    begin
//        LED[5:0] <= peak_level;
        if (peak_level == 5'b01011)
        begin
            LED[11:0] <= 12'b111111111111;
        end
        else if (peak_level == 5'b01010)
        begin
            LED[11:0] <= 12'b011111111111;
        end
        else if (peak_level == 5'b01001)
        begin
            LED[11:0] <= 12'b001111111111;
        end
        else if (peak_level == 5'b01000)
        begin
            LED[11:0] <= 12'b000111111111;
        end
        else if (peak_level == 5'b00111)
        begin
            LED[11:0] <= 12'b000011111111;
        end
        else if (peak_level == 5'b00110)
        begin
            LED[11:0] <= 12'b000001111111;
        end
        else if (peak_level == 5'b00101)
        begin
            LED[11:0] <= 12'b000000111111;
        end
        else if (peak_level == 5'b00100)
        begin
            LED[11:0] <= 12'b000000011111;
        end
        else if (peak_level == 5'b00011)
        begin
            LED[11:0] <= 12'b000000001111;
        end
        else if (peak_level == 5'b00010)
        begin
            LED[11:0] <= 12'b000000000111;
        end
        else if (peak_level == 5'b00001)
        begin
            LED[11:0] <= 12'b000000000011;
        end
        else if (peak_level == 5'b00000)
        begin
            LED[11:0] <= 12'b000000000001;
        end
    end
endmodule
