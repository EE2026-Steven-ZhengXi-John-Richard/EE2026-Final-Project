`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2023 09:33:57
// Design Name: 
// Module Name: clock_sim
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


module clock_sim(

    );
    
    reg clock_sim;
    wire sig_sim;
    
    clock_10khz sim (.CLOCK(clock_sim), .sig(sig_sim));
    
    initial
    begin
    clock_sim = 0;
    end
    always begin
    #5 clock_sim = ~clock_sim;
    end
endmodule
