`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:39:37 10/16/2013
// Design Name:   Configration
// Module Name:   F:/SOC/Lab2/Configration_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Configration
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Configration_tb;

	// Inputs
	reg clk;
	reg rstb;
	reg [7:0] data;
	reg bit8;
	reg parity_en;
	reg odd_n_even;

	// Outputs
	wire [2:0] dbits;

	// Instantiate the Unit Under Test (UUT)
	Configration uut (
		.clk(clk), 
		.rstb(rstb), 
		.data(data), 
		.bit8(bit8), 
		.parity_en(parity_en), 
		.odd_n_even(odd_n_even), 
		.dbits(dbits)
	);

	always #100 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rstb = 0;
		data = 0;
		bit8 = 1;
		parity_en = 1;
		odd_n_even = 0;

		// Wait 100 ns for global reset to finish
		#100 rstb = 1;
		#500 data = 1001010; 
        
		// Add stimulus here

	end
      
endmodule

