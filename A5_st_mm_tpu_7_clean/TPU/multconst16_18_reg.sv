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
// multiply by constant, registered output, continuously clocked
// E. Olsen

module multconst16_18_reg #(parameter DATA_IN_WIDTH = 16, parameter CONST_WIDTH = 18, parameter CONST_OP = 78125)
(
 input clk,
 input [DATA_IN_WIDTH-1:0] op_a, 
 output [DATA_IN_WIDTH+CONST_WIDTH-1:0] result
);
		

logic [DATA_IN_WIDTH+CONST_WIDTH-1:0] product;

assign result = product;

		
always @(posedge clk) begin

	
	product <= op_a * CONST_OP;


end
		
		
endmodule
