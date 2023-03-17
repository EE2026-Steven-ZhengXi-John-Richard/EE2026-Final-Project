`timescale 1ns / 1ps 
 
module sim_20khz(); 
 
    reg CLOCK; wire clk_20khz;  
     
    clk_20khz test (CLOCK, clk_20khz);  
     
    initial begin  
        CLOCK = 0;  
    end  
     
    always begin  
        #5 CLOCK = ~CLOCK;  
    end 
 
endmodule 