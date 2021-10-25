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
// CREATED		"Fri May 10 07:35:37 2019"

module MRC_pipe_mlab_ec_skp0(
	clk,
	Dig_in_1_,
	Dig_in_2_,
	Dig_in_3_,
	Dig_in_4_,
	Dig_in_5_,
	Dig_in_6_,
	Dig_in_7_,
	Dig_in_8_,
	Dig_in_9_,
	Sgn_in,
	d0_0_8_,
	Sgn_out_1_,
	Sgn_out_2_,
	Sgn_out_3_,
	Sgn_out_4_,
	Sgn_out_5_,
	Sgn_out_6_,
	Sgn_out_7_,
	Sgn_out_8_A,
	Sgn_out_8_B,
	Sgn_out_9_A,
	Sgn_out_9_B
);


input wire	clk;
input wire	[17:0] Dig_in_1_;
input wire	[17:0] Dig_in_2_;
input wire	[17:0] Dig_in_3_;
input wire	[17:0] Dig_in_4_;
input wire	[17:0] Dig_in_5_;
input wire	[17:0] Dig_in_6_;
input wire	[17:0] Dig_in_7_;
input wire	[17:0] Dig_in_8_;
input wire	[17:0] Dig_in_9_;
input wire	[1:0] Sgn_in;
output wire	[17:0] d0_0_8_;
output wire	[1:0] Sgn_out_1_;
output wire	[1:0] Sgn_out_2_;
output wire	[1:0] Sgn_out_3_;
output wire	[1:0] Sgn_out_4_;
output wire	[1:0] Sgn_out_5_;
output wire	[1:0] Sgn_out_6_;
output wire	[1:0] Sgn_out_7_;
output wire	[1:0] Sgn_out_8_A;
output wire	[1:0] Sgn_out_8_B;
output wire	[1:0] Sgn_out_9_A;
output wire	[1:0] Sgn_out_9_B;

