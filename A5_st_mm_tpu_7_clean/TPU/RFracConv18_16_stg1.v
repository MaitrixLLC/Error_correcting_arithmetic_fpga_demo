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
// CREATED		"Sun Aug 11 16:39:14 2019"

module RFracConv18_16_stg1(
	clk,
	RNS_D1_in,
	RNS_D2_in,
	RNS_D3_in,
	RNS_D4_in,
	RNS_D5_in,
	RNS_D6_in,
	round_out,
	mr_A3_out,
	mr_A4_out,
	mr_A5_out,
	mr_A6_out,
	sign_out
);


input wire	clk;
input wire	[17:0] RNS_D1_in;
input wire	[17:0] RNS_D2_in;
input wire	[17:0] RNS_D3_in;
input wire	[17:0] RNS_D4_in;
input wire	[17:0] RNS_D5_in;
input wire	[17:0] RNS_D6_in;
output wire	round_out;
output wire	[17:0] mr_A3_out;
output wire	[17:0] mr_A4_out;
output wire	[17:0] mr_A5_out;
output wire	[17:0] mr_A6_out;
output wire	[1:0] sign_out;

wire	[1:0] comp_1_;
wire	[1:0] comp_2_;
wire	[1:0] comp_3_;
wire	[1:0] comp_4_;
wire	[1:0] comp_5_;
wire	[1:0] comp_6_;
wire	[17:0] mr_a1_;
wire	[17:0] mr_a2_;
wire	[17:0] mr_a3_;
wire	[17:0] mr_a4_;
wire	[17:0] mr_a5_;
wire	[17:0] mr_a6_;
wire	[17:0] r1_scale;
wire	[17:0] r2_scale;
wire	[17:0] r3_scale;
wire	[17:0] r4_scale;
wire	[17:0] r5_scale;
wire	[17:0] r6_scale;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[17:0] SYNTHESIZED_WIRE_1;
wire	[17:0] SYNTHESIZED_WIRE_2;
wire	[17:0] SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_4;
wire	[17:0] SYNTHESIZED_WIRE_5;
wire	[17:0] SYNTHESIZED_WIRE_6;
wire	[17:0] SYNTHESIZED_WIRE_7;
wire	[17:0] SYNTHESIZED_WIRE_8;
wire	[17:0] SYNTHESIZED_WIRE_9;
wire	[17:0] SYNTHESIZED_WIRE_10;
wire	[17:0] SYNTHESIZED_WIRE_11;
wire	[17:0] SYNTHESIZED_WIRE_12;
wire	[17:0] SYNTHESIZED_WIRE_13;
wire	[17:0] SYNTHESIZED_WIRE_14;
wire	[17:0] SYNTHESIZED_WIRE_15;
wire	[17:0] SYNTHESIZED_WIRE_16;
wire	[17:0] SYNTHESIZED_WIRE_17;
wire	[17:0] SYNTHESIZED_WIRE_18;
wire	[17:0] SYNTHESIZED_WIRE_19;
wire	[17:0] SYNTHESIZED_WIRE_20;
wire	[17:0] SYNTHESIZED_WIRE_21;
wire	[17:0] SYNTHESIZED_WIRE_22;
wire	[17:0] SYNTHESIZED_WIRE_23;
wire	[17:0] SYNTHESIZED_WIRE_24;
wire	[17:0] SYNTHESIZED_WIRE_25;
wire	[17:0] SYNTHESIZED_WIRE_26;
wire	[17:0] SYNTHESIZED_WIRE_27;
wire	[0:0] SYNTHESIZED_WIRE_28;
wire	[0:0] SYNTHESIZED_WIRE_29;
wire	[0:0] SYNTHESIZED_WIRE_30;





ModCompare_9L_mlab	b2v_inst1(
	.clk(clk),
	.in_A_0_(mr_a1_),
	.sign_in(SYNTHESIZED_WIRE_0),
	
	.sign_result(comp_1_));
	defparam	b2v_inst1.DATA_WIDTH = 18;
	defparam	b2v_inst1.MCONSTANT = 32768;


ModCompare_9L_mlab	b2v_inst2(
	.clk(clk),
	.in_A_0_(mr_a2_),
	.sign_in(comp_1_),
	
	.sign_result(comp_2_));
	defparam	b2v_inst2.DATA_WIDTH = 18;
	defparam	b2v_inst2.MCONSTANT = 39062;


ModCompare_9L_mlab	b2v_inst3(
	.clk(clk),
	.in_A_0_(mr_a3_),
	.sign_in(comp_2_),
	
	.sign_result(comp_3_));
	defparam	b2v_inst3.DATA_WIDTH = 18;
	defparam	b2v_inst3.MCONSTANT = 58824;


