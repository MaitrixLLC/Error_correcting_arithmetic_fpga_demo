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
// PROGRAM		"Quartus Prime"
// VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Standard Edition"
// CREATED		"Tue Mar 06 14:19:58 2018"

module SubInvMult_8L_mlab_tst(
	clk,
	dataA_,
	dataB_,
	mod_result
);


input wire	clk;
input wire	[17:0] dataA_;
input wire	[17:0] dataB_;
output wire	[17:0] mod_result;






SubInvMult_8L_mlab	b2v_inst(
	.clk(clk),
	.dataA_in(dataA_),
	.dataB_in(dataB_),
	.mod_data_out(mod_result));
	defparam	b2v_inst.DATA_WIDTH = 18;
	defparam	b2v_inst.FILE1 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst.FILE2 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst.FILE3 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst.FILE4 = "data2.hex";
	defparam	b2v_inst.MODULUS = 177147;


endmodule
