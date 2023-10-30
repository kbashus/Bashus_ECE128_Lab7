`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 05:45:25 PM
// Design Name: 
// Module Name: T_Flipflop
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


module T_Flipflop(rst,enable,clk,t,q,notq);
    input t;
    input clk;
    input enable;
    input rst;
    output reg q;
    output notq;
    assign notq=~q;
    
    always@(posedge clk or negedge rst)
    begin
    if(!rst)
    q<=0;
    else
    begin
    if(enable)
    begin
    if(t)
    q<=~q;
    else
    q<=1;
    end
    else
    q<=q;
    end
    end
endmodule