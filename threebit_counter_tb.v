`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 05:56:37 PM
// Design Name: 
// Module Name: threebit_counter_tb
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


module threebit_counter_tb();
    reg rst;
    reg enable;
    reg clk;
    wire [2:0] q;
    
    threebit_counter uud1(.clk(clk),.enable(enable),.rst(rst),.q(q));
    
    initial
    begin
    clk=0;rst=1;enable=1;
    #2 rst=0;
    #4 rst=1;
    #100 enable=0;
    #40 
    $finish;
    end
    
    initial
    forever
    #2 clk=~clk;
    

endmodule
