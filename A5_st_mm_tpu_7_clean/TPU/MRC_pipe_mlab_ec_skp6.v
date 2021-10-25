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
// CREATED		"Tue May 14 07:06:14 2019"

module MRC_pipe_mlab_ec_skp6(
	clk,
	d6_0_5_in,
	Dig_in_7_,
	Dig_in_8_,
	Dig_in_9_,
	Sgn_in,
	d6_0_8_,
	Sgn_out_7_,
	Sgn_out_8_A,
	Sgn_out_8_B,
	Sgn_out_9_A,
	Sgn_out_9_B
);


input wire	clk;
input wire	[17:0] d6_0_5_in;
input wire	[17:0] Dig_in_7_;
input wire	[17:0] Dig_in_8_;
input wire	[17:0] Dig_in_9_;
input wire	[1:0] Sgn_in;
output wire	[17:0] d6_0_8_;
output wire	[1:0] Sgn_out_7_;
output wire	[1:0] Sgn_out_8_A;
output wire	[1:0] Sgn_out_8_B;
output wire	[1:0] Sgn_out_9_A;
output wire	[1:0] Sgn_out_9_B;

wire	[17:0] d6_0_5_;
wire	[17:0] d6_0_6_;
wire	[17:0] d6_0_7_;
wire	[17:0] Stg7_Dig7_;
wire	[17:0] Stg7_Dig8_;
wire	[17:0] Stg7_Dig9_;
wire	[17:0] Stg8_Dig8_;
wire	[17:0] Stg8_Dig9_;
wire	[17:0] Stg9_Dig9_;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_4;

assign	Sgn_out_7_ = SYNTHESIZED_WIRE_4;
assign	Sgn_out_8_A = SYNTHESIZED_WIRE_0;
assign	Sgn_out_8_B = SYNTHESIZED_WIRE_1;




ModDualCmp_9L_2in	b2v_inst10(
	.clk(clk),
	.in_A_0_(Stg9_Dig9_),
	.sign_in_A(SYNTHESIZED_WIRE_0),
	.sign_in_B(SYNTHESIZED_WIRE_1),
	
	
	.sign_result_A(Sgn_out_9_A),
	.sign_result_B(Sgn_out_9_B));
	defparam	b2v_inst10.DATA_WIDTH = 18;
	defparam	b2v_inst10.NEG_DIGIT = 262102;
	defparam	b2v_inst10.POS_DIGIT = 0;


SubInvMult_8L_mlab	b2v_inst72(
	.clk(clk),
	.dataA_in(Stg7_Dig8_),
	.dataB_in(Stg7_Dig7_),
	.mod_data_out(Stg8_Dig8_));
	defparam	b2v_inst72.DATA_WIDTH = 18;
	defparam	b2v_inst72.FILE1 = "invmult_3lut0_8_7.hex";
	defparam	b2v_inst72.FILE2 = "invmult_3lut1_8_7.hex";
	defparam	b2v_inst72.FILE3 = "invmult_3lut2_8_7.hex";
	defparam	b2v_inst72.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst72.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst73(
	.clk(clk),
	.dataA_in(Stg7_Dig9_),
	.dataB_in(Stg7_Dig7_),
	.mod_data_out(Stg8_Dig9_));
	defparam	b2v_inst73.DATA_WIDTH = 18;
	defparam	b2v_inst73.FILE1 = "invmult_3lut0_9_7.hex";
	defparam	b2v_inst73.FILE2 = "invmult_3lut1_9_7.hex";
	defparam	b2v_inst73.FILE3 = "invmult_3lut2_9_7.hex";
	defparam	b2v_inst73.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst73.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst74(
	.clk(clk),
	.dataA_in(Stg8_Dig9_),
	.dataB_in(Stg8_Dig8_),
	.mod_data_out(Stg9_Dig9_));
	defparam	b2v_inst74.DATA_WIDTH = 18;
	defparam	b2v_inst74.FILE1 = "invmult_3lut0_9_8.hex";
	defparam	b2v_inst74.FILE2 = "invmult_3lut1_9_8.hex";
	defparam	b2v_inst74.FILE3 = "invmult_3lut2_9_8.hex";
	defparam	b2v_inst74.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst74.MODULUS = 262103;


ModCompare_9L_mlab	b2v_inst8(
	.clk(clk),
	.in_A_0_(Stg7_Dig7_),
	.sign_in(Sgn_in),
	
	.sign_result(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst8.DATA_WIDTH = 18;
	defparam	b2v_inst8.MCONSTANT = 131034;


ModDualCmp_9L_2in	b2v_inst9(
	.clk(clk),
	.in_A_0_(Stg8_Dig8_),
	.sign_in_A(SYNTHESIZED_WIRE_4),
	.sign_in_B(SYNTHESIZED_WIRE_4),
	
	
	.sign_result_A(SYNTHESIZED_WIRE_0),
	.sign_result_B(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst9.DATA_WIDTH = 18;
	defparam	b2v_inst9.NEG_DIGIT = 131053;
	defparam	b2v_inst9.POS_DIGIT = 131025;


ModMultAdd_8L_v2	b2v_inst_d6_6(
	.clk(clk),
	.OP_A_mult(Stg7_Dig7_),
	.OP_B_add(d6_0_5_),
	.result(d6_0_6_));
	defparam	b2v_inst_d6_6.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_6.FILE1 = "pwrmult_3lut0_d6_0_6.hex";
	defparam	b2v_inst_d6_6.FILE2 = "pwrmult_3lut1_d6_0_6.hex";
	defparam	b2v_inst_d6_6.FILE3 = "pwrmult_3lut2_d6_0_6.hex";
	defparam	b2v_inst_d6_6.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_6.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_inst_d6_7(
	.clk(clk),
	.OP_A_mult(Stg8_Dig8_),
	.OP_B_add(d6_0_6_),
	.result(d6_0_7_));
	defparam	b2v_inst_d6_7.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_7.FILE1 = "pwrmult_3lut0_d6_0_7.hex";
	defparam	b2v_inst_d6_7.FILE2 = "pwrmult_3lut1_d6_0_7.hex";
	defparam	b2v_inst_d6_7.FILE3 = "pwrmult_3lut2_d6_0_7.hex";
	defparam	b2v_inst_d6_7.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_7.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_inst_d6_8(
	.clk(clk),
	.OP_A_mult(Stg9_Dig9_),
	.OP_B_add(d6_0_7_),
	.result(d6_0_8_));
	defparam	b2v_inst_d6_8.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_8.FILE1 = "pwrmult_3lut0_d6_0_8.hex";
	defparam	b2v_inst_d6_8.FILE2 = "pwrmult_3lut1_d6_0_8.hex";
	defparam	b2v_inst_d6_8.FILE3 = "pwrmult_3lut2_d6_0_8.hex";
	defparam	b2v_inst_d6_8.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_8.MODULUS = 262051;

assign	Stg7_Dig9_ = Dig_in_9_;
assign	Stg7_Dig7_ = Dig_in_7_;
assign	Stg7_Dig8_ = Dig_in_8_;
assign	d6_0_5_ = d6_0_5_in;

endmodule
