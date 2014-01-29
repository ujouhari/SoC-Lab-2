`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:12 10/16/2013 
// Design Name: 
// Module Name:    Set_reset 
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
module Set_reset( clk, rstb, done, load, txready );

input clk;
input rstb;
input done;
input load;
output txready;

always @(posedge clk, negedge rstb)

if (!rstb) txready <= 1'b1;
else if (done) txready <= 1'b1;
else if (load) txready <= 1'b0;

endmodule
