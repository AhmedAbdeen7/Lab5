`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2024 12:22:20 PM
// Design Name: 
// Module Name: SevenSegDec2
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


module SevenSegDecWithEn(
input en,
input [3:0] num,
output reg [6:0] segments,
output reg [3:0] anode_active);
always @ (en, num) begin
 if(en)
    anode_active = 4'b1110;
 else
    anode_active  = 4'b1111;
 case(num)
 0: segments = 7'b0000001;
 1: segments = 7'b1001111;
 2: segments = 7'b0010010;
 3: segments = 7'b0000110  ;
 4: segments = 7'b1001100;
 5: segments = 7'b0100100;
 6: segments = 7'b0100000;
 7: segments = 7'b0001111;
 8: segments = 7'b0000000;
 9: segments = 7'b0000100;
 default  segments = 7'b1111111;
 endcase 
end
endmodule