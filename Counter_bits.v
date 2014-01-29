`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:31 10/14/2013 
// Design Name: 
// Module Name:    Counter_bits 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Counter_bits( clk, rstb, shifting, done);

input clk;
input rstb;
input shifting;
output done;

reg [3:0] counter;
wire done;
wire [1:0] sel;

assign done = (counter == 12);

		
endmodule
