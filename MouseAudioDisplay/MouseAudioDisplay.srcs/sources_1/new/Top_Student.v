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
    input basys_clock,
    input MISO,
    input [1:0] sw,
    output [6:0] seg, output [3:0] an,
    output clk_samp,
    output sclk,
    output [11:0] LED
    );
    wire audio_clock;
    wire clk_20khz;
    wire clk_10hz;
    wire [11:0] MIC_in;
    wire [11:0] peak_value;
    wire [11:0] peak_sample;
    wire [4:0] peak_level;
    clk_20khz cg (basys_clock, clk_20khz);
    clk_10hz c10 (basys_clock, clk_10hz);
    audio_clock ac (basys_clock, sw, clk_10hz, clk_20khz, audio_clock);
    //---------AUDIO INPUT------------------------------------------------
    Audio_Input u_Audio_Input (.CLK(basys_clock), .cs(clk_20khz),
         .MISO(MISO), .clk_samp(clk_samp), .sclk(sclk), .sample(MIC_in));
    //--------------------------------------------------------------------
    
    //---------AUDIO PEAK FINDER------------------------------------------
     AUDIO_peak_value apv (.clk_20khz(clk_20khz),.current_value(MIC_in),
     .peak_value(peak_value), .peak_sample(peak_sample));
     
     //--------PEAK_LEVEL FINDER------------------------------------------
     Peak_level_finder plf (.clk_20khz(clk_20khz), .peak_sample(peak_sample), .peak_level(peak_level));
    //--------------------------------------------------------------------
    
    //=========LED OUTPUT=================================================
    Audio_LED_Output u_A_LED_Out (.peak_level(peak_level), .LED(LED), .audio_clock(audio_clock));
    //====================================================================
    
    //=========Audio_7Segment_Output======================================
    Audio_7Segment_Output u_A_7S_Out (.clk_20khz(clk_20khz), .peak_level(peak_level), .seg(seg), .an(an));
    
    

endmodule