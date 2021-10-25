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
// This is a specialized binary 3 stage Multiply then Add unit for reverse converter
// LOW_SUM WIDTH is always equal to OPA_WIDTH

module bin_mult_add_2x2 #(parameter OPA_WIDTH=16, parameter OPB_WIDTH=18, parameter OP_CONST=262127) 
						(input clk,
				       input [OPA_WIDTH-1:0] in_a,		/* multiplicative operand */
						 input [OPB_WIDTH-1:0] in_b,		/* summation operand */
				       output [OPA_WIDTH-1:0] low_sum,
						 output [OPB_WIDTH-1:0] hi_sum);
		

logic [OPA_WIDTH-1:0] a;
logic [OPB_WIDTH-1:0] b;
logic [OPB_WIDTH-1:0] b2;		//pipeline register
 
logic [OPA_WIDTH+OPB_WIDTH-1:0] p;		   // product holding register, there is a theory here that the width of the upper sum is never greater than OPA_WIDTH?
logic [OPA_WIDTH+OPB_WIDTH-1:0] prod_sum;

assign low_sum = prod_sum[OPA_WIDTH-1:0];
assign hi_sum = prod_sum[OPA_WIDTH+OPB_WIDTH-1:OPA_WIDTH];


// The logic below might fit nicely into a DSP block?
always @(posedge clk) begin

										// STAGE 1
	a <= in_a;						// multiplicative operand staging
	b <= in_b;						// summation operand	staging
	
										// STAGE 2
	p <= a * OP_CONST;			// this is the inferred multiplier here	
	b2 <= b;							// pipeline delay for the summation term	
	
										// STAGE 3
	prod_sum <= p + b2;			// perform addition and store

	
end


endmodule
