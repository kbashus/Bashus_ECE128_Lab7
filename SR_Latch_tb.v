`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 01:48:15 PM
// Design Name: 
// Module Name: SR_Latch_tb
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


module SR_Latch_tb();
    reg r, s;
    wire q, qbar;
    
    SR_Latch UUT(.S(s), .R(r), .Q(q), .Qbar(qbar));
    
    initial
    begin
        r=0; s=0;
        #5 s=1;
        #5 s=0;
        #5 r=1;
        #5 r=0; s=1;
        #5 s=0; r=1;
        #5 r=0;
        #5 r=1; s=1;
    end
    
    initial begin
    $dumpfile("dump.vcd"); // record waveform
    $dumpvars(1); //display signals in testbench
    end
endmodule

