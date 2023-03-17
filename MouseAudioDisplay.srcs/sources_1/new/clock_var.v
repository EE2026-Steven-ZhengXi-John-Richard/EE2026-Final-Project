`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2023 10:44:40
// Design Name: 
// Module Name: clock_var
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


module clock_var(input CLOCK, input [31:0] val, output reg sig = 0);

    reg [31:0] count = 0;
    
    always @ (posedge CLOCK) begin
        count <= (count == val) ? 0 : count + 1;
        sig <= (count == 0) ? ~sig : sig;
    end

endmodule
