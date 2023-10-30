`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 01:46:11 PM
// Design Name: 
// Module Name: SR_Flipflop
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


module SR_Flipflop(clk, rstn, S, R, q, qbar);
    input clk;
    input rstn;
    input S;
    input R;
    output reg q;
    output reg qbar;

 
  always @(posedge clk) begin
 
    if (rstn) begin
    q=1'b0;
    qbar=1'b1;
     
    end else begin
     
    case({S,R})
    {1'b0,1'b0}: begin q=q;qbar=qbar; end
    {1'b0,1'b1}: begin q=1'b0;qbar=1'b1; end
    {1'b1,1'b0}: begin q=1'b1;qbar=1'b0; end
    {1'b1,1'b1}: begin q=1'b0; qbar=1'b0; end
    endcase
 
    end
 
end
endmodule