ModCompare_9L_mlab	b2v_inst4(
	.clk(clk),
	.in_A_0_(mr_a4_),
	.sign_in(comp_3_),
	
	.sign_result(comp_4_));
	defparam	b2v_inst4.DATA_WIDTH = 18;
	defparam	b2v_inst4.MCONSTANT = 88573;


ModCompare_9L_mlab	b2v_inst5(
	.clk(clk),
	.in_A_0_(mr_a5_),
	.sign_in(comp_4_),
	
	.sign_result(comp_5_));
	defparam	b2v_inst5.DATA_WIDTH = 18;
	defparam	b2v_inst5.MCONSTANT = 131013;


ModCompare_3L_mlab	b2v_inst6(
	.clk(clk),
	.in_A_0_(mr_a6_),
	.sign_in(comp_5_),
	.sign_result(comp_6_));
	defparam	b2v_inst6.DATA_WIDTH = 18;
	defparam	b2v_inst6.MCONSTANT = 131024;


fixed_val	b2v_inst_const1(
	.value(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst_const1.DATA_WIDTH = 2;
	defparam	b2v_inst_const1.MCONSTANT = 1;


register	b2v_reg1(
	.clk(clk),
	.reg_in(RNS_D1_in),
	.reg_out(SYNTHESIZED_WIRE_25));
	defparam	b2v_reg1.DATA_WIDTH = 18;


ModMultC18_7L	b2v_reg10(
	.clk(clk),
	.OP_A_mult(SYNTHESIZED_WIRE_1),
	.result(r4_scale));
	defparam	b2v_reg10.FILE1 = "multc_3lut0_d3_2^32.hex";
	defparam	b2v_reg10.FILE2 = "multc_3lut1_d3_2^32.hex";
	defparam	b2v_reg10.FILE3 = "multc_3lut2_d3_2^32.hex";
	defparam	b2v_reg10.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_reg10.MODULUS = 177147;


ModMultC18_7L	b2v_reg11(
	.clk(clk),
	.OP_A_mult(SYNTHESIZED_WIRE_2),
	.result(r5_scale));
	defparam	b2v_reg11.FILE1 = "multc_3lut0_d4_2^32.hex";
	defparam	b2v_reg11.FILE2 = "multc_3lut1_d4_2^32.hex";
	defparam	b2v_reg11.FILE3 = "multc_3lut2_d4_2^32.hex";
	defparam	b2v_reg11.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_reg11.MODULUS = 262027;


ModMultC18_7L	b2v_reg12(
	.clk(clk),
	.OP_A_mult(SYNTHESIZED_WIRE_3),
	.result(r6_scale));
	defparam	b2v_reg12.FILE1 = "multc_3lut0_d5_2^32.hex";
	defparam	b2v_reg12.FILE2 = "multc_3lut1_d5_2^32.hex";
	defparam	b2v_reg12.FILE3 = "multc_3lut2_d5_2^32.hex";
	defparam	b2v_reg12.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_reg12.MODULUS = 262049;


register	b2v_reg13(
	.clk(clk),
	.reg_in(r1_scale),
	.reg_out(mr_a1_));
	defparam	b2v_reg13.DATA_WIDTH = 18;


register	b2v_reg14(
	.clk(clk),
	.reg_in(r2_scale),
	.reg_out(SYNTHESIZED_WIRE_4));
	defparam	b2v_reg14.DATA_WIDTH = 18;


register	b2v_reg15(
	.clk(clk),
	.reg_in(r3_scale),
	.reg_out(SYNTHESIZED_WIRE_5));
	defparam	b2v_reg15.DATA_WIDTH = 18;


register	b2v_reg16(
	.clk(clk),
	.reg_in(r4_scale),
	.reg_out(SYNTHESIZED_WIRE_6));
	defparam	b2v_reg16.DATA_WIDTH = 18;


register	b2v_reg17(
	.clk(clk),
	.reg_in(r5_scale),
	.reg_out(SYNTHESIZED_WIRE_7));
	defparam	b2v_reg17.DATA_WIDTH = 18;


register	b2v_reg18(
	.clk(clk),
	.reg_in(r6_scale),
	.reg_out(SYNTHESIZED_WIRE_8));
	defparam	b2v_reg18.DATA_WIDTH = 18;


register	b2v_reg2(
	.clk(clk),
	.reg_in(RNS_D2_in),
	.reg_out(SYNTHESIZED_WIRE_26));
	defparam	b2v_reg2.DATA_WIDTH = 18;


SubInvMult_8L_mlab	b2v_reg20(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_4),
	.dataB_in(mr_a1_),
	.mod_data_out(mr_a2_));
	defparam	b2v_reg20.DATA_WIDTH = 18;
	defparam	b2v_reg20.FILE1 = "invmult_3lut0_1_0.hex";
	defparam	b2v_reg20.FILE2 = "invmult_3lut1_1_0.hex";
	defparam	b2v_reg20.FILE3 = "invmult_3lut2_1_0.hex";
	defparam	b2v_reg20.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_reg20.MODULUS = 78125;


SubInvMult_8L_mlab	b2v_reg21(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_5),
	.dataB_in(mr_a1_),
	.mod_data_out(SYNTHESIZED_WIRE_9));
	defparam	b2v_reg21.DATA_WIDTH = 18;
	defparam	b2v_reg21.FILE1 = "invmult_3lut0_2_0.hex";
	defparam	b2v_reg21.FILE2 = "invmult_3lut1_2_0.hex";
	defparam	b2v_reg21.FILE3 = "invmult_3lut2_2_0.hex";
	defparam	b2v_reg21.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_reg21.MODULUS = 117649;


