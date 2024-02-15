`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 12:33:42 PM
// Design Name: 
// Module Name: onebitfullsub
// Project Name: lab1
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


module FS(input A, B, Bin, output Diff, Bout);

assign Diff = A ^ B ^ Bin;
assign Bout = (~A&B) | (~(A^B) & Bin);


endmodule
