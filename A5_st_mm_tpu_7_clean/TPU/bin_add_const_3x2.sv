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
// This is a specialized binary 3 stage Add unit for reverse converter
// LOW_SUM WIDTH is always equal to OP_WIDTH

module bin_add_const_3x2 #(parameter OP_WIDTH=16, parameter CARRY_WIDTH=1, parameter CONST_VAL = 0, parameter SUM_WIDTH = 17) 
						(input clk,
				       input [CARRY_WIDTH-1:0] in_a,		/* multiplicative operand */
//						 input [OP_WIDTH-1:0] in_b,		/* summation operand now a constant */
						 input [OP_WIDTH-1:0] in_b,
						 input enable_bin,
				       output [OP_WIDTH-1:0] low_sum,
						 output [SUM_WIDTH-1:OP_WIDTH] hi_sum);
		

logic [CARRY_WIDTH-1:0] carry_in;
logic [OP_WIDTH-1:0] b;
logic [OP_WIDTH-1:0] c;

logic [SUM_WIDTH-1:0] sum1;	 // product holding register, there is a theory here that the width of the upper sum is never greater than OPA_WIDTH?
logic [SUM_WIDTH-1:0] sum2;


assign low_sum = sum2[OP_WIDTH-1:0];
assign hi_sum = sum2[SUM_WIDTH-1:OP_WIDTH];		// upper bits are calculated this way


always @(posedge clk) begin

										// STAGE 1
	carry_in <= in_a;				// carry input latch
	b <= in_b;						// B operand input latch

	if(enable_bin)
		c <= CONST_VAL;			// conditional constant input latch
	else
		c <= 0;	
	
										// STAGE 2
	sum1 <= carry_in + b + c;	// this is the 3 input adder stage here
	
										// STAGE 3
	sum2 <= sum1;					// pipeline delay for the summation term	
	
	
	
end


endmodule
