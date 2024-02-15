`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2024 12:17:05 PM
// Design Name: fourbitsub
// Module Name: fourbitsub
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


module fourbitsub(input [3:0]A, [3:0]B, input Bin, output[3:0] Diff, output Bout);

    wire Bin0, Bin1, Bin2;
    
    FS F0(.A(A[0]),.B(B[0]),.Bin(Bin),.Diff(Diff[0]),.Bout(Bin0));
    FS F1(.A(A[0]),.B(B[1]),.Bin(Bin0),.Diff(Diff[1]),.Bout(Bin1));
    FS F2(.A(A[0]),.B(B[2]),.Bin(Bin1),.Diff(Diff[2]),.Bout(Bin2));
    FS F3(.A(A[0]),.B(B[3]),.Bin(Bin2),.Diff(Diff[3]),.Bout(Bout));
endmodule
