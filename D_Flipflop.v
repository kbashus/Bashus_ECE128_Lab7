`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 05:13:34 PM
// Design Name: 
// Module Name: D_Flipflop
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


module D_ff_sync(d, rstn, clk, q); //sync
    input d;
    input rstn;
    input clk;
    output reg q;
    
    always @ (posedge clk)
    if (rstn)
    q <= 0;
    else
    q <= d;
endmodule


module D_ff_async(d, rstn, clk, q); //async
    input d;
    input rstn;
    input clk;
    output reg q;
    
    always @ (posedge clk or negedge rstn)
    if (!rstn)
    q <= 0;
    else
    q <= d;
endmodule