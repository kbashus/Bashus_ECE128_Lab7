`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 05:54:08 PM
// Design Name: 
// Module Name: threebit_counter
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


module threebit_counter(clk,enable,rst,q);
    input clk;
    input enable;
    input rst;
    output [2:0] q;
    wire [2:0] nq;
    
    T_Flipflop uut0(rst,enable,clk,1'b1,q[0],nq[0]);
    T_Flipflop uut1(rst,enable,nq[0],1'b1,q[1],nq[1]);
    T_Flipflop uut2(rst,enable,nq[1],1'b1,q[2],nq[2]);

endmodule
