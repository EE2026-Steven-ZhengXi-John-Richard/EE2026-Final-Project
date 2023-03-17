`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 19:54:01
// Design Name: 
// Module Name: personal_num
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


module personal_num(
    input clk,
    input [3:0] sw,
    input [7:0] oled_x, oled_y,
    input [15:0] oled_data,
    input personal
    );    
        // individual task
//    always @ (posedge sig_25MHz)
//    begin
//        if (sw[0] && ((oled_x >= 58 && oled_x <= 61 && oled_y <= 58 && oled_y >= 0) 
//                || (oled_y >= 58 && oled_y <= 61 && oled_x >= 58 && oled_x <= 95)))
//        begin
//            oled_data = 16'h07E0;
//        end
//        else if ((sw == 4'b0011 || sw == 4'b0010) && ((oled_x >= 77 && oled_x <= 80) && (oled_y >= 10 && oled_y <= 50)))
//        begin
//            oled_data = 16'b1111111111111111;
//        end
//        else if ((sw == 4'b0101 || sw == 4'b0100) && (((oled_x >= 65 && oled_x <= 85) && (oled_y >= 10 && oled_y <= 13))
//                || ((oled_x >= 82 && oled_x <= 85) && (oled_y >= 10 && oled_y <= 50))))
//        begin
//            oled_data = 16'b1111111111111111;
//        end
//        else if ((sw == 4'b1001 || sw == 4'b1000) && (((oled_x >= 65 && oled_x <= 85) && ((oled_y >= 10 && oled_y <= 13) || (oled_y >= 47 && oled_y <= 50)))
//                || (((oled_x >= 82 && oled_x <= 85) || (oled_x >= 65 && oled_x <= 68)) && (oled_y >= 10 && oled_y <= 50))))
//        begin
//            oled_data = 16'b1111111111111111;
//        end
//        else
//        begin
//            oled_data = 16'b0000000000000000;
//        end
//    end

endmodule
