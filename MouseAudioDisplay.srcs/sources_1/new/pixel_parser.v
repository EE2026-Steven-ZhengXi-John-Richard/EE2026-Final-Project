`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2023 10:05:02
// Design Name: 
// Module Name: pixel_parser
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


module pixel_parser(
    input [12:0] pixel_num,
    output reg [7:0] oled_x,
    output reg [7:0] oled_y
    );
    
    always @ (pixel_num)
    begin
        oled_x = pixel_num %  96;
        oled_y = pixel_num / 96;
    end
    
endmodule
