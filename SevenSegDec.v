`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2024 11:15:23 AM
// Design Name: 
// Module Name: SevenSegDec
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


module SevenSegDec(input [3:0] num, output [6:0] segments);
assign segments [0] = (~num[3] & ~num[2]&~num[1]) | (num[2]&num[1]&num[0]) ;
assign segments [1] = (num[1]&num[0]) | (~num[3]&~num[2]&num[0])| (~num[2]&num[1]);
assign segments [2] = (~num[3]&num[0]) | (num[3]&num[0]) | (num[2]&~num[1]);
assign segments [3] =(~num[3]&~num[2]&~num[1]&num[0]) | (num[2]&num[1]&num[0])| (num[2]& ~num[1]&~num[0])  ;
assign segments [4] = (~num[2]&num[1]&~num[0]);
assign segments [5] = (num[2]&~num[1]&num[0]) | (num[2]&num[1]&~num[0]);
assign segments [6] = (num[2]&~num[1]&~num[0]) | (~num[3]&~num[2]&~num[1]&num[0]);
endmodule