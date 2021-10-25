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
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
// CREATED		"Tue May 14 22:59:19 2019"

module MRC_pipe_mlab_ec_skp8(
	clk,
	d8_0_7_in,
	Dig_in_9_,
	Sgn_in_A,
	Sgn_in_B,
	d8_0_8_,
	Sgn_out_9_A,
	Sgn_out_9_B
);


input wire	clk;
input wire	[17:0] d8_0_7_in;
input wire	[17:0] Dig_in_9_;
input wire	[1:0] Sgn_in_A;
input wire	[1:0] Sgn_in_B;
output wire	[17:0] d8_0_8_;
output wire	[1:0] Sgn_out_9_A;
output wire	[1:0] Sgn_out_9_B;

wire	[17:0] d8_0_7_;
wire	[17:0] Stg9_Dig9_;





ModDualCmp_9L_2in	b2v_inst10(
	.clk(clk),
	.in_A_0_(Stg9_Dig9_),
	.sign_in_A(Sgn_in_A),
	.sign_in_B(Sgn_in_B),
	
	
	.sign_result_A(Sgn_out_9_A),
	.sign_result_B(Sgn_out_9_B));
	defparam	b2v_inst10.DATA_WIDTH = 18;
	defparam	b2v_inst10.NEG_DIGIT = 262102;
	defparam	b2v_inst10.POS_DIGIT = 0;


ModMultAdd_8L_v2	b2v_inst_d6_8(
	.clk(clk),
	.OP_A_mult(Stg9_Dig9_),
	.OP_B_add(d8_0_7_),
	.result(d8_0_8_));
	defparam	b2v_inst_d6_8.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_8.FILE1 = "pwrmult_3lut0_d8_0_8.hex";
	defparam	b2v_inst_d6_8.FILE2 = "pwrmult_3lut1_d8_0_8.hex";
	defparam	b2v_inst_d6_8.FILE3 = "pwrmult_3lut2_d8_0_8.hex";
	defparam	b2v_inst_d6_8.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d6_8.MODULUS = 262079;

assign	Stg9_Dig9_ = Dig_in_9_;
assign	d8_0_7_ = d8_0_7_in;

endmodule
