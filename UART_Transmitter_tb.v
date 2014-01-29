`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:08:33 10/21/2013
// Design Name:   UART_Transmitter
// Module Name:   F:/SOC Lab/Lab2/UART_Transmitter_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UART_Transmitter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UART_Transmitter_tb;

	// Inputs
	reg clk;
	reg rstb;
	reg CSn;
	reg WE;
	reg [7:0] data_in;
	reg done;
	reg [2:0] dbits;
	reg shift;

	// Outputs
	wire [7:0] data_out;
	wire shifting;
	wire txready;
	wire txout;

	// Instantiate the Unit Under Test (UUT)
	UART_Transmitter uut (
		.clk(clk), 
		.rstb(rstb), 
		.CSn(CSn), 
		.WE(WE), 
		.data_in(data_in), 
		.done(done), 
		.dbits(dbits), 
		.data_out(data_out), 
		.shift(shift), 
		.shifting(shifting), 
		.txready(txready), 
		.txout(txout)
	);

	always #100 clk = ~ clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rstb = 0;
		CSn = 0;
		WE = 0;
		data_in = 0;
		done = 0;
		dbits = 000;
		shift = 0;

		// Wait 100 ns for global reset to finish
		#100 rstb = 1;
		#200 WE = 1;
		#150 data_in = 10101010;
		#400 shift = 1;
		#200 dbits =000;
		
        
		// Add stimulus here

	end
      
endmodule