SubInvMult_8L_mlab	b2v_reg22(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_6),
	.dataB_in(mr_a1_),
	.mod_data_out(SYNTHESIZED_WIRE_10));
	defparam	b2v_reg22.DATA_WIDTH = 18;
	defparam	b2v_reg22.FILE1 = "invmult_3lut0_3_0.hex";
	defparam	b2v_reg22.FILE2 = "invmult_3lut1_3_0.hex";
	defparam	b2v_reg22.FILE3 = "invmult_3lut2_3_0.hex";
	defparam	b2v_reg22.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_reg22.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_reg23(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_7),
	.dataB_in(mr_a1_),
	.mod_data_out(SYNTHESIZED_WIRE_11));
	defparam	b2v_reg23.DATA_WIDTH = 18;
	defparam	b2v_reg23.FILE1 = "invmult_3lut0_4_0.hex";
	defparam	b2v_reg23.FILE2 = "invmult_3lut1_4_0.hex";
	defparam	b2v_reg23.FILE3 = "invmult_3lut2_4_0.hex";
	defparam	b2v_reg23.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_reg23.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_reg24(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_8),
	.dataB_in(mr_a1_),
	.mod_data_out(SYNTHESIZED_WIRE_12));
	defparam	b2v_reg24.DATA_WIDTH = 18;
	defparam	b2v_reg24.FILE1 = "invmult_3lut0_5_0.hex";
	defparam	b2v_reg24.FILE2 = "invmult_3lut1_5_0.hex";
	defparam	b2v_reg24.FILE3 = "invmult_3lut2_5_0.hex";
	defparam	b2v_reg24.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_reg24.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_reg27(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_9),
	.dataB_in(mr_a2_),
	.mod_data_out(mr_a3_));
	defparam	b2v_reg27.DATA_WIDTH = 18;
	defparam	b2v_reg27.FILE1 = "invmult_3lut0_2_1.hex";
	defparam	b2v_reg27.FILE2 = "invmult_3lut1_2_1.hex";
	defparam	b2v_reg27.FILE3 = "invmult_3lut2_2_1.hex";
	defparam	b2v_reg27.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_reg27.MODULUS = 117649;


SubInvMult_8L_mlab	b2v_reg28(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_10),
	.dataB_in(mr_a2_),
	.mod_data_out(SYNTHESIZED_WIRE_13));
	defparam	b2v_reg28.DATA_WIDTH = 18;
	defparam	b2v_reg28.FILE1 = "invmult_3lut0_3_1.hex";
	defparam	b2v_reg28.FILE2 = "invmult_3lut1_3_1.hex";
	defparam	b2v_reg28.FILE3 = "invmult_3lut2_3_1.hex";
	defparam	b2v_reg28.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_reg28.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_reg29(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_11),
	.dataB_in(mr_a2_),
	.mod_data_out(SYNTHESIZED_WIRE_14));
	defparam	b2v_reg29.DATA_WIDTH = 18;
	defparam	b2v_reg29.FILE1 = "invmult_3lut0_4_1.hex";
	defparam	b2v_reg29.FILE2 = "invmult_3lut1_4_1.hex";
	defparam	b2v_reg29.FILE3 = "invmult_3lut2_4_1.hex";
	defparam	b2v_reg29.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_reg29.MODULUS = 262027;


