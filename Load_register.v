`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:30 10/16/2013 
// Design Name: 
// Module Name:    Load_register 
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
module Load_register(clk,rstb, CSn, WE, data_in, done, dbits, data_out, shifting, txready);

input clk;
input rstb;
inout CSn;
input WE;
input [7:0] data_in;
input [3:0] dbits;
input done;
output [7:0] data_out;
output shifting;
output txready;

reg txready;
wire load;
reg [7:0] data_out;
reg LSR;

assign load = WE & ~CSn;

//set-reset to create txready signal.
always @(posedge clk, negedge rstb)

if 		(!rstb) txready <= 1'b1;
else if 	(done)  txready <= 1'b1;
else if 	(load)  txready <= 1'b0;

//Load the data in, if load is active.
always@(posedge clk, negedge rstb)

if 		(!rstb) data_out <= 7'b0;
else if 	(load)  data_out <= data_in;

//Load signal delayed by one clock cycle.
always@ (posedge clk, negedge rstb)

if 	(!rstb) LSR <= 1'b0;
else 	LSR <= load;

//Shifting signal.
always @ (posedge clk, negedge rstb)

if 		(!rstb) shifting <= 1'b0;
else if	(done)  shifting <= 1'b0;
else if 	(load)  shifting <= 1'b1;


endmodule
