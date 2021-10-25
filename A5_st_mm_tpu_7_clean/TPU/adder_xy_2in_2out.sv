//
//  Copyright (c) 2012-2021, MaitrixLLC and OIR
//
//  This source code is for demonstration purposes only and remains the property of MaitrixLLC.
//  All rights reserved;
//
//  This source code licensed under the Creative Commons License:
//  -->  Attribution-NonCommercial-NoDerivs;  CC BY-NC-ND
//
//  Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. 
//  You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
//
//  NonCommercial — You may not use the material for commercial purposes.
//
//  NoDerivatives — If you remix, transform, or build upon the material, you may not distribute the modified material.
//
//	 Some or all of this material is protected under the following US patents:  
//  10,992,314, 10,649,737, 10,649,736, 10,599,398, 10,387,122, 9,712,185, 9,395,952, 9,081,608, 9,311,050
//
//  Contact info@maitrix.com for more information about licensing
//
// This is an adder primitive with latched result, continuously clocked
// takes two input arguments, one of DATA_A_WIDTH, and the other of DATA_B_WIDTH, 
// and produces a sum of DATA_B_WIDTH split into a lower register sum of DATA_LO_WIDTH 
// and a high register sum of DATA_B_WIDTH-DATA_LO_WIDTH
// E. Olsen

module adder_xy_2in_2out #(parameter DATA_A_WIDTH=16, parameter DATA_B_WIDTH=34, parameter DATA_LO_WIDTH=16) 
(
input clk,
input [DATA_A_WIDTH-1:0] in_a,
input [DATA_B_WIDTH-1:0] in_b, 
output [DATA_LO_WIDTH-1:0] low_sum,
output [DATA_B_WIDTH-1:DATA_LO_WIDTH] hi_sum
);
		

logic [DATA_B_WIDTH-1:0] r;

assign low_sum = r[DATA_LO_WIDTH-1:0];
assign hi_sum = r[DATA_B_WIDTH-1:DATA_LO_WIDTH];

		
always @(posedge clk) begin

	
	r <= in_a + in_b;

		
end
		
		
endmodule
