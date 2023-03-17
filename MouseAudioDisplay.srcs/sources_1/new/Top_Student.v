`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//  FILL IN THE FOLLOWING INFORMATION:
//  STUDENT A NAME: 
//  STUDENT B NAME:
//  STUDENT C NAME: 
//  STUDENT D NAME:  
//
//////////////////////////////////////////////////////////////////////////////////


module Top_Student (
    input CLOCK,
    output [7:0] JB,
    input [7:0] sw
    );
    
    wire sig_25MHz;
    wire frame_begin, sending_pixels, sample_pixel;
    wire [12:0] pixel_index;
    wire [15:0] oled_data;
    wire [7:0] oled_x, oled_y;
    
    // testing
    //assign oled_data = (sw4 == 0)? 16'h07E0 : 16'b1111100000000000;
    



    seven_seg_oled svnseg(.clk(CLOCK), .sw(sw), .oled_x(oled_x), .oled_y(oled_y), .oled_data(oled_data));
    //green_box gb (.clk(sig_25MHz), .sw0(sw[0]), .oled_x(oled_x), .oled_y(oled_y), .oled_data(oled_data));
    pixel_parser p (.pixel_num(pixel_index), .oled_x(oled_x), .oled_y(oled_y));
    clock_var clock_25MHz (.CLOCK(CLOCK), .val(3), .sig(sig_25MHz));
    Oled_Display test_Oled(.clk(sig_25MHz),
            .reset(0),
            .frame_begin(frame_begin),
            .sending_pixels(sending_pixels),
            .sample_pixel(sample_pixel),
            .pixel_index(pixel_index),
            .pixel_data(oled_data), 
            .cs(JB[0]), 
            .sdin(JB[1]), 
            .sclk(JB[3]), 
            .d_cn(JB[4]), 
            .resn(JB[5]), 
            .vccen(JB[6]),
      .pmoden(JB[7]));
    
endmodule