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
// takes two input arguments, one of half DATA_WIDTH, and the other of DATA_WIDTH, 
// and produces a sum of DATA_WIDTH split into a lower register sum and a high register sum, 
// E. Olsen

module adder_2in_2out #(parameter DATA_WIDTH=18) 
(
input clk,
input [DATA_WIDTH-1:0] in_a,
input [2*DATA_WIDTH-1:0] in_b, 
output [DATA_WIDTH-1:0] low_sum,
output [2*DATA_WIDTH-1:DATA_WIDTH] hi_sum
);
		

logic [2*DATA_WIDTH-1:0] r;

assign low_sum = r[DATA_WIDTH-1:0];
assign hi_sum = r[2*DATA_WIDTH-1:DATA_WIDTH];

		
always @(posedge clk) begin

	
	r <= in_a + in_b;

		
end
		
		
endmodule
