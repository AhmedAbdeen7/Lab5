`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 11:59:19 PM
// Design Name: 
// Module Name: exp2
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


module LabReport5(input[1:0] s, input [1:0]I, output reg F);
always @ (s  or I) begin
    case(s)
    2'b00: F = I [0] & I [1];
    2'b01: F = I [0] | I [1];
    2'b10: F = I [0] ^ I [1];
    2'b11: F = ~I [0];
    endcase
end
endmodule
