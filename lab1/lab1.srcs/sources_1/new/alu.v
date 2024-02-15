`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2024 12:25:49 PM
// Design Name: 
// Module Name: alu
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


module alu(input[3:0]A, [3:0]B, Cin,[2:0] Control, output reg [3:0]Output, output reg Cout);

    wire[4:0] fulladd = A + B + Cin;
    wire [4:0] fullsub = A - B - Cin;
    
    always@(*) begin
    
    case (control)
        3'b000: begin Output<=fulladd[3:0];
                      Cout<=fulladd[4]; end
        3'b001: begin Output<=fullsub[3:0];
                      Cout<=fullsub[4]; end
        3'b010: Output<=A|B;
        3'b011: Output<=A&B;
        3'b100: Output<={A[2:0], 1'b0};
        3'b101: Output<={1'b0, A[3:1]};
        3'b110: Output<={A[2:0], A[3]};
        3'b111: Output<={A[0], A[3:1]};
     endcase
     
     end

endmodule
