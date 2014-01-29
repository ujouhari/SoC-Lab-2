`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:15 10/14/2013 
// Design Name: 
// Module Name:    Counter_clocks 
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
module Counter_clocks( clk, rstb, baud_select,shifting, shift);

input clk, rstb;
input [3:0] baud_select;
input shifting;
output shift;

reg [18:0] counter;
wire [3:0] baud_select;
reg [18:0] clock_bits;
wire shift;
wire [1:0] sel;


assign sel = {shifting,shift};
assign shift = (counter == clock_bits);

always @ (*)
begin
	clock_bits = clock_bits;
case (baud_select)

	4'b0000: clock_bits = 166667;
	4'b0001: clock_bits = 41667;
	4'b0010: clock_bits = 20833;
	4'b0011: clock_bits = 10417;
	4'b0100: clock_bits = 5208;
	4'b0101: clock_bits = 2604;
	4'b0110: clock_bits = 1302;
	4'b0111: clock_bits = 868;
	4'b1000: clock_bits = 434;
	4'b1001: clock_bits = 217;
	4'b1010: clock_bits = 109;
	4'b1011: clock_bits = 54;
	default clock_bits = 5208;
	endcase

//if (counter == clock_bits) shift = 1'b1; 
//else 								shift = 1'b0;

end

always @(posedge clk, negedge rstb)

if 		(!rstb) 
begin
	counter <= 18'b0;
	//clock_bits <= 5208;
end
else case (sel)

		2'b00: counter <= 18'b0 ;
		2'b01: counter <= 18'b0 ;
		2'b10: counter <= counter + 1;
		2'b11: counter <= 18'b0;
		default counter <= counter;
	
endcase
		
endmodule