register	b2v_reg3(
	.clk(clk),
	.reg_in(RNS_D3_in),
	.reg_out(SYNTHESIZED_WIRE_27));
	defparam	b2v_reg3.DATA_WIDTH = 18;


SubInvMult_8L_mlab	b2v_reg30(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_12),
	.dataB_in(mr_a2_),
	.mod_data_out(SYNTHESIZED_WIRE_15));
	defparam	b2v_reg30.DATA_WIDTH = 18;
	defparam	b2v_reg30.FILE1 = "invmult_3lut0_5_1.hex";
	defparam	b2v_reg30.FILE2 = "invmult_3lut1_5_1.hex";
	defparam	b2v_reg30.FILE3 = "invmult_3lut2_5_1.hex";
	defparam	b2v_reg30.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_reg30.MODULUS = 262049;


reg_delay_9L	b2v_reg33(
	.pin_name1(clk),
	.reg_in(mr_a3_),
	.reg_out(SYNTHESIZED_WIRE_16));
	defparam	b2v_reg33.DATA_WIDTH = 18;


SubInvMult_8L_mlab	b2v_reg34(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_13),
	.dataB_in(mr_a3_),
	.mod_data_out(mr_a4_));
	defparam	b2v_reg34.DATA_WIDTH = 18;
	defparam	b2v_reg34.FILE1 = "invmult_3lut0_3_2.hex";
	defparam	b2v_reg34.FILE2 = "invmult_3lut1_3_2.hex";
	defparam	b2v_reg34.FILE3 = "invmult_3lut2_3_2.hex";
	defparam	b2v_reg34.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_reg34.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_reg35(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_14),
	.dataB_in(mr_a3_),
	.mod_data_out(SYNTHESIZED_WIRE_17));
	defparam	b2v_reg35.DATA_WIDTH = 18;
	defparam	b2v_reg35.FILE1 = "invmult_3lut0_4_2.hex";
	defparam	b2v_reg35.FILE2 = "invmult_3lut1_4_2.hex";
	defparam	b2v_reg35.FILE3 = "invmult_3lut2_4_2.hex";
	defparam	b2v_reg35.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_reg35.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_reg36(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_15),
	.dataB_in(mr_a3_),
	.mod_data_out(SYNTHESIZED_WIRE_18));
	defparam	b2v_reg36.DATA_WIDTH = 18;
	defparam	b2v_reg36.FILE1 = "invmult_3lut0_5_2.hex";
	defparam	b2v_reg36.FILE2 = "invmult_3lut1_5_2.hex";
	defparam	b2v_reg36.FILE3 = "invmult_3lut2_5_2.hex";
	defparam	b2v_reg36.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_reg36.MODULUS = 262049;


reg_delay_9L	b2v_reg37(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_16),
	.reg_out(SYNTHESIZED_WIRE_19));
	defparam	b2v_reg37.DATA_WIDTH = 18;


reg_delay_9L	b2v_reg38(
	.pin_name1(clk),
	.reg_in(mr_a4_),
	.reg_out(SYNTHESIZED_WIRE_20));
	defparam	b2v_reg38.DATA_WIDTH = 18;


SubInvMult_8L_mlab	b2v_reg39(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_17),
	.dataB_in(mr_a4_),
	.mod_data_out(mr_a5_));
	defparam	b2v_reg39.DATA_WIDTH = 18;
	defparam	b2v_reg39.FILE1 = "invmult_3lut0_4_3.hex";
	defparam	b2v_reg39.FILE2 = "invmult_3lut1_4_3.hex";
	defparam	b2v_reg39.FILE3 = "invmult_3lut2_4_3.hex";
	defparam	b2v_reg39.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_reg39.MODULUS = 262027;


register	b2v_reg4(
	.clk(clk),
	.reg_in(RNS_D4_in),
	.reg_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_reg4.DATA_WIDTH = 18;


SubInvMult_8L_mlab	b2v_reg40(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_18),
	.dataB_in(mr_a4_),
	.mod_data_out(SYNTHESIZED_WIRE_21));
	defparam	b2v_reg40.DATA_WIDTH = 18;
	defparam	b2v_reg40.FILE1 = "invmult_3lut0_5_3.hex";
	defparam	b2v_reg40.FILE2 = "invmult_3lut1_5_3.hex";
	defparam	b2v_reg40.FILE3 = "invmult_3lut2_5_3.hex";
	defparam	b2v_reg40.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_reg40.MODULUS = 262049;


reg_delay_9L	b2v_reg41(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_19),
	.reg_out(SYNTHESIZED_WIRE_22));
	defparam	b2v_reg41.DATA_WIDTH = 18;


