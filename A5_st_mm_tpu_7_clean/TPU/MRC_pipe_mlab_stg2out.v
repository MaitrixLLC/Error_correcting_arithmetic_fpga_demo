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
// CREATED		"Thu Aug 08 21:27:02 2019"

module MRC_pipe_mlab_stg2out(
	clk,
	Dig_in_0,
	Dig_in_1,
	Dig_in_2,
	Dig_in_3,
	Dig_in_4,
	Dig_in_5,
	Dig_in_6,
	Dig_in_7,
	Dig_out_1,
	Dig_out_3,
	Dig_out_4,
	Dig_out_5,
	Dig_out_6,
	Dig_out_7,
	Stg2_Dig_out_2,
	Stg2_Dig_out_3,
	Stg2_Dig_out_4,
	Stg2_Dig_out_5,
	Stg2_Dig_out_6,
	Stg2_Dig_out_7
);


input wire	clk;
input wire	[17:0] Dig_in_0;
input wire	[17:0] Dig_in_1;
input wire	[17:0] Dig_in_2;
input wire	[17:0] Dig_in_3;
input wire	[17:0] Dig_in_4;
input wire	[17:0] Dig_in_5;
input wire	[17:0] Dig_in_6;
input wire	[17:0] Dig_in_7;
output wire	[17:0] Dig_out_1;
output wire	[17:0] Dig_out_3;
output wire	[17:0] Dig_out_4;
output wire	[17:0] Dig_out_5;
output wire	[17:0] Dig_out_6;
output wire	[17:0] Dig_out_7;
output wire	[17:0] Stg2_Dig_out_2;
output wire	[17:0] Stg2_Dig_out_3;
output wire	[17:0] Stg2_Dig_out_4;
output wire	[17:0] Stg2_Dig_out_5;
output wire	[17:0] Stg2_Dig_out_6;
output wire	[17:0] Stg2_Dig_out_7;

wire	[17:0] Stg2_Dig_2_;
wire	[17:0] Stg2_Dig_3_;
wire	[17:0] Stg2_Dig_4_;
wire	[17:0] Stg2_Dig_5_;
wire	[17:0] Stg2_Dig_6_;
wire	[17:0] Stg2_Dig_7_;
wire	[17:0] SYNTHESIZED_WIRE_0;
wire	[17:0] SYNTHESIZED_WIRE_32;
wire	[17:0] SYNTHESIZED_WIRE_2;
wire	[17:0] SYNTHESIZED_WIRE_4;
wire	[17:0] SYNTHESIZED_WIRE_6;
wire	[17:0] SYNTHESIZED_WIRE_33;
wire	[17:0] SYNTHESIZED_WIRE_8;
wire	[17:0] SYNTHESIZED_WIRE_10;
wire	[17:0] SYNTHESIZED_WIRE_12;
wire	[17:0] SYNTHESIZED_WIRE_34;
wire	[17:0] SYNTHESIZED_WIRE_14;
wire	[17:0] SYNTHESIZED_WIRE_16;
wire	[17:0] SYNTHESIZED_WIRE_18;
wire	[17:0] SYNTHESIZED_WIRE_20;
wire	[17:0] SYNTHESIZED_WIRE_35;
wire	[17:0] SYNTHESIZED_WIRE_22;
wire	[17:0] SYNTHESIZED_WIRE_24;
wire	[17:0] SYNTHESIZED_WIRE_26;
wire	[17:0] SYNTHESIZED_WIRE_28;
wire	[17:0] SYNTHESIZED_WIRE_30;
wire	[17:0] SYNTHESIZED_WIRE_31;

assign	Dig_out_1 = SYNTHESIZED_WIRE_32;
assign	Dig_out_3 = SYNTHESIZED_WIRE_33;
assign	Dig_out_4 = SYNTHESIZED_WIRE_34;
assign	Dig_out_5 = SYNTHESIZED_WIRE_35;
assign	Dig_out_6 = SYNTHESIZED_WIRE_31;




