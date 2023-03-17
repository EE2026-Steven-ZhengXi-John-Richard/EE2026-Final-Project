`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 14:12:54
// Design Name: 
// Module Name: seven_seg_oled
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


module seven_seg_oled(
        input clk,
        input [7:0] sw,
        input [7:0] oled_x,
        input [7:0] oled_y,
        output reg [15:0] oled_data = 0
    );
        // variables for 7 segment display
        localparam SegWidth = 4;
        localparam LeftBound = 17;
        localparam RightBound = 41;
        localparam TopBound = 7;
        localparam MiddleBound = 27; // Middle is wrt Y-cooridinates
        localparam BottomBound = 51;
        localparam White = 16'b1111111111111111;
        
        //variables for green box
        localparam GreenXmin = 58;
        localparam GreenYmin = 58;
        
    always @ (posedge clk) begin
        // Segment A ON/OFF
        if (sw[0] && oled_x >= LeftBound && oled_x <= RightBound 
                && oled_y >= TopBound && oled_y <= TopBound + SegWidth) begin
            oled_data = White;
        end
        // Segment B ON/OFF
        else if (sw[1] && oled_x >= RightBound - SegWidth && oled_x <= RightBound
                && oled_y >= TopBound && oled_y <= MiddleBound + SegWidth) begin
            oled_data = White;        
        end
        // Segment C ON/OFF
        else if (sw[2] && oled_x >= RightBound - SegWidth && oled_x <= RightBound
                && oled_y >= MiddleBound && oled_y <= BottomBound) begin
           oled_data = White;     
        end        
        // Segment D ON/OFF
        else if (sw[3] && oled_x >= LeftBound && oled_x <= RightBound 
                && oled_y >= BottomBound - SegWidth && oled_y <= BottomBound) begin
            oled_data = White;
        end
        // Segment E ON/OFF        
        else if (sw[4] && oled_x >= LeftBound && oled_x <= LeftBound + SegWidth
                && oled_y >= MiddleBound && oled_y <= BottomBound) begin
           oled_data = White;     
        end                       
        // Segment F ON/OFF   
        else if (sw[5] && oled_x >= LeftBound && oled_x <= LeftBound + SegWidth
                && oled_y >= TopBound && oled_y <= MiddleBound + SegWidth) begin
           oled_data = White;     
        end          
        // Segment G ON/OFF
        else if (sw[6] && oled_x >= LeftBound && oled_x <= RightBound 
                && oled_y >= MiddleBound && oled_y <= MiddleBound + SegWidth) begin
            oled_data = White;
        end             
        // Skeleton
        else if ((oled_x >= LeftBound && oled_x <= RightBound && oled_y == TopBound)
                || (oled_x >= LeftBound && oled_x <= RightBound && oled_y == TopBound + SegWidth)
                || (oled_x >= LeftBound && oled_x <= RightBound && oled_y == MiddleBound)
                || (oled_x >= LeftBound && oled_x <= RightBound && oled_y == MiddleBound + SegWidth)
                || (oled_x >= LeftBound && oled_x <= RightBound && oled_y == BottomBound - SegWidth)
                || (oled_x >= LeftBound && oled_x <= RightBound && oled_y == BottomBound)
                || (oled_y >= TopBound && oled_y <= BottomBound && oled_x == LeftBound)
                || (oled_y >= TopBound && oled_y <= BottomBound && oled_x == LeftBound + SegWidth)
                || (oled_y >= TopBound && oled_y <= BottomBound && oled_x == RightBound - SegWidth)
                || (oled_y >= TopBound && oled_y <= BottomBound && oled_x == RightBound)) begin
            oled_data = White;
        end
        // Green Box
        else if (sw[7] && ((oled_x >= GreenXmin && oled_x <= GreenXmin + SegWidth 
                && oled_y <= GreenYmin + SegWidth && oled_y >= 0) 
                || (oled_y >= GreenYmin && oled_y <= GreenYmin + SegWidth 
                && oled_x >= 0 && oled_x <= GreenXmin + SegWidth))) begin
            oled_data = 16'h07E0;
        end
        // Darken all other pixels
        else begin
            oled_data = 0;
        end
    end
endmodule
