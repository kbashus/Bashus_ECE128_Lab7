`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 02:19:46 PM
// Design Name: 
// Module Name: SR_Flipflop_tb
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


module SR_Flipflop_tb();
    reg clk;
    reg rstn;
    reg s;
    reg r;
    wire q;
    wire qbar;

    SR_Flipflop sff (.clk(clk), .rstn(rstn), .S(s), .R(r), .q(q), .qbar(qbar));
    
    initial begin
 
    s = 1'b0;
    r = 1'b0;
    rstn = 1;
    clk=1;
     
    #10
    rstn=0;
    s=1'b1;
    r=1'b0;
     
    #100
    rstn=0;
    s=1'b0;
    r=1'b1;
     
    #100
    rstn=0;
    s=1'b1;
    r=1'b1;
     
    #100
    rstn=0;
    s=1'b0;
    r=1'b0;
     
    #100
    rstn=1;
    s=1'b1;
    r=1'b0;
 
end
always #25 clk <= ~clk;

endmodule
  