SubInvMult_8L_mlab	b2v_inst(
	.clk(clk),
	.dataA_in(Dig_in_1),
	.dataB_in(Dig_in_0),
	.mod_data_out(SYNTHESIZED_WIRE_32));
	defparam	b2v_inst.DATA_WIDTH = 18;
	defparam	b2v_inst.FILE1 = "invmult_3lut0_1_0.hex";
	defparam	b2v_inst.FILE2 = "invmult_3lut1_1_0.hex";
	defparam	b2v_inst.FILE3 = "invmult_3lut2_1_0.hex";
	defparam	b2v_inst.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst.MODULUS = 78125;


SubInvMult_8L_mlab	b2v_inst31(
	.clk(clk),
	.dataA_in(Dig_in_2),
	.dataB_in(Dig_in_0),
	.mod_data_out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst31.DATA_WIDTH = 18;
	defparam	b2v_inst31.FILE1 = "invmult_3lut0_2_0.hex";
	defparam	b2v_inst31.FILE2 = "invmult_3lut1_2_0.hex";
	defparam	b2v_inst31.FILE3 = "invmult_3lut2_2_0.hex";
	defparam	b2v_inst31.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_inst31.MODULUS = 117649;


SubInvMult_8L_mlab	b2v_inst32(
	.clk(clk),
	.dataA_in(Dig_in_3),
	.dataB_in(Dig_in_0),
	.mod_data_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst32.DATA_WIDTH = 18;
	defparam	b2v_inst32.FILE1 = "invmult_3lut0_3_0.hex";
	defparam	b2v_inst32.FILE2 = "invmult_3lut1_3_0.hex";
	defparam	b2v_inst32.FILE3 = "invmult_3lut2_3_0.hex";
	defparam	b2v_inst32.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst32.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_inst33(
	.clk(clk),
	.dataA_in(Dig_in_4),
	.dataB_in(Dig_in_0),
	.mod_data_out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst33.DATA_WIDTH = 18;
	defparam	b2v_inst33.FILE1 = "invmult_3lut0_4_0.hex";
	defparam	b2v_inst33.FILE2 = "invmult_3lut1_4_0.hex";
	defparam	b2v_inst33.FILE3 = "invmult_3lut2_4_0.hex";
	defparam	b2v_inst33.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst33.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst34(
	.clk(clk),
	.dataA_in(Dig_in_5),
	.dataB_in(Dig_in_0),
	.mod_data_out(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst34.DATA_WIDTH = 18;
	defparam	b2v_inst34.FILE1 = "invmult_3lut0_5_0.hex";
	defparam	b2v_inst34.FILE2 = "invmult_3lut1_5_0.hex";
	defparam	b2v_inst34.FILE3 = "invmult_3lut2_5_0.hex";
	defparam	b2v_inst34.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst34.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst35(
	.clk(clk),
	.dataA_in(Dig_in_6),
	.dataB_in(Dig_in_0),
	.mod_data_out(SYNTHESIZED_WIRE_14));
	defparam	b2v_inst35.DATA_WIDTH = 18;
	defparam	b2v_inst35.FILE1 = "invmult_3lut0_6_0.hex";
	defparam	b2v_inst35.FILE2 = "invmult_3lut1_6_0.hex";
	defparam	b2v_inst35.FILE3 = "invmult_3lut2_6_0.hex";
	defparam	b2v_inst35.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst35.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst36(
	.clk(clk),
	.dataA_in(Dig_in_7),
	.dataB_in(Dig_in_0),
	.mod_data_out(SYNTHESIZED_WIRE_22));
	defparam	b2v_inst36.DATA_WIDTH = 18;
	defparam	b2v_inst36.FILE1 = "invmult_3lut0_7_0.hex";
	defparam	b2v_inst36.FILE2 = "invmult_3lut1_7_0.hex";
	defparam	b2v_inst36.FILE3 = "invmult_3lut2_7_0.hex";
	defparam	b2v_inst36.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst36.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst37(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_0),
	.dataB_in(SYNTHESIZED_WIRE_32),
	.mod_data_out(Stg2_Dig_2_));
	defparam	b2v_inst37.DATA_WIDTH = 18;
	defparam	b2v_inst37.FILE1 = "invmult_3lut0_2_1.hex";
	defparam	b2v_inst37.FILE2 = "invmult_3lut1_2_1.hex";
	defparam	b2v_inst37.FILE3 = "invmult_3lut2_2_1.hex";
	defparam	b2v_inst37.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_inst37.MODULUS = 117649;


SubInvMult_8L_mlab	b2v_inst38(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_2),
	.dataB_in(SYNTHESIZED_WIRE_32),
	.mod_data_out(Stg2_Dig_3_));
	defparam	b2v_inst38.DATA_WIDTH = 18;
	defparam	b2v_inst38.FILE1 = "invmult_3lut0_3_1.hex";
	defparam	b2v_inst38.FILE2 = "invmult_3lut1_3_1.hex";
	defparam	b2v_inst38.FILE3 = "invmult_3lut2_3_1.hex";
	defparam	b2v_inst38.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst38.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_inst39(
	.clk(clk),
	.dataA_in(Stg2_Dig_3_),
	.dataB_in(Stg2_Dig_2_),
	.mod_data_out(SYNTHESIZED_WIRE_33));
	defparam	b2v_inst39.DATA_WIDTH = 18;
	defparam	b2v_inst39.FILE1 = "invmult_3lut0_3_2.hex";
	defparam	b2v_inst39.FILE2 = "invmult_3lut1_3_2.hex";
	defparam	b2v_inst39.FILE3 = "invmult_3lut2_3_2.hex";
	defparam	b2v_inst39.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst39.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_inst40(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_4),
	.dataB_in(SYNTHESIZED_WIRE_32),
	.mod_data_out(Stg2_Dig_4_));
	defparam	b2v_inst40.DATA_WIDTH = 18;
	defparam	b2v_inst40.FILE1 = "invmult_3lut0_4_1.hex";
	defparam	b2v_inst40.FILE2 = "invmult_3lut1_4_1.hex";
	defparam	b2v_inst40.FILE3 = "invmult_3lut2_4_1.hex";
	defparam	b2v_inst40.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst40.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst41(
	.clk(clk),
	.dataA_in(Stg2_Dig_4_),
	.dataB_in(Stg2_Dig_2_),
	.mod_data_out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst41.DATA_WIDTH = 18;
	defparam	b2v_inst41.FILE1 = "invmult_3lut0_4_2.hex";
	defparam	b2v_inst41.FILE2 = "invmult_3lut1_4_2.hex";
	defparam	b2v_inst41.FILE3 = "invmult_3lut2_4_2.hex";
	defparam	b2v_inst41.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst41.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst42(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_6),
	.dataB_in(SYNTHESIZED_WIRE_33),
	.mod_data_out(SYNTHESIZED_WIRE_34));
	defparam	b2v_inst42.DATA_WIDTH = 18;
	defparam	b2v_inst42.FILE1 = "invmult_3lut0_4_3.hex";
	defparam	b2v_inst42.FILE2 = "invmult_3lut1_4_3.hex";
	defparam	b2v_inst42.FILE3 = "invmult_3lut2_4_3.hex";
	defparam	b2v_inst42.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst42.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst43(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_8),
	.dataB_in(SYNTHESIZED_WIRE_32),
	.mod_data_out(Stg2_Dig_5_));
	defparam	b2v_inst43.DATA_WIDTH = 18;
	defparam	b2v_inst43.FILE1 = "invmult_3lut0_5_1.hex";
	defparam	b2v_inst43.FILE2 = "invmult_3lut1_5_1.hex";
	defparam	b2v_inst43.FILE3 = "invmult_3lut2_5_1.hex";
	defparam	b2v_inst43.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst43.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst44(
	.clk(clk),
	.dataA_in(Stg2_Dig_5_),
	.dataB_in(Stg2_Dig_2_),
	.mod_data_out(SYNTHESIZED_WIRE_10));
	defparam	b2v_inst44.DATA_WIDTH = 18;
	defparam	b2v_inst44.FILE1 = "invmult_3lut0_5_2.hex";
	defparam	b2v_inst44.FILE2 = "invmult_3lut1_5_2.hex";
	defparam	b2v_inst44.FILE3 = "invmult_3lut2_5_2.hex";
	defparam	b2v_inst44.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst44.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst45(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_10),
	.dataB_in(SYNTHESIZED_WIRE_33),
	.mod_data_out(SYNTHESIZED_WIRE_12));
	defparam	b2v_inst45.DATA_WIDTH = 18;
	defparam	b2v_inst45.FILE1 = "invmult_3lut0_5_3.hex";
	defparam	b2v_inst45.FILE2 = "invmult_3lut1_5_3.hex";
	defparam	b2v_inst45.FILE3 = "invmult_3lut2_5_3.hex";
	defparam	b2v_inst45.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst45.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst46(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_12),
	.dataB_in(SYNTHESIZED_WIRE_34),
	.mod_data_out(SYNTHESIZED_WIRE_35));
	defparam	b2v_inst46.DATA_WIDTH = 18;
	defparam	b2v_inst46.FILE1 = "invmult_3lut0_5_4.hex";
	defparam	b2v_inst46.FILE2 = "invmult_3lut1_5_4.hex";
	defparam	b2v_inst46.FILE3 = "invmult_3lut2_5_4.hex";
	defparam	b2v_inst46.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst46.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst47(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_14),
	.dataB_in(SYNTHESIZED_WIRE_32),
	.mod_data_out(Stg2_Dig_6_));
	defparam	b2v_inst47.DATA_WIDTH = 18;
	defparam	b2v_inst47.FILE1 = "invmult_3lut0_6_1.hex";
	defparam	b2v_inst47.FILE2 = "invmult_3lut1_6_1.hex";
	defparam	b2v_inst47.FILE3 = "invmult_3lut2_6_1.hex";
	defparam	b2v_inst47.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst47.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst48(
	.clk(clk),
	.dataA_in(Stg2_Dig_6_),
	.dataB_in(Stg2_Dig_2_),
	.mod_data_out(SYNTHESIZED_WIRE_16));
	defparam	b2v_inst48.DATA_WIDTH = 18;
	defparam	b2v_inst48.FILE1 = "invmult_3lut0_6_2.hex";
	defparam	b2v_inst48.FILE2 = "invmult_3lut1_6_2.hex";
	defparam	b2v_inst48.FILE3 = "invmult_3lut2_6_2.hex";
	defparam	b2v_inst48.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst48.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst49(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_16),
	.dataB_in(SYNTHESIZED_WIRE_33),
	.mod_data_out(SYNTHESIZED_WIRE_18));
	defparam	b2v_inst49.DATA_WIDTH = 18;
	defparam	b2v_inst49.FILE1 = "invmult_3lut0_6_3.hex";
	defparam	b2v_inst49.FILE2 = "invmult_3lut1_6_3.hex";
	defparam	b2v_inst49.FILE3 = "invmult_3lut2_6_3.hex";
	defparam	b2v_inst49.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst49.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst50(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_18),
	.dataB_in(SYNTHESIZED_WIRE_34),
	.mod_data_out(SYNTHESIZED_WIRE_20));
	defparam	b2v_inst50.DATA_WIDTH = 18;
	defparam	b2v_inst50.FILE1 = "invmult_3lut0_6_4.hex";
	defparam	b2v_inst50.FILE2 = "invmult_3lut1_6_4.hex";
	defparam	b2v_inst50.FILE3 = "invmult_3lut2_6_4.hex";
	defparam	b2v_inst50.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst50.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst51(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_20),
	.dataB_in(SYNTHESIZED_WIRE_35),
	.mod_data_out(SYNTHESIZED_WIRE_31));
	defparam	b2v_inst51.DATA_WIDTH = 18;
	defparam	b2v_inst51.FILE1 = "invmult_3lut0_6_5.hex";
	defparam	b2v_inst51.FILE2 = "invmult_3lut1_6_5.hex";
	defparam	b2v_inst51.FILE3 = "invmult_3lut2_6_5.hex";
	defparam	b2v_inst51.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst51.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst52(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_22),
	.dataB_in(SYNTHESIZED_WIRE_32),
	.mod_data_out(Stg2_Dig_7_));
	defparam	b2v_inst52.DATA_WIDTH = 18;
	defparam	b2v_inst52.FILE1 = "invmult_3lut0_7_1.hex";
	defparam	b2v_inst52.FILE2 = "invmult_3lut1_7_1.hex";
	defparam	b2v_inst52.FILE3 = "invmult_3lut2_7_1.hex";
	defparam	b2v_inst52.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst52.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst53(
	.clk(clk),
	.dataA_in(Stg2_Dig_7_),
	.dataB_in(Stg2_Dig_2_),
	.mod_data_out(SYNTHESIZED_WIRE_24));
	defparam	b2v_inst53.DATA_WIDTH = 18;
	defparam	b2v_inst53.FILE1 = "invmult_3lut0_7_2.hex";
	defparam	b2v_inst53.FILE2 = "invmult_3lut1_7_2.hex";
	defparam	b2v_inst53.FILE3 = "invmult_3lut2_7_2.hex";
	defparam	b2v_inst53.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst53.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst54(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_24),
	.dataB_in(SYNTHESIZED_WIRE_33),
	.mod_data_out(SYNTHESIZED_WIRE_26));
	defparam	b2v_inst54.DATA_WIDTH = 18;
	defparam	b2v_inst54.FILE1 = "invmult_3lut0_7_3.hex";
	defparam	b2v_inst54.FILE2 = "invmult_3lut1_7_3.hex";
	defparam	b2v_inst54.FILE3 = "invmult_3lut2_7_3.hex";
	defparam	b2v_inst54.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst54.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst55(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_26),
	.dataB_in(SYNTHESIZED_WIRE_34),
	.mod_data_out(SYNTHESIZED_WIRE_28));
	defparam	b2v_inst55.DATA_WIDTH = 18;
	defparam	b2v_inst55.FILE1 = "invmult_3lut0_7_4.hex";
	defparam	b2v_inst55.FILE2 = "invmult_3lut1_7_4.hex";
	defparam	b2v_inst55.FILE3 = "invmult_3lut2_7_4.hex";
	defparam	b2v_inst55.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst55.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst56(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_28),
	.dataB_in(SYNTHESIZED_WIRE_35),
	.mod_data_out(SYNTHESIZED_WIRE_30));
	defparam	b2v_inst56.DATA_WIDTH = 18;
	defparam	b2v_inst56.FILE1 = "invmult_3lut0_7_5.hex";
	defparam	b2v_inst56.FILE2 = "invmult_3lut1_7_5.hex";
	defparam	b2v_inst56.FILE3 = "invmult_3lut2_7_5.hex";
	defparam	b2v_inst56.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst56.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst57(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_30),
	.dataB_in(SYNTHESIZED_WIRE_31),
	.mod_data_out(Dig_out_7));
	defparam	b2v_inst57.DATA_WIDTH = 18;
	defparam	b2v_inst57.FILE1 = "invmult_3lut0_7_6.hex";
	defparam	b2v_inst57.FILE2 = "invmult_3lut1_7_6.hex";
	defparam	b2v_inst57.FILE3 = "invmult_3lut2_7_6.hex";
	defparam	b2v_inst57.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst57.MODULUS = 262069;

assign	Stg2_Dig_out_2 = Stg2_Dig_2_;
assign	Stg2_Dig_out_3 = Stg2_Dig_3_;
assign	Stg2_Dig_out_4 = Stg2_Dig_4_;
assign	Stg2_Dig_out_5 = Stg2_Dig_5_;
assign	Stg2_Dig_out_6 = Stg2_Dig_6_;
assign	Stg2_Dig_out_7 = Stg2_Dig_7_;

endmodule
