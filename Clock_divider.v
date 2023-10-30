`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 11:58:26 AM
// Design Name: 
// Module Name: Clock_divider
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


module Clock_divider(clock_in, clock_out);
    input clock_in;
    output reg clock_out;
    reg[2:0] counter = 3'b0;
    
    parameter DIVISOR = 100 / 25;
    
    always @(posedge clock_in)
    
    begin
    counter <= counter + 1'b1;
    if(counter>=(DIVISOR-1))
    counter <= 3'b0;
    clock_out <= (counter<DIVISOR/2) ? 1'b1:1'b0;
    end
    
endmodule