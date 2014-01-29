`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:33:14 10/16/2013
// Design Name:   Counter_clocks
// Module Name:   F:/SOC/Lab2/Counter_clocks_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter_clocks
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_clocks_tb;

	// Inputs
	reg clk;
	reg rstb;
	reg [3:0] baud_select;
	reg shifting;

	// Outputs
	wire shift;

	// Instantiate the Unit Under Test (UUT)
	Counter_clocks uut (
		.clk(clk), 
		.rstb(rstb), 
		.baud_select(baud_select), 
		.shifting(shifting), 
		.shift(shift)
	);

	always #100 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rstb = 0;
		baud_select = 0000;
		shifting = 0;

		// Wait 100 ns for global reset to finish
		#100 rstb = 1;
		#100 baud_select = 4'b1011; 
		#100 shifting = 1;
        
		// Add stimulus here

	end
      
endmodule

