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
// CREATED		"Sun Sep 01 13:16:00 2019"

module Full_Norm_pipe8x18_dval(
	clk,
	aclr,
	datavalid_in,
	Dig_0_,
	Dig_1_,
	Dig_2_,
	Dig_3_,
	Dig_4_,
	Dig_5_,
	Dig_6_,
	Dig_7_,
	datavalid_out,
	sign_norm_d0_,
	sign_norm_d1_,
	sign_norm_d2_,
	sign_norm_d3_,
	sign_norm_d4_,
	sign_norm_d5_,
	sign_norm_d6_,
	sign_norm_d7_,
	sign_out
);


input wire	clk;
input wire	aclr;
input wire	datavalid_in;
input wire	[17:0] Dig_0_;
input wire	[17:0] Dig_1_;
input wire	[17:0] Dig_2_;
input wire	[17:0] Dig_3_;
input wire	[17:0] Dig_4_;
input wire	[17:0] Dig_5_;
input wire	[17:0] Dig_6_;
input wire	[17:0] Dig_7_;
output wire	datavalid_out;
output wire	[17:0] sign_norm_d0_;
output wire	[17:0] sign_norm_d1_;
output wire	[17:0] sign_norm_d2_;
output wire	[17:0] sign_norm_d3_;
output wire	[17:0] sign_norm_d4_;
output wire	[17:0] sign_norm_d5_;
output wire	[17:0] sign_norm_d6_;
output wire	[17:0] sign_norm_d7_;
output wire	[1:0] sign_out;

wire	round_up;
wire	[1:0] sign_out_;
wire	[17:0] SYNTHESIZED_WIRE_0;
wire	[17:0] SYNTHESIZED_WIRE_1;
wire	[17:0] SYNTHESIZED_WIRE_2;
wire	[17:0] SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_4;
wire	[17:0] SYNTHESIZED_WIRE_5;
wire	[17:0] SYNTHESIZED_WIRE_6;
wire	[17:0] SYNTHESIZED_WIRE_7;
wire	[17:0] SYNTHESIZED_WIRE_8;
wire	[17:0] SYNTHESIZED_WIRE_27;
wire	[17:0] SYNTHESIZED_WIRE_28;
wire	[17:0] SYNTHESIZED_WIRE_29;
wire	[17:0] SYNTHESIZED_WIRE_30;
wire	[17:0] SYNTHESIZED_WIRE_31;
wire	[17:0] SYNTHESIZED_WIRE_32;
wire	[17:0] SYNTHESIZED_WIRE_22;
wire	[17:0] SYNTHESIZED_WIRE_23;
wire	[17:0] SYNTHESIZED_WIRE_24;
wire	[17:0] SYNTHESIZED_WIRE_25;
wire	[17:0] SYNTHESIZED_WIRE_26;





SubCorStage_4L_v2	b2v_inst(
	.clk(clk),
	.Dig_in_0_(SYNTHESIZED_WIRE_0),
	.Dig_in_1_(SYNTHESIZED_WIRE_1),
	.Dig_in_2_(SYNTHESIZED_WIRE_2),
	.Dig_in_3_(SYNTHESIZED_WIRE_3),
	.Dig_in_4_(SYNTHESIZED_WIRE_4),
	.Dig_in_5_(SYNTHESIZED_WIRE_5),
	.Dig_in_6_(SYNTHESIZED_WIRE_6),
	.Dig_in_7_(SYNTHESIZED_WIRE_7),
	.sign_in(sign_out_),
	.result_0_(sign_norm_d0_),
	.result_1_(sign_norm_d1_),
	.result_2_(sign_norm_d2_),
	.result_3_(sign_norm_d3_),
	.result_4_(sign_norm_d4_),
	.result_5_(sign_norm_d5_),
	.result_6_(sign_norm_d6_),
	.result_7_(sign_norm_d7_));


