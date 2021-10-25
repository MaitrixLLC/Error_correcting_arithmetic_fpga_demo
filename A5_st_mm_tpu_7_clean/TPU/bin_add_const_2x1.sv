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
// Basic registered add with constant without carry
// created as primitive for modular circuits that need to add a constant to a binary value
// E. Olsen

module bin_add_const_2x1 #(parameter OPA_WIDTH=18, parameter CONST=0, parameter OUT_WIDTH=19) 
						(input clk,
				       input [OPA_WIDTH-1:0] in_a,
						 output [OUT_WIDTH-1:0] reg_sum);


logic [OUT_WIDTH-1:0] r;			// register the operand width

assign reg_sum = r;					// output reg_sum with entire register value


		
always @(posedge clk) begin

		
		r <= in_a + CONST;

		
end
		
		
endmodule
