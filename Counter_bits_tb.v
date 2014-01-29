`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:16 10/16/2013
// Design Name:   Counter_bits
// Module Name:   F:/SOC/Lab2/Counter_bits_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter_bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_bits_tb;

	// Inputs
	reg clk;
	reg rstb;
	reg shifting;

	// Outputs
	wire done;

	// Instantiate the Unit Under Test (UUT)
	Counter_bits uut (
		.clk(clk), 
		.rstb(rstb), 
		.shifting(shifting), 
		.done(done)
	);

	always #100 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rstb = 0;
		shifting = 0;

		// Wait 100 ns for global reset to finish
		#100 rstb =1;
		#500 shifting =1;
        
		// Add stimulus here

	end
      
endmodule

