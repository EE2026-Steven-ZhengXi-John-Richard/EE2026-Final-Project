`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2023 09:28:13
// Design Name: 
// Module Name: clock_10khz
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


module clock_10khz(
    input CLOCK,
    output reg sig = 0
    );
    
    reg [31:0] count = 0;
    
    
    always @ (posedge CLOCK) begin
        count <= (count == 5000) ? 0 : count + 1;
        sig <= (count == 0) ? ~sig : sig;
    end
    
endmodule