MRC_pipe_mlab_stg2out	b2v_inst1(
	.clk(clk),
	.Dig_in_0(Dig_0_),
	.Dig_in_1(Dig_1_),
	.Dig_in_2(Dig_2_),
	.Dig_in_3(Dig_3_),
	.Dig_in_4(Dig_4_),
	.Dig_in_5(Dig_5_),
	.Dig_in_6(Dig_6_),
	.Dig_in_7(Dig_7_),
	.Dig_out_1(SYNTHESIZED_WIRE_8),
	.Dig_out_3(SYNTHESIZED_WIRE_28),
	.Dig_out_4(SYNTHESIZED_WIRE_29),
	.Dig_out_5(SYNTHESIZED_WIRE_30),
	.Dig_out_6(SYNTHESIZED_WIRE_31),
	.Dig_out_7(SYNTHESIZED_WIRE_32),
	.Stg2_Dig_out_2(SYNTHESIZED_WIRE_27),
	.Stg2_Dig_out_3(SYNTHESIZED_WIRE_22),
	.Stg2_Dig_out_4(SYNTHESIZED_WIRE_23),
	.Stg2_Dig_out_5(SYNTHESIZED_WIRE_24),
	.Stg2_Dig_out_6(SYNTHESIZED_WIRE_25),
	.Stg2_Dig_out_7(SYNTHESIZED_WIRE_26));


Compare_pipe	b2v_inst2(
	.clk(clk),
	.mr_dig_0_(Dig_0_),
	.mr_dig_1_(SYNTHESIZED_WIRE_8),
	.mr_dig_2_(SYNTHESIZED_WIRE_27),
	.mr_dig_3_(SYNTHESIZED_WIRE_28),
	.mr_dig_4_(SYNTHESIZED_WIRE_29),
	.mr_dig_5_(SYNTHESIZED_WIRE_30),
	.mr_dig_6_(SYNTHESIZED_WIRE_31),
	.mr_dig_7_(SYNTHESIZED_WIRE_32),
	.cout(round_up),
	.sign_out(sign_out_));


Recomp_pipe_mlab_x2	b2v_inst3(
	.clk(clk),
	.cin(round_up),
	.mr_dig_2_(SYNTHESIZED_WIRE_27),
	.mr_dig_3_(SYNTHESIZED_WIRE_28),
	.mr_dig_4_(SYNTHESIZED_WIRE_29),
	.mr_dig_5_(SYNTHESIZED_WIRE_30),
	.mr_dig_6_(SYNTHESIZED_WIRE_31),
	.mr_dig_7_(SYNTHESIZED_WIRE_32),
	.norm_dig_0_(SYNTHESIZED_WIRE_0),
	.norm_dig_1_(SYNTHESIZED_WIRE_1));


reg_delay_addone_9L_x6	b2v_inst4(
	.clk(clk),
	.carry_in(round_up),
	.reg2_in(SYNTHESIZED_WIRE_27),
	.reg3_in(SYNTHESIZED_WIRE_22),
	.reg4_in(SYNTHESIZED_WIRE_23),
	.reg5_in(SYNTHESIZED_WIRE_24),
	.reg6_in(SYNTHESIZED_WIRE_25),
	.reg7_in(SYNTHESIZED_WIRE_26),
	.reg2_out(SYNTHESIZED_WIRE_2),
	.reg3_out(SYNTHESIZED_WIRE_3),
	.reg4_out(SYNTHESIZED_WIRE_4),
	.reg5_out(SYNTHESIZED_WIRE_5),
	.reg6_out(SYNTHESIZED_WIRE_6),
	.reg7_out(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst4.DATA_WIDTH = 18;


reg_delay_4L	b2v_inst5(
	.pin_name1(clk),
	.reg_in(sign_out_),
	.reg_out(sign_out));
	defparam	b2v_inst5.DATA_WIDTH = 2;


reg_delay_76L_aclr	b2v_inst6(
	.clk(clk),
	.aclr(aclr),
	.reg_in(datavalid_in),
	.reg_out(datavalid_out));
	defparam	b2v_inst6.DATA_WIDTH = 1;


endmodule
