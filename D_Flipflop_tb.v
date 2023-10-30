`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 05:15:04 PM
// Design Name: 
// Module Name: D_Flipflop_tb
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


module D_Flipflop_tb();

    reg d;
    reg rstn;
    reg clk;
    wire q;

    //D_ff_sync uut (.d(d), .rstn(rstn), .clk(clk), .q(q));
    D_ff_async uut (.d(d), .rstn(rstn), .clk(clk), .q(q));
  
    initial begin
        clk=0;
        forever #10 clk = ~clk;  
    end 
    
    initial begin 
    rstn=1;
    d <= 0;
    #200;
    #22 d <=1; #22 rstn=0;
    d <= 1;
    #100;
    d <= 0;
    #100;
    d <= 1;
    end 

endmodule