wire	[17:0] d0_0_0_;
wire	[17:0] d0_0_1_;
wire	[17:0] d0_0_2_;
wire	[17:0] d0_0_3_;
wire	[17:0] d0_0_4_;
wire	[17:0] d0_0_5_;
wire	[17:0] d0_0_6_;
wire	[17:0] d0_0_7_;
wire	[17:0] Stg1_Dig1_;
wire	[17:0] Stg1_Dig2_;
wire	[17:0] Stg1_Dig3_;
wire	[17:0] Stg1_Dig4_;
wire	[17:0] Stg1_Dig5_;
wire	[17:0] Stg1_Dig6_;
wire	[17:0] Stg1_Dig7_;
wire	[17:0] Stg1_Dig8_;
wire	[17:0] Stg1_Dig9_;
wire	[17:0] Stg2_Dig2_;
wire	[17:0] Stg2_Dig3_;
wire	[17:0] Stg2_Dig4_;
wire	[17:0] Stg2_Dig5_;
wire	[17:0] Stg2_Dig6_;
wire	[17:0] Stg2_Dig7_;
wire	[17:0] Stg2_Dig8_;
wire	[17:0] Stg2_Dig9_;
wire	[17:0] Stg3_Dig3_;
wire	[17:0] Stg3_Dig4_;
wire	[17:0] Stg3_Dig5_;
wire	[17:0] Stg3_Dig6_;
wire	[17:0] Stg3_Dig7_;
wire	[17:0] Stg3_Dig8_;
wire	[17:0] Stg3_Dig9_;
wire	[17:0] Stg4_Dig4_;
wire	[17:0] Stg4_Dig5_;
wire	[17:0] Stg4_Dig6_;
wire	[17:0] Stg4_Dig7_;
wire	[17:0] Stg4_Dig8_;
wire	[17:0] Stg4_Dig9_;
wire	[17:0] Stg5_Dig5_;
wire	[17:0] Stg5_Dig6_;
wire	[17:0] Stg5_Dig7_;
wire	[17:0] Stg5_Dig8_;
wire	[17:0] Stg5_Dig9_;
wire	[17:0] Stg6_Dig6_;
wire	[17:0] Stg6_Dig7_;
wire	[17:0] Stg6_Dig8_;
wire	[17:0] Stg6_Dig9_;
wire	[17:0] Stg7_Dig7_;
wire	[17:0] Stg7_Dig8_;
wire	[17:0] Stg7_Dig9_;
wire	[17:0] Stg8_Dig8_;
wire	[17:0] Stg8_Dig9_;
wire	[17:0] Stg9_Dig9_;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;
wire	[1:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_5;
wire	[1:0] SYNTHESIZED_WIRE_6;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	[1:0] SYNTHESIZED_WIRE_11;
wire	[0:17] SYNTHESIZED_WIRE_10;

assign	Sgn_out_1_ = SYNTHESIZED_WIRE_2;
assign	Sgn_out_2_ = SYNTHESIZED_WIRE_3;
assign	Sgn_out_3_ = SYNTHESIZED_WIRE_4;
assign	Sgn_out_4_ = SYNTHESIZED_WIRE_5;
assign	Sgn_out_5_ = SYNTHESIZED_WIRE_6;
assign	Sgn_out_6_ = SYNTHESIZED_WIRE_7;
assign	Sgn_out_7_ = SYNTHESIZED_WIRE_11;
assign	Sgn_out_8_A = SYNTHESIZED_WIRE_0;
assign	Sgn_out_8_B = SYNTHESIZED_WIRE_1;
assign	SYNTHESIZED_WIRE_10 = 0;





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


ModCompare_9L_mlab	b2v_inst2(
	.clk(clk),
	.in_A_0_(Stg1_Dig1_),
	.sign_in(Sgn_in),
	
	.sign_result(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst2.DATA_WIDTH = 18;
	defparam	b2v_inst2.MCONSTANT = 0;


ModCompare_9L_mlab	b2v_inst3(
	.clk(clk),
	.in_A_0_(Stg2_Dig2_),
	.sign_in(SYNTHESIZED_WIRE_2),
	
	.sign_result(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst3.DATA_WIDTH = 18;
	defparam	b2v_inst3.MCONSTANT = 0;


SubInvMult_8L_mlab	b2v_inst37(
	.clk(clk),
	.dataA_in(Stg1_Dig2_),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig2_));
	defparam	b2v_inst37.DATA_WIDTH = 18;
	defparam	b2v_inst37.FILE1 = "invmult_3lut0_2_1.hex";
	defparam	b2v_inst37.FILE2 = "invmult_3lut1_2_1.hex";
	defparam	b2v_inst37.FILE3 = "invmult_3lut2_2_1.hex";
	defparam	b2v_inst37.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_inst37.MODULUS = 117649;


SubInvMult_8L_mlab	b2v_inst38(
	.clk(clk),
	.dataA_in(Stg1_Dig3_),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig3_));
	defparam	b2v_inst38.DATA_WIDTH = 18;
	defparam	b2v_inst38.FILE1 = "invmult_3lut0_3_1.hex";
	defparam	b2v_inst38.FILE2 = "invmult_3lut1_3_1.hex";
	defparam	b2v_inst38.FILE3 = "invmult_3lut2_3_1.hex";
	defparam	b2v_inst38.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst38.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_inst39(
	.clk(clk),
	.dataA_in(Stg2_Dig3_),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig3_));
	defparam	b2v_inst39.DATA_WIDTH = 18;
	defparam	b2v_inst39.FILE1 = "invmult_3lut0_3_2.hex";
	defparam	b2v_inst39.FILE2 = "invmult_3lut1_3_2.hex";
	defparam	b2v_inst39.FILE3 = "invmult_3lut2_3_2.hex";
	defparam	b2v_inst39.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst39.MODULUS = 177147;


ModCompare_9L_mlab	b2v_inst4(
	.clk(clk),
	.in_A_0_(Stg3_Dig3_),
	.sign_in(SYNTHESIZED_WIRE_3),
	
	.sign_result(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst4.DATA_WIDTH = 18;
	defparam	b2v_inst4.MCONSTANT = 0;


SubInvMult_8L_mlab	b2v_inst40(
	.clk(clk),
	.dataA_in(Stg1_Dig4_),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig4_));
	defparam	b2v_inst40.DATA_WIDTH = 18;
	defparam	b2v_inst40.FILE1 = "invmult_3lut0_4_1.hex";
	defparam	b2v_inst40.FILE2 = "invmult_3lut1_4_1.hex";
	defparam	b2v_inst40.FILE3 = "invmult_3lut2_4_1.hex";
	defparam	b2v_inst40.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst40.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst41(
	.clk(clk),
	.dataA_in(Stg2_Dig4_),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig4_));
	defparam	b2v_inst41.DATA_WIDTH = 18;
	defparam	b2v_inst41.FILE1 = "invmult_3lut0_4_2.hex";
	defparam	b2v_inst41.FILE2 = "invmult_3lut1_4_2.hex";
	defparam	b2v_inst41.FILE3 = "invmult_3lut2_4_2.hex";
	defparam	b2v_inst41.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst41.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst42(
	.clk(clk),
	.dataA_in(Stg3_Dig4_),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig4_));
	defparam	b2v_inst42.DATA_WIDTH = 18;
	defparam	b2v_inst42.FILE1 = "invmult_3lut0_4_3.hex";
	defparam	b2v_inst42.FILE2 = "invmult_3lut1_4_3.hex";
	defparam	b2v_inst42.FILE3 = "invmult_3lut2_4_3.hex";
	defparam	b2v_inst42.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst42.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst43(
	.clk(clk),
	.dataA_in(Stg1_Dig5_),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig5_));
	defparam	b2v_inst43.DATA_WIDTH = 18;
	defparam	b2v_inst43.FILE1 = "invmult_3lut0_5_1.hex";
	defparam	b2v_inst43.FILE2 = "invmult_3lut1_5_1.hex";
	defparam	b2v_inst43.FILE3 = "invmult_3lut2_5_1.hex";
	defparam	b2v_inst43.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst43.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst44(
	.clk(clk),
	.dataA_in(Stg2_Dig5_),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig5_));
	defparam	b2v_inst44.DATA_WIDTH = 18;
	defparam	b2v_inst44.FILE1 = "invmult_3lut0_5_2.hex";
	defparam	b2v_inst44.FILE2 = "invmult_3lut1_5_2.hex";
	defparam	b2v_inst44.FILE3 = "invmult_3lut2_5_2.hex";
	defparam	b2v_inst44.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst44.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst45(
	.clk(clk),
	.dataA_in(Stg3_Dig5_),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig5_));
	defparam	b2v_inst45.DATA_WIDTH = 18;
	defparam	b2v_inst45.FILE1 = "invmult_3lut0_5_3.hex";
	defparam	b2v_inst45.FILE2 = "invmult_3lut1_5_3.hex";
	defparam	b2v_inst45.FILE3 = "invmult_3lut2_5_3.hex";
	defparam	b2v_inst45.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst45.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst46(
	.clk(clk),
	.dataA_in(Stg4_Dig5_),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig5_));
	defparam	b2v_inst46.DATA_WIDTH = 18;
	defparam	b2v_inst46.FILE1 = "invmult_3lut0_5_4.hex";
	defparam	b2v_inst46.FILE2 = "invmult_3lut1_5_4.hex";
	defparam	b2v_inst46.FILE3 = "invmult_3lut2_5_4.hex";
	defparam	b2v_inst46.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst46.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst47(
	.clk(clk),
	.dataA_in(Stg1_Dig6_),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig6_));
	defparam	b2v_inst47.DATA_WIDTH = 18;
	defparam	b2v_inst47.FILE1 = "invmult_3lut0_6_1.hex";
	defparam	b2v_inst47.FILE2 = "invmult_3lut1_6_1.hex";
	defparam	b2v_inst47.FILE3 = "invmult_3lut2_6_1.hex";
	defparam	b2v_inst47.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst47.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst48(
	.clk(clk),
	.dataA_in(Stg2_Dig6_),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig6_));
	defparam	b2v_inst48.DATA_WIDTH = 18;
	defparam	b2v_inst48.FILE1 = "invmult_3lut0_6_2.hex";
	defparam	b2v_inst48.FILE2 = "invmult_3lut1_6_2.hex";
	defparam	b2v_inst48.FILE3 = "invmult_3lut2_6_2.hex";
	defparam	b2v_inst48.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst48.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst49(
	.clk(clk),
	.dataA_in(Stg3_Dig6_),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig6_));
	defparam	b2v_inst49.DATA_WIDTH = 18;
	defparam	b2v_inst49.FILE1 = "invmult_3lut0_6_3.hex";
	defparam	b2v_inst49.FILE2 = "invmult_3lut1_6_3.hex";
	defparam	b2v_inst49.FILE3 = "invmult_3lut2_6_3.hex";
	defparam	b2v_inst49.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst49.MODULUS = 262051;


