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
// 2 input OR gate with registered output

module priority2_final_reg (

	clk, inA, inB, errA, errB, mal, allOK, Y, err

);

input clk;
input wire inA;		// last two priority input stage
input wire inB;

input wire errA;		// last stage previous stage err inputs
input wire errB;
input wire mal;		// other sources of malfunction input
input wire allOK;

output wire Y;
output err;

reg Y_ff;
reg err_ff;

assign Y = Y_ff;
assign err = err_ff;


always @(posedge clk) begin

	Y_ff <= (inA ^ inB);
	
	err_ff <= (inA & inB) | (mal | ((errA | errB) & ~allOK));		// if both inputs are one, then a priority error occurred, and also pass any input errors to error ff


end


endmodule	



