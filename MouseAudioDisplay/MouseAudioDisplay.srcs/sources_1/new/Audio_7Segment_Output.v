`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 17:49:09
// Design Name: 
// Module Name: Audio_7Segment_Output
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


module Audio_7Segment_Output(
    input clk_20khz, 
    input [4:0] peak_level, 
    output reg [6:0] seg = 7'b0000000, 
    output reg [3:0] an = 4'b0000
    );
    reg [31:0] count = 0;
    reg [31:0] limit = 20000;
    always @(posedge clk_20khz)
    begin
        count <= count + 1;
        if (count >= limit) //0.2seconds
        begin
            //UPDATE 7 segment
            case(peak_level)
                11 : begin
                    an = 4'b1100;
                    seg = 7'b1111001;
                end
                10 : begin
                    an = 4'b1100;
                    seg = 7'b1000000;        
                end
                9 : begin
                    an = 4'b1100;
                    seg = 7'b0010000;      
                end
                8 : begin
                    an = 4'b1100;
                    seg = 7'b0000000;        
                end
                7 : begin
                    an = 4'b1100;
                    seg = 7'b1111000;        
                end
                6 : begin
                    an = 4'b1100;
                    seg = 7'b0000010;        
                end
                5 : begin
                    an = 4'b1100;
                    seg = 7'b0010010;        
                end
                4 : begin
                    an = 4'b1100;
                    seg = 7'b0011001;        
                end
                3 : begin
                    an = 4'b1100;
                    seg = 7'b0110000;        
                end
                2 : begin
                    an = 4'b1100;
                    seg = 7'b0100100;        
                end
                1 : begin
                    an = 4'b1100;
                    seg = 7'b1111001;        
                end
                0 : begin
                    an = 4'b1100;
                    seg = 7'b1000000;        
                end
                default : begin
                
                end
            endcase
           //RESET VALUES
            count <= 0;
        end
    end
endmodule