ModCompare_9L_mlab	b2v_inst5(
	.clk(clk),
	.in_A_0_(Stg4_Dig4_),
	.sign_in(SYNTHESIZED_WIRE_4),
	
	.sign_result(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst5.DATA_WIDTH = 18;
	defparam	b2v_inst5.MCONSTANT = 0;


SubInvMult_8L_mlab	b2v_inst50(
	.clk(clk),
	.dataA_in(Stg4_Dig6_),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig6_));
	defparam	b2v_inst50.DATA_WIDTH = 18;
	defparam	b2v_inst50.FILE1 = "invmult_3lut0_6_4.hex";
	defparam	b2v_inst50.FILE2 = "invmult_3lut1_6_4.hex";
	defparam	b2v_inst50.FILE3 = "invmult_3lut2_6_4.hex";
	defparam	b2v_inst50.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst50.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst51(
	.clk(clk),
	.dataA_in(Stg5_Dig6_),
	.dataB_in(Stg5_Dig5_),
	.mod_data_out(Stg6_Dig6_));
	defparam	b2v_inst51.DATA_WIDTH = 18;
	defparam	b2v_inst51.FILE1 = "invmult_3lut0_6_5.hex";
	defparam	b2v_inst51.FILE2 = "invmult_3lut1_6_5.hex";
	defparam	b2v_inst51.FILE3 = "invmult_3lut2_6_5.hex";
	defparam	b2v_inst51.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst51.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst52(
	.clk(clk),
	.dataA_in(Stg1_Dig7_),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig7_));
	defparam	b2v_inst52.DATA_WIDTH = 18;
	defparam	b2v_inst52.FILE1 = "invmult_3lut0_7_1.hex";
	defparam	b2v_inst52.FILE2 = "invmult_3lut1_7_1.hex";
	defparam	b2v_inst52.FILE3 = "invmult_3lut2_7_1.hex";
	defparam	b2v_inst52.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst52.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst53(
	.clk(clk),
	.dataA_in(Stg2_Dig7_),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig7_));
	defparam	b2v_inst53.DATA_WIDTH = 18;
	defparam	b2v_inst53.FILE1 = "invmult_3lut0_7_2.hex";
	defparam	b2v_inst53.FILE2 = "invmult_3lut1_7_2.hex";
	defparam	b2v_inst53.FILE3 = "invmult_3lut2_7_2.hex";
	defparam	b2v_inst53.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst53.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst54(
	.clk(clk),
	.dataA_in(Stg3_Dig7_),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig7_));
	defparam	b2v_inst54.DATA_WIDTH = 18;
	defparam	b2v_inst54.FILE1 = "invmult_3lut0_7_3.hex";
	defparam	b2v_inst54.FILE2 = "invmult_3lut1_7_3.hex";
	defparam	b2v_inst54.FILE3 = "invmult_3lut2_7_3.hex";
	defparam	b2v_inst54.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst54.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst55(
	.clk(clk),
	.dataA_in(Stg4_Dig7_),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig7_));
	defparam	b2v_inst55.DATA_WIDTH = 18;
	defparam	b2v_inst55.FILE1 = "invmult_3lut0_7_4.hex";
	defparam	b2v_inst55.FILE2 = "invmult_3lut1_7_4.hex";
	defparam	b2v_inst55.FILE3 = "invmult_3lut2_7_4.hex";
	defparam	b2v_inst55.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst55.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst56(
	.clk(clk),
	.dataA_in(Stg5_Dig7_),
	.dataB_in(Stg5_Dig5_),
	.mod_data_out(Stg6_Dig7_));
	defparam	b2v_inst56.DATA_WIDTH = 18;
	defparam	b2v_inst56.FILE1 = "invmult_3lut0_7_5.hex";
	defparam	b2v_inst56.FILE2 = "invmult_3lut1_7_5.hex";
	defparam	b2v_inst56.FILE3 = "invmult_3lut2_7_5.hex";
	defparam	b2v_inst56.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst56.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst57(
	.clk(clk),
	.dataA_in(Stg6_Dig7_),
	.dataB_in(Stg6_Dig6_),
	.mod_data_out(Stg7_Dig7_));
	defparam	b2v_inst57.DATA_WIDTH = 18;
	defparam	b2v_inst57.FILE1 = "invmult_3lut0_7_6.hex";
	defparam	b2v_inst57.FILE2 = "invmult_3lut1_7_6.hex";
	defparam	b2v_inst57.FILE3 = "invmult_3lut2_7_6.hex";
	defparam	b2v_inst57.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst57.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst59(
	.clk(clk),
	.dataA_in(Stg1_Dig8_),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig8_));
	defparam	b2v_inst59.DATA_WIDTH = 18;
	defparam	b2v_inst59.FILE1 = "invmult_3lut0_8_1.hex";
	defparam	b2v_inst59.FILE2 = "invmult_3lut1_8_1.hex";
	defparam	b2v_inst59.FILE3 = "invmult_3lut2_8_1.hex";
	defparam	b2v_inst59.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst59.MODULUS = 262079;


