`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 18:05:51
// Design Name: 
// Module Name: green_box
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


module green_box(
        input sw0, clk,
        input [7:0] oled_x, oled_y,
        output reg [15:0] oled_data
    );
    
        always @ (posedge clk)  begin
            if (sw0 && ((oled_x >= 58 && oled_x <= 61 && oled_y <= 58 && oled_y >= 0) 
                    || (oled_y >= 58 && oled_y <= 61 && oled_x >= 58 && oled_x <= 95))) begin
                oled_data = 16'h07E0;
            end
            else if (~sw0 && ((oled_x >= 58 && oled_x <= 61 && oled_y <= 58 && oled_y >= 0) 
                    || (oled_y >= 58 && oled_y <= 61 && oled_x >= 58 && oled_x <= 95))) begin
                oled_data = 0;
            end
        end
    
    
    
endmodule
