`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 12:04:21 AM
// Design Name: 
// Module Name: exp3
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


module Lab5report2(input [1:0] I, output reg [6:0] S);
always @ (I) begin
        case(I)
        2'b00: S = 7'b110001;
        2'b01: S = 7'b0111001;
        2'b10: S = 7'b1000111;
        2'b11: S = 7'b1001000;
        endcase 
    end
endmodule