ModCompare_9L_mlab	b2v_inst6(
	.clk(clk),
	.in_A_0_(Stg5_Dig5_),
	.sign_in(SYNTHESIZED_WIRE_5),
	
	.sign_result(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst6.DATA_WIDTH = 18;
	defparam	b2v_inst6.MCONSTANT = 0;


SubInvMult_8L_mlab	b2v_inst60(
	.clk(clk),
	.dataA_in(Stg2_Dig8_),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig8_));
	defparam	b2v_inst60.DATA_WIDTH = 18;
	defparam	b2v_inst60.FILE1 = "invmult_3lut0_8_2.hex";
	defparam	b2v_inst60.FILE2 = "invmult_3lut1_8_2.hex";
	defparam	b2v_inst60.FILE3 = "invmult_3lut2_8_2.hex";
	defparam	b2v_inst60.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst60.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst61(
	.clk(clk),
	.dataA_in(Stg3_Dig8_),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig8_));
	defparam	b2v_inst61.DATA_WIDTH = 18;
	defparam	b2v_inst61.FILE1 = "invmult_3lut0_8_3.hex";
	defparam	b2v_inst61.FILE2 = "invmult_3lut1_8_3.hex";
	defparam	b2v_inst61.FILE3 = "invmult_3lut2_8_3.hex";
	defparam	b2v_inst61.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst61.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst62(
	.clk(clk),
	.dataA_in(Stg4_Dig8_),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig8_));
	defparam	b2v_inst62.DATA_WIDTH = 18;
	defparam	b2v_inst62.FILE1 = "invmult_3lut0_8_4.hex";
	defparam	b2v_inst62.FILE2 = "invmult_3lut1_8_4.hex";
	defparam	b2v_inst62.FILE3 = "invmult_3lut2_8_4.hex";
	defparam	b2v_inst62.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst62.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst63(
	.clk(clk),
	.dataA_in(Stg5_Dig8_),
	.dataB_in(Stg5_Dig5_),
	.mod_data_out(Stg6_Dig8_));
	defparam	b2v_inst63.DATA_WIDTH = 18;
	defparam	b2v_inst63.FILE1 = "invmult_3lut0_8_5.hex";
	defparam	b2v_inst63.FILE2 = "invmult_3lut1_8_5.hex";
	defparam	b2v_inst63.FILE3 = "invmult_3lut2_8_5.hex";
	defparam	b2v_inst63.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst63.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst64(
	.clk(clk),
	.dataA_in(Stg6_Dig8_),
	.dataB_in(Stg6_Dig6_),
	.mod_data_out(Stg7_Dig8_));
	defparam	b2v_inst64.DATA_WIDTH = 18;
	defparam	b2v_inst64.FILE1 = "invmult_3lut0_8_6.hex";
	defparam	b2v_inst64.FILE2 = "invmult_3lut1_8_6.hex";
	defparam	b2v_inst64.FILE3 = "invmult_3lut2_8_6.hex";
	defparam	b2v_inst64.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst64.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst66(
	.clk(clk),
	.dataA_in(Stg1_Dig9_),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig9_));
	defparam	b2v_inst66.DATA_WIDTH = 18;
	defparam	b2v_inst66.FILE1 = "invmult_3lut0_9_1.hex";
	defparam	b2v_inst66.FILE2 = "invmult_3lut1_9_1.hex";
	defparam	b2v_inst66.FILE3 = "invmult_3lut2_9_1.hex";
	defparam	b2v_inst66.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst66.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst67(
	.clk(clk),
	.dataA_in(Stg2_Dig9_),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig9_));
	defparam	b2v_inst67.DATA_WIDTH = 18;
	defparam	b2v_inst67.FILE1 = "invmult_3lut0_9_2.hex";
	defparam	b2v_inst67.FILE2 = "invmult_3lut1_9_2.hex";
	defparam	b2v_inst67.FILE3 = "invmult_3lut2_9_2.hex";
	defparam	b2v_inst67.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst67.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst68(
	.clk(clk),
	.dataA_in(Stg3_Dig9_),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig9_));
	defparam	b2v_inst68.DATA_WIDTH = 18;
	defparam	b2v_inst68.FILE1 = "invmult_3lut0_9_3.hex";
	defparam	b2v_inst68.FILE2 = "invmult_3lut1_9_3.hex";
	defparam	b2v_inst68.FILE3 = "invmult_3lut2_9_3.hex";
	defparam	b2v_inst68.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst68.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst69(
	.clk(clk),
	.dataA_in(Stg4_Dig9_),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig9_));
	defparam	b2v_inst69.DATA_WIDTH = 18;
	defparam	b2v_inst69.FILE1 = "invmult_3lut0_9_4.hex";
	defparam	b2v_inst69.FILE2 = "invmult_3lut1_9_4.hex";
	defparam	b2v_inst69.FILE3 = "invmult_3lut2_9_4.hex";
	defparam	b2v_inst69.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst69.MODULUS = 262103;