reg_delay_9L	b2v_reg42(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_20),
	.reg_out(SYNTHESIZED_WIRE_23));
	defparam	b2v_reg42.DATA_WIDTH = 18;


reg_delay_9L	b2v_reg43(
	.pin_name1(clk),
	.reg_in(mr_a5_),
	.reg_out(SYNTHESIZED_WIRE_24));
	defparam	b2v_reg43.DATA_WIDTH = 18;


SubInvMult_8L_mlab	b2v_reg44(
	.clk(clk),
	.dataA_in(SYNTHESIZED_WIRE_21),
	.dataB_in(mr_a5_),
	.mod_data_out(mr_a6_));
	defparam	b2v_reg44.DATA_WIDTH = 18;
	defparam	b2v_reg44.FILE1 = "invmult_3lut0_5_4.hex";
	defparam	b2v_reg44.FILE2 = "invmult_3lut1_5_4.hex";
	defparam	b2v_reg44.FILE3 = "invmult_3lut2_5_4.hex";
	defparam	b2v_reg44.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_reg44.MODULUS = 262049;


reg_delay_3L	b2v_reg45(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_22),
	.reg_out(mr_A3_out));
	defparam	b2v_reg45.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg46(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_23),
	.reg_out(mr_A4_out));
	defparam	b2v_reg46.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg47(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_24),
	.reg_out(mr_A5_out));
	defparam	b2v_reg47.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg48(
	.pin_name1(clk),
	.reg_in(mr_a6_),
	.reg_out(mr_A6_out));
	defparam	b2v_reg48.DATA_WIDTH = 18;


register	b2v_reg5(
	.clk(clk),
	.reg_in(RNS_D5_in),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_reg5.DATA_WIDTH = 18;


register	b2v_reg6(
	.clk(clk),
	.reg_in(RNS_D6_in),
	.reg_out(SYNTHESIZED_WIRE_3));
	defparam	b2v_reg6.DATA_WIDTH = 18;


ModMultC18_7L	b2v_reg7(
	.clk(clk),
	.OP_A_mult(SYNTHESIZED_WIRE_25),
	.result(r1_scale));
	defparam	b2v_reg7.FILE1 = "multc_3lut0_d0_2^32.hex";
	defparam	b2v_reg7.FILE2 = "multc_3lut1_d0_2^32.hex";
	defparam	b2v_reg7.FILE3 = "multc_3lut2_d0_2^32.hex";
	defparam	b2v_reg7.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_reg7.MODULUS = 65536;


ModMultC18_7L	b2v_reg8(
	.clk(clk),
	.OP_A_mult(SYNTHESIZED_WIRE_26),
	.result(r2_scale));
	defparam	b2v_reg8.FILE1 = "multc_3lut0_d1_2^32.hex";
	defparam	b2v_reg8.FILE2 = "multc_3lut1_d1_2^32.hex";
	defparam	b2v_reg8.FILE3 = "multc_3lut2_d1_2^32.hex";
	defparam	b2v_reg8.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_reg8.MODULUS = 78125;


ModMultC18_7L	b2v_reg9(
	.clk(clk),
	.OP_A_mult(SYNTHESIZED_WIRE_27),
	.result(r3_scale));
	defparam	b2v_reg9.FILE1 = "multc_3lut0_d2_2^32.hex";
	defparam	b2v_reg9.FILE2 = "multc_3lut1_d2_2^32.hex";
	defparam	b2v_reg9.FILE3 = "multc_3lut2_d2_2^32.hex";
	defparam	b2v_reg9.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_reg9.MODULUS = 117649;


reg_delay_9L	b2v_ropund_dly_2(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_28),
	.reg_out(SYNTHESIZED_WIRE_29));
	defparam	b2v_ropund_dly_2.DATA_WIDTH = 1;


reg_delay_9L	b2v_round_dly_1(
	.pin_name1(clk),
	.reg_in(comp_2_[1]),
	.reg_out(SYNTHESIZED_WIRE_28));
	defparam	b2v_round_dly_1.DATA_WIDTH = 1;


reg_delay_9L	b2v_round_dly_3(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_29),
	.reg_out(SYNTHESIZED_WIRE_30));
	defparam	b2v_round_dly_3.DATA_WIDTH = 1;


reg_delay_3L	b2v_round_dly_4(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_30),
	.reg_out(round_out));
	defparam	b2v_round_dly_4.DATA_WIDTH = 1;

assign	sign_out = comp_6_;

endmodule
