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
// This is an 18x18 DSP multiplier primitive, continuously clocked

module mult_reg18x18 (input clk,
						input [17:0] op_a, 
						input [17:0] op_b, 
						output [35:0] result);
		

logic [35:0] product;
//wire [35:0] product;
logic [17:0] a_ff;				// adding register storage at low level to induce tight register packing in DSP block, ebo 9/13/18
logic [17:0] b_ff;

assign result = product;


		
always @(posedge clk) begin
//always @(*) begin

	a_ff <= op_a;						// stage 1, pre-store in DSP packing reigster
	b_ff <= op_b;

//	product <= op_a * op_b;

//	product = a_ff * b_ff;			// stage 2, store the multiplier result  (could eliminate final storage for single delay stage with DSP packing? - need test)


	product <= a_ff * b_ff;

end
		
		
endmodule