ModCompare_9L_mlab	b2v_inst7(
	.clk(clk),
	.in_A_0_(Stg6_Dig6_),
	.sign_in(SYNTHESIZED_WIRE_6),
	
	.sign_result(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst7.DATA_WIDTH = 18;
	defparam	b2v_inst7.MCONSTANT = 0;


SubInvMult_8L_mlab	b2v_inst70(
	.clk(clk),
	.dataA_in(Stg5_Dig9_),
	.dataB_in(Stg5_Dig5_),
	.mod_data_out(Stg6_Dig9_));
	defparam	b2v_inst70.DATA_WIDTH = 18;
	defparam	b2v_inst70.FILE1 = "invmult_3lut0_9_5.hex";
	defparam	b2v_inst70.FILE2 = "invmult_3lut1_9_5.hex";
	defparam	b2v_inst70.FILE3 = "invmult_3lut2_9_5.hex";
	defparam	b2v_inst70.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst70.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst71(
	.clk(clk),
	.dataA_in(Stg6_Dig9_),
	.dataB_in(Stg6_Dig6_),
	.mod_data_out(Stg7_Dig9_));
	defparam	b2v_inst71.DATA_WIDTH = 18;
	defparam	b2v_inst71.FILE1 = "invmult_3lut0_9_6.hex";
	defparam	b2v_inst71.FILE2 = "invmult_3lut1_9_6.hex";
	defparam	b2v_inst71.FILE3 = "invmult_3lut2_9_6.hex";
	defparam	b2v_inst71.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst71.MODULUS = 262103;


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
	.sign_in(SYNTHESIZED_WIRE_7),
	
	.sign_result(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst8.DATA_WIDTH = 18;
	defparam	b2v_inst8.MCONSTANT = 0;


ModDualCmp_9L_2in	b2v_inst9(
	.clk(clk),
	.in_A_0_(Stg8_Dig8_),
	.sign_in_A(SYNTHESIZED_WIRE_11),
	.sign_in_B(SYNTHESIZED_WIRE_11),
	
	
	.sign_result_A(SYNTHESIZED_WIRE_0),
	.sign_result_B(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst9.DATA_WIDTH = 18;
	defparam	b2v_inst9.NEG_DIGIT = 229311;
	defparam	b2v_inst9.POS_DIGIT = 32768;


ModMultAdd_8L_v2	b2v_inst_d0_0(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(SYNTHESIZED_WIRE_10),
	.result(d0_0_0_));
	defparam	b2v_inst_d0_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_0.FILE1 = "pwrmult_3lut0_d0_0_0.hex";
	defparam	b2v_inst_d0_0.FILE2 = "pwrmult_3lut1_d0_0_0.hex";
	defparam	b2v_inst_d0_0.FILE3 = "pwrmult_3lut2_d0_0_0.hex";
	defparam	b2v_inst_d0_0.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_0.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_1(
	.clk(clk),
	.OP_A_mult(Stg2_Dig2_),
	.OP_B_add(d0_0_0_),
	.result(d0_0_1_));
	defparam	b2v_inst_d0_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_1.FILE1 = "pwrmult_3lut0_d0_0_1.hex";
	defparam	b2v_inst_d0_1.FILE2 = "pwrmult_3lut1_d0_0_1.hex";
	defparam	b2v_inst_d0_1.FILE3 = "pwrmult_3lut2_d0_0_1.hex";
	defparam	b2v_inst_d0_1.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_1.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_2(
	.clk(clk),
	.OP_A_mult(Stg3_Dig3_),
	.OP_B_add(d0_0_1_),
	.result(d0_0_2_));
	defparam	b2v_inst_d0_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_2.FILE1 = "pwrmult_3lut0_d0_0_2.hex";
	defparam	b2v_inst_d0_2.FILE2 = "pwrmult_3lut1_d0_0_2.hex";
	defparam	b2v_inst_d0_2.FILE3 = "pwrmult_3lut2_d0_0_2.hex";
	defparam	b2v_inst_d0_2.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_2.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_3(
	.clk(clk),
	.OP_A_mult(Stg4_Dig4_),
	.OP_B_add(d0_0_2_),
	.result(d0_0_3_));
	defparam	b2v_inst_d0_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_3.FILE1 = "pwrmult_3lut0_d0_0_3.hex";
	defparam	b2v_inst_d0_3.FILE2 = "pwrmult_3lut1_d0_0_3.hex";
	defparam	b2v_inst_d0_3.FILE3 = "pwrmult_3lut2_d0_0_3.hex";
	defparam	b2v_inst_d0_3.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_3.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_4(
	.clk(clk),
	.OP_A_mult(Stg5_Dig5_),
	.OP_B_add(d0_0_3_),
	.result(d0_0_4_));
	defparam	b2v_inst_d0_4.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_4.FILE1 = "pwrmult_3lut0_d0_0_4.hex";
	defparam	b2v_inst_d0_4.FILE2 = "pwrmult_3lut1_d0_0_4.hex";
	defparam	b2v_inst_d0_4.FILE3 = "pwrmult_3lut2_d0_0_4.hex";
	defparam	b2v_inst_d0_4.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_4.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_5(
	.clk(clk),
	.OP_A_mult(Stg6_Dig6_),
	.OP_B_add(d0_0_4_),
	.result(d0_0_5_));
	defparam	b2v_inst_d0_5.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_5.FILE1 = "pwrmult_3lut0_d0_0_5.hex";
	defparam	b2v_inst_d0_5.FILE2 = "pwrmult_3lut1_d0_0_5.hex";
	defparam	b2v_inst_d0_5.FILE3 = "pwrmult_3lut2_d0_0_5.hex";
	defparam	b2v_inst_d0_5.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_5.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_6(
	.clk(clk),
	.OP_A_mult(Stg7_Dig7_),
	.OP_B_add(d0_0_5_),
	.result(d0_0_6_));
	defparam	b2v_inst_d0_6.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_6.FILE1 = "pwrmult_3lut0_d0_0_6.hex";
	defparam	b2v_inst_d0_6.FILE2 = "pwrmult_3lut1_d0_0_6.hex";
	defparam	b2v_inst_d0_6.FILE3 = "pwrmult_3lut2_d0_0_6.hex";
	defparam	b2v_inst_d0_6.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_6.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_7(
	.clk(clk),
	.OP_A_mult(Stg8_Dig8_),
	.OP_B_add(d0_0_6_),
	.result(d0_0_7_));
	defparam	b2v_inst_d0_7.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_7.FILE1 = "pwrmult_3lut0_d0_0_7.hex";
	defparam	b2v_inst_d0_7.FILE2 = "pwrmult_3lut1_d0_0_7.hex";
	defparam	b2v_inst_d0_7.FILE3 = "pwrmult_3lut2_d0_0_7.hex";
	defparam	b2v_inst_d0_7.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_7.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_8(
	.clk(clk),
	.OP_A_mult(Stg9_Dig9_),
	.OP_B_add(d0_0_7_),
	.result(d0_0_8_));
	defparam	b2v_inst_d0_8.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_8.FILE1 = "pwrmult_3lut0_d0_0_8.hex";
	defparam	b2v_inst_d0_8.FILE2 = "pwrmult_3lut1_d0_0_8.hex";
	defparam	b2v_inst_d0_8.FILE3 = "pwrmult_3lut2_d0_0_8.hex";
	defparam	b2v_inst_d0_8.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_8.MODULUS = 65536;

assign	Stg1_Dig9_ = Dig_in_9_;
assign	Stg1_Dig1_ = Dig_in_1_;
assign	Stg1_Dig2_ = Dig_in_2_;
assign	Stg1_Dig3_ = Dig_in_3_;
assign	Stg1_Dig4_ = Dig_in_4_;
assign	Stg1_Dig5_ = Dig_in_5_;
assign	Stg1_Dig6_ = Dig_in_6_;
assign	Stg1_Dig7_ = Dig_in_7_;
assign	Stg1_Dig8_ = Dig_in_8_;

endmodule
