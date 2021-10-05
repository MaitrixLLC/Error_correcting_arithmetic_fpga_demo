// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
// CREATED		"Wed May 15 18:46:30 2019"

module MRC_pipe_full_ec_v1(
	clk,
	Dig_in_0_,
	Dig_in_1_,
	Dig_in_2_,
	Dig_in_3_,
	Dig_in_4_,
	Dig_in_5_,
	Dig_in_6_,
	Dig_in_7_,
	Dig_in_8_,
	Dig_in_9_,
	d1_0_0_,
	d2_0_1_,
	d3_0_2_,
	d4_0_3_,
	d5_0_4_,
	d6_0_5_,
	d7_0_6_,
	d8_0_7_,
	d9_0_7_,
	d9_0_8_,
	Sgn_out_0_,
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
	Sgn_out_9_B,
	Stg0_Dig1_,
	Stg0_Dig2_,
	Stg0_Dig3_,
	Stg0_Dig4_,
	Stg0_Dig5_,
	Stg0_Dig6_,
	Stg0_Dig7_,
	Stg0_Dig8_,
	Stg0_Dig9_,
	Stg1_Dig2_,
	Stg1_Dig3_,
	Stg1_Dig4_,
	Stg1_Dig5_,
	Stg1_Dig6_,
	Stg1_Dig7_,
	Stg1_Dig8_,
	Stg1_Dig9_,
	Stg2_Dig3_,
	Stg2_Dig4_,
	Stg2_Dig5_,
	Stg2_Dig6_,
	Stg2_Dig7_,
	Stg2_Dig8_,
	Stg2_Dig9_,
	Stg3_Dig4_,
	Stg3_Dig5_,
	Stg3_Dig6_,
	Stg3_Dig7_,
	Stg3_Dig8_,
	Stg3_Dig9_,
	Stg4_Dig5_,
	Stg4_Dig6_,
	Stg4_Dig7_,
	Stg4_Dig8_,
	Stg4_Dig9_,
	Stg5_Dig6_,
	Stg5_Dig7_,
	Stg5_Dig8_,
	Stg5_Dig9_,
	Stg6_Dig7_,
	Stg6_Dig8_,
	Stg6_Dig9_,
	Stg7_Dig8_,
	Stg7_Dig9_,
	Stg8_Dig8_,
	Stg8_Dig9_
);


input wire	clk;
input wire	[17:0] Dig_in_0_;
input wire	[17:0] Dig_in_1_;
input wire	[17:0] Dig_in_2_;
input wire	[17:0] Dig_in_3_;
input wire	[17:0] Dig_in_4_;
input wire	[17:0] Dig_in_5_;
input wire	[17:0] Dig_in_6_;
input wire	[17:0] Dig_in_7_;
input wire	[17:0] Dig_in_8_;
input wire	[17:0] Dig_in_9_;
output wire	[17:0] d1_0_0_;
output wire	[17:0] d2_0_1_;
output wire	[17:0] d3_0_2_;
output wire	[17:0] d4_0_3_;
output wire	[17:0] d5_0_4_;
output wire	[17:0] d6_0_5_;
output wire	[17:0] d7_0_6_;
output wire	[17:0] d8_0_7_;
output wire	[17:0] d9_0_7_;
output wire	[17:0] d9_0_8_;
output wire	[1:0] Sgn_out_0_;
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
output wire	[17:0] Stg0_Dig1_;
output wire	[17:0] Stg0_Dig2_;
output wire	[17:0] Stg0_Dig3_;
output wire	[17:0] Stg0_Dig4_;
output wire	[17:0] Stg0_Dig5_;
output wire	[17:0] Stg0_Dig6_;
output wire	[17:0] Stg0_Dig7_;
output wire	[17:0] Stg0_Dig8_;
output wire	[17:0] Stg0_Dig9_;
output wire	[17:0] Stg1_Dig2_;
output wire	[17:0] Stg1_Dig3_;
output wire	[17:0] Stg1_Dig4_;
output wire	[17:0] Stg1_Dig5_;
output wire	[17:0] Stg1_Dig6_;
output wire	[17:0] Stg1_Dig7_;
output wire	[17:0] Stg1_Dig8_;
output wire	[17:0] Stg1_Dig9_;
output wire	[17:0] Stg2_Dig3_;
output wire	[17:0] Stg2_Dig4_;
output wire	[17:0] Stg2_Dig5_;
output wire	[17:0] Stg2_Dig6_;
output wire	[17:0] Stg2_Dig7_;
output wire	[17:0] Stg2_Dig8_;
output wire	[17:0] Stg2_Dig9_;
output wire	[17:0] Stg3_Dig4_;
output wire	[17:0] Stg3_Dig5_;
output wire	[17:0] Stg3_Dig6_;
output wire	[17:0] Stg3_Dig7_;
output wire	[17:0] Stg3_Dig8_;
output wire	[17:0] Stg3_Dig9_;
output wire	[17:0] Stg4_Dig5_;
output wire	[17:0] Stg4_Dig6_;
output wire	[17:0] Stg4_Dig7_;
output wire	[17:0] Stg4_Dig8_;
output wire	[17:0] Stg4_Dig9_;
output wire	[17:0] Stg5_Dig6_;
output wire	[17:0] Stg5_Dig7_;
output wire	[17:0] Stg5_Dig8_;
output wire	[17:0] Stg5_Dig9_;
output wire	[17:0] Stg6_Dig7_;
output wire	[17:0] Stg6_Dig8_;
output wire	[17:0] Stg6_Dig9_;
output wire	[17:0] Stg7_Dig8_;
output wire	[17:0] Stg7_Dig9_;
output wire	[17:0] Stg8_Dig8_;
output wire	[17:0] Stg8_Dig9_;

wire	[17:0] d2_0_0_;
wire	[17:0] d3_0_0_;
wire	[17:0] d3_0_1_;
wire	[17:0] d4_0_0_;
wire	[17:0] d4_0_1_;
wire	[17:0] d4_0_2_;
wire	[17:0] d5_0_0_;
wire	[17:0] d5_0_1_;
wire	[17:0] d5_0_2_;
wire	[17:0] d5_0_3_;
wire	[17:0] d6_0_0_;
wire	[17:0] d6_0_1_;
wire	[17:0] d6_0_2_;
wire	[17:0] d6_0_3_;
wire	[17:0] d6_0_4_;
wire	[17:0] d7_0_0_;
wire	[17:0] d7_0_1_;
wire	[17:0] d7_0_2_;
wire	[17:0] d7_0_3_;
wire	[17:0] d7_0_4_;
wire	[17:0] d7_0_5_;
wire	[17:0] d8_0_0_;
wire	[17:0] d8_0_1_;
wire	[17:0] d8_0_2_;
wire	[17:0] d8_0_3_;
wire	[17:0] d8_0_4_;
wire	[17:0] d8_0_5_;
wire	[17:0] d8_0_6_;
wire	[17:0] d9_0_0_;
wire	[17:0] d9_0_1_;
wire	[17:0] d9_0_2_;
wire	[17:0] d9_0_3_;
wire	[17:0] d9_0_4_;
wire	[17:0] d9_0_5_;
wire	[17:0] d9_0_6_;
wire	[17:0] d9_0_7_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig0_;
wire	[17:0] Stg0_Dig1_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig2_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig3_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig4_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig5_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig6_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig7_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg0_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg1_Dig1_;
wire	[17:0] Stg1_Dig2_ALTERA_SYNTHESIZED;
wire	[17:0] Stg1_Dig3_ALTERA_SYNTHESIZED;
wire	[17:0] Stg1_Dig4_ALTERA_SYNTHESIZED;
wire	[17:0] Stg1_Dig5_ALTERA_SYNTHESIZED;
wire	[17:0] Stg1_Dig6_ALTERA_SYNTHESIZED;
wire	[17:0] Stg1_Dig7_ALTERA_SYNTHESIZED;
wire	[17:0] Stg1_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg1_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg2_Dig2_;
wire	[17:0] Stg2_Dig3_ALTERA_SYNTHESIZED;
wire	[17:0] Stg2_Dig4_ALTERA_SYNTHESIZED;
wire	[17:0] Stg2_Dig5_ALTERA_SYNTHESIZED;
wire	[17:0] Stg2_Dig6_ALTERA_SYNTHESIZED;
wire	[17:0] Stg2_Dig7_ALTERA_SYNTHESIZED;
wire	[17:0] Stg2_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg2_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg3_Dig3_;
wire	[17:0] Stg3_Dig4_ALTERA_SYNTHESIZED;
wire	[17:0] Stg3_Dig5_ALTERA_SYNTHESIZED;
wire	[17:0] Stg3_Dig6_ALTERA_SYNTHESIZED;
wire	[17:0] Stg3_Dig7_ALTERA_SYNTHESIZED;
wire	[17:0] Stg3_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg3_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg4_Dig4_;
wire	[17:0] Stg4_Dig5_ALTERA_SYNTHESIZED;
wire	[17:0] Stg4_Dig6_ALTERA_SYNTHESIZED;
wire	[17:0] Stg4_Dig7_ALTERA_SYNTHESIZED;
wire	[17:0] Stg4_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg4_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg5_Dig5_;
wire	[17:0] Stg5_Dig6_ALTERA_SYNTHESIZED;
wire	[17:0] Stg5_Dig7_ALTERA_SYNTHESIZED;
wire	[17:0] Stg5_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg5_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg6_Dig6_;
wire	[17:0] Stg6_Dig7_ALTERA_SYNTHESIZED;
wire	[17:0] Stg6_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg6_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg7_Dig7_;
wire	[17:0] Stg7_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg7_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg8_Dig8_ALTERA_SYNTHESIZED;
wire	[17:0] Stg8_Dig9_ALTERA_SYNTHESIZED;
wire	[17:0] Stg9_Dig9_;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;
wire	[1:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_5;
wire	[1:0] SYNTHESIZED_WIRE_6;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	[1:0] SYNTHESIZED_WIRE_21;
wire	[1:0] SYNTHESIZED_WIRE_10;
wire	[1:0] SYNTHESIZED_WIRE_11;
wire	[0:17] SYNTHESIZED_WIRE_12;
wire	[0:17] SYNTHESIZED_WIRE_13;
wire	[0:17] SYNTHESIZED_WIRE_14;
wire	[0:17] SYNTHESIZED_WIRE_15;
wire	[0:17] SYNTHESIZED_WIRE_16;
wire	[0:17] SYNTHESIZED_WIRE_17;
wire	[0:17] SYNTHESIZED_WIRE_18;
wire	[0:17] SYNTHESIZED_WIRE_19;
wire	[0:17] SYNTHESIZED_WIRE_20;

assign	Sgn_out_0_ = SYNTHESIZED_WIRE_1;
assign	Sgn_out_1_ = SYNTHESIZED_WIRE_2;
assign	Sgn_out_2_ = SYNTHESIZED_WIRE_3;
assign	Sgn_out_3_ = SYNTHESIZED_WIRE_4;
assign	Sgn_out_4_ = SYNTHESIZED_WIRE_5;
assign	Sgn_out_5_ = SYNTHESIZED_WIRE_6;
assign	Sgn_out_6_ = SYNTHESIZED_WIRE_7;
assign	Sgn_out_7_ = SYNTHESIZED_WIRE_21;
assign	Sgn_out_8_A = SYNTHESIZED_WIRE_10;
assign	Sgn_out_8_B = SYNTHESIZED_WIRE_11;
assign	SYNTHESIZED_WIRE_12 = 0;
assign	SYNTHESIZED_WIRE_13 = 0;
assign	SYNTHESIZED_WIRE_14 = 0;
assign	SYNTHESIZED_WIRE_15 = 0;
assign	SYNTHESIZED_WIRE_16 = 0;
assign	SYNTHESIZED_WIRE_17 = 0;
assign	SYNTHESIZED_WIRE_18 = 0;
assign	SYNTHESIZED_WIRE_19 = 0;
assign	SYNTHESIZED_WIRE_20 = 0;




SubInvMult_8L_mlab	b2v_inst(
	.clk(clk),
	.dataA_in(Stg0_Dig1_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig1_));
	defparam	b2v_inst.DATA_WIDTH = 18;
	defparam	b2v_inst.FILE1 = "invmult_3lut0_1_0.hex";
	defparam	b2v_inst.FILE2 = "invmult_3lut1_1_0.hex";
	defparam	b2v_inst.FILE3 = "invmult_3lut2_1_0.hex";
	defparam	b2v_inst.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst.MODULUS = 78125;


ModCompare_9L_mlab	b2v_inst1(
	.clk(clk),
	.in_A_0_(Stg0_Dig0_),
	.sign_in(SYNTHESIZED_WIRE_0),
	
	.sign_result(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst1.DATA_WIDTH = 18;
	defparam	b2v_inst1.MCONSTANT = 32768;


ModCompare_9L_mlab	b2v_inst10(
	.clk(clk),
	.in_A_0_(Stg1_Dig1_),
	.sign_in(SYNTHESIZED_WIRE_1),
	
	.sign_result(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst10.DATA_WIDTH = 18;
	defparam	b2v_inst10.MCONSTANT = 39062;


ModCompare_9L_mlab	b2v_inst11(
	.clk(clk),
	.in_A_0_(Stg2_Dig2_),
	.sign_in(SYNTHESIZED_WIRE_2),
	
	.sign_result(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst11.DATA_WIDTH = 18;
	defparam	b2v_inst11.MCONSTANT = 58824;


ModCompare_9L_mlab	b2v_inst12(
	.clk(clk),
	.in_A_0_(Stg3_Dig3_),
	.sign_in(SYNTHESIZED_WIRE_3),
	
	.sign_result(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst12.DATA_WIDTH = 18;
	defparam	b2v_inst12.MCONSTANT = 88573;


ModCompare_9L_mlab	b2v_inst13(
	.clk(clk),
	.in_A_0_(Stg4_Dig4_),
	.sign_in(SYNTHESIZED_WIRE_4),
	
	.sign_result(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst13.DATA_WIDTH = 18;
	defparam	b2v_inst13.MCONSTANT = 131013;


ModCompare_9L_mlab	b2v_inst14(
	.clk(clk),
	.in_A_0_(Stg5_Dig5_),
	.sign_in(SYNTHESIZED_WIRE_5),
	
	.sign_result(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst14.DATA_WIDTH = 18;
	defparam	b2v_inst14.MCONSTANT = 131024;


ModCompare_9L_mlab	b2v_inst15(
	.clk(clk),
	.in_A_0_(Stg6_Dig6_),
	.sign_in(SYNTHESIZED_WIRE_6),
	
	.sign_result(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst15.DATA_WIDTH = 18;
	defparam	b2v_inst15.MCONSTANT = 131025;


ModCompare_9L_mlab	b2v_inst16(
	.clk(clk),
	.in_A_0_(Stg7_Dig7_),
	.sign_in(SYNTHESIZED_WIRE_7),
	
	.sign_result(SYNTHESIZED_WIRE_21));
	defparam	b2v_inst16.DATA_WIDTH = 18;
	defparam	b2v_inst16.MCONSTANT = 131034;


ModDualCmp_9L_2in	b2v_inst19(
	.clk(clk),
	.in_A_0_(Stg8_Dig8_ALTERA_SYNTHESIZED),
	.sign_in_A(SYNTHESIZED_WIRE_21),
	.sign_in_B(SYNTHESIZED_WIRE_21),
	
	
	.sign_result_A(SYNTHESIZED_WIRE_10),
	.sign_result_B(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst19.DATA_WIDTH = 18;
	defparam	b2v_inst19.NEG_DIGIT = 262078;
	defparam	b2v_inst19.POS_DIGIT = 0;


ModDualCmp_9L_2in	b2v_inst21(
	.clk(clk),
	.in_A_0_(Stg9_Dig9_),
	.sign_in_A(SYNTHESIZED_WIRE_10),
	.sign_in_B(SYNTHESIZED_WIRE_11),
	
	
	.sign_result_A(Sgn_out_9_A),
	.sign_result_B(Sgn_out_9_B));
	defparam	b2v_inst21.DATA_WIDTH = 18;
	defparam	b2v_inst21.NEG_DIGIT = 262102;
	defparam	b2v_inst21.POS_DIGIT = 0;










SubInvMult_8L_mlab	b2v_inst31(
	.clk(clk),
	.dataA_in(Stg0_Dig2_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig2_ALTERA_SYNTHESIZED));
	defparam	b2v_inst31.DATA_WIDTH = 18;
	defparam	b2v_inst31.FILE1 = "invmult_3lut0_2_0.hex";
	defparam	b2v_inst31.FILE2 = "invmult_3lut1_2_0.hex";
	defparam	b2v_inst31.FILE3 = "invmult_3lut2_2_0.hex";
	defparam	b2v_inst31.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_inst31.MODULUS = 117649;


SubInvMult_8L_mlab	b2v_inst32(
	.clk(clk),
	.dataA_in(Stg0_Dig3_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig3_ALTERA_SYNTHESIZED));
	defparam	b2v_inst32.DATA_WIDTH = 18;
	defparam	b2v_inst32.FILE1 = "invmult_3lut0_3_0.hex";
	defparam	b2v_inst32.FILE2 = "invmult_3lut1_3_0.hex";
	defparam	b2v_inst32.FILE3 = "invmult_3lut2_3_0.hex";
	defparam	b2v_inst32.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst32.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_inst33(
	.clk(clk),
	.dataA_in(Stg0_Dig4_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig4_ALTERA_SYNTHESIZED));
	defparam	b2v_inst33.DATA_WIDTH = 18;
	defparam	b2v_inst33.FILE1 = "invmult_3lut0_4_0.hex";
	defparam	b2v_inst33.FILE2 = "invmult_3lut1_4_0.hex";
	defparam	b2v_inst33.FILE3 = "invmult_3lut2_4_0.hex";
	defparam	b2v_inst33.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst33.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst34(
	.clk(clk),
	.dataA_in(Stg0_Dig5_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig5_ALTERA_SYNTHESIZED));
	defparam	b2v_inst34.DATA_WIDTH = 18;
	defparam	b2v_inst34.FILE1 = "invmult_3lut0_5_0.hex";
	defparam	b2v_inst34.FILE2 = "invmult_3lut1_5_0.hex";
	defparam	b2v_inst34.FILE3 = "invmult_3lut2_5_0.hex";
	defparam	b2v_inst34.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst34.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst35(
	.clk(clk),
	.dataA_in(Stg0_Dig6_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig6_ALTERA_SYNTHESIZED));
	defparam	b2v_inst35.DATA_WIDTH = 18;
	defparam	b2v_inst35.FILE1 = "invmult_3lut0_6_0.hex";
	defparam	b2v_inst35.FILE2 = "invmult_3lut1_6_0.hex";
	defparam	b2v_inst35.FILE3 = "invmult_3lut2_6_0.hex";
	defparam	b2v_inst35.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst35.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst36(
	.clk(clk),
	.dataA_in(Stg0_Dig7_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig7_ALTERA_SYNTHESIZED));
	defparam	b2v_inst36.DATA_WIDTH = 18;
	defparam	b2v_inst36.FILE1 = "invmult_3lut0_7_0.hex";
	defparam	b2v_inst36.FILE2 = "invmult_3lut1_7_0.hex";
	defparam	b2v_inst36.FILE3 = "invmult_3lut2_7_0.hex";
	defparam	b2v_inst36.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst36.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst37(
	.clk(clk),
	.dataA_in(Stg1_Dig2_ALTERA_SYNTHESIZED),
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
	.dataA_in(Stg1_Dig3_ALTERA_SYNTHESIZED),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig3_ALTERA_SYNTHESIZED));
	defparam	b2v_inst38.DATA_WIDTH = 18;
	defparam	b2v_inst38.FILE1 = "invmult_3lut0_3_1.hex";
	defparam	b2v_inst38.FILE2 = "invmult_3lut1_3_1.hex";
	defparam	b2v_inst38.FILE3 = "invmult_3lut2_3_1.hex";
	defparam	b2v_inst38.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst38.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_inst39(
	.clk(clk),
	.dataA_in(Stg2_Dig3_ALTERA_SYNTHESIZED),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig3_));
	defparam	b2v_inst39.DATA_WIDTH = 18;
	defparam	b2v_inst39.FILE1 = "invmult_3lut0_3_2.hex";
	defparam	b2v_inst39.FILE2 = "invmult_3lut1_3_2.hex";
	defparam	b2v_inst39.FILE3 = "invmult_3lut2_3_2.hex";
	defparam	b2v_inst39.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst39.MODULUS = 177147;


SubInvMult_8L_mlab	b2v_inst40(
	.clk(clk),
	.dataA_in(Stg1_Dig4_ALTERA_SYNTHESIZED),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig4_ALTERA_SYNTHESIZED));
	defparam	b2v_inst40.DATA_WIDTH = 18;
	defparam	b2v_inst40.FILE1 = "invmult_3lut0_4_1.hex";
	defparam	b2v_inst40.FILE2 = "invmult_3lut1_4_1.hex";
	defparam	b2v_inst40.FILE3 = "invmult_3lut2_4_1.hex";
	defparam	b2v_inst40.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst40.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst41(
	.clk(clk),
	.dataA_in(Stg2_Dig4_ALTERA_SYNTHESIZED),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig4_ALTERA_SYNTHESIZED));
	defparam	b2v_inst41.DATA_WIDTH = 18;
	defparam	b2v_inst41.FILE1 = "invmult_3lut0_4_2.hex";
	defparam	b2v_inst41.FILE2 = "invmult_3lut1_4_2.hex";
	defparam	b2v_inst41.FILE3 = "invmult_3lut2_4_2.hex";
	defparam	b2v_inst41.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst41.MODULUS = 262027;


SubInvMult_8L_mlab	b2v_inst42(
	.clk(clk),
	.dataA_in(Stg3_Dig4_ALTERA_SYNTHESIZED),
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
	.dataA_in(Stg1_Dig5_ALTERA_SYNTHESIZED),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig5_ALTERA_SYNTHESIZED));
	defparam	b2v_inst43.DATA_WIDTH = 18;
	defparam	b2v_inst43.FILE1 = "invmult_3lut0_5_1.hex";
	defparam	b2v_inst43.FILE2 = "invmult_3lut1_5_1.hex";
	defparam	b2v_inst43.FILE3 = "invmult_3lut2_5_1.hex";
	defparam	b2v_inst43.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst43.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst44(
	.clk(clk),
	.dataA_in(Stg2_Dig5_ALTERA_SYNTHESIZED),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig5_ALTERA_SYNTHESIZED));
	defparam	b2v_inst44.DATA_WIDTH = 18;
	defparam	b2v_inst44.FILE1 = "invmult_3lut0_5_2.hex";
	defparam	b2v_inst44.FILE2 = "invmult_3lut1_5_2.hex";
	defparam	b2v_inst44.FILE3 = "invmult_3lut2_5_2.hex";
	defparam	b2v_inst44.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst44.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst45(
	.clk(clk),
	.dataA_in(Stg3_Dig5_ALTERA_SYNTHESIZED),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig5_ALTERA_SYNTHESIZED));
	defparam	b2v_inst45.DATA_WIDTH = 18;
	defparam	b2v_inst45.FILE1 = "invmult_3lut0_5_3.hex";
	defparam	b2v_inst45.FILE2 = "invmult_3lut1_5_3.hex";
	defparam	b2v_inst45.FILE3 = "invmult_3lut2_5_3.hex";
	defparam	b2v_inst45.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst45.MODULUS = 262049;


SubInvMult_8L_mlab	b2v_inst46(
	.clk(clk),
	.dataA_in(Stg4_Dig5_ALTERA_SYNTHESIZED),
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
	.dataA_in(Stg1_Dig6_ALTERA_SYNTHESIZED),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig6_ALTERA_SYNTHESIZED));
	defparam	b2v_inst47.DATA_WIDTH = 18;
	defparam	b2v_inst47.FILE1 = "invmult_3lut0_6_1.hex";
	defparam	b2v_inst47.FILE2 = "invmult_3lut1_6_1.hex";
	defparam	b2v_inst47.FILE3 = "invmult_3lut2_6_1.hex";
	defparam	b2v_inst47.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst47.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst48(
	.clk(clk),
	.dataA_in(Stg2_Dig6_ALTERA_SYNTHESIZED),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig6_ALTERA_SYNTHESIZED));
	defparam	b2v_inst48.DATA_WIDTH = 18;
	defparam	b2v_inst48.FILE1 = "invmult_3lut0_6_2.hex";
	defparam	b2v_inst48.FILE2 = "invmult_3lut1_6_2.hex";
	defparam	b2v_inst48.FILE3 = "invmult_3lut2_6_2.hex";
	defparam	b2v_inst48.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst48.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst49(
	.clk(clk),
	.dataA_in(Stg3_Dig6_ALTERA_SYNTHESIZED),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig6_ALTERA_SYNTHESIZED));
	defparam	b2v_inst49.DATA_WIDTH = 18;
	defparam	b2v_inst49.FILE1 = "invmult_3lut0_6_3.hex";
	defparam	b2v_inst49.FILE2 = "invmult_3lut1_6_3.hex";
	defparam	b2v_inst49.FILE3 = "invmult_3lut2_6_3.hex";
	defparam	b2v_inst49.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst49.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst50(
	.clk(clk),
	.dataA_in(Stg4_Dig6_ALTERA_SYNTHESIZED),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig6_ALTERA_SYNTHESIZED));
	defparam	b2v_inst50.DATA_WIDTH = 18;
	defparam	b2v_inst50.FILE1 = "invmult_3lut0_6_4.hex";
	defparam	b2v_inst50.FILE2 = "invmult_3lut1_6_4.hex";
	defparam	b2v_inst50.FILE3 = "invmult_3lut2_6_4.hex";
	defparam	b2v_inst50.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst50.MODULUS = 262051;


SubInvMult_8L_mlab	b2v_inst51(
	.clk(clk),
	.dataA_in(Stg5_Dig6_ALTERA_SYNTHESIZED),
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
	.dataA_in(Stg1_Dig7_ALTERA_SYNTHESIZED),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig7_ALTERA_SYNTHESIZED));
	defparam	b2v_inst52.DATA_WIDTH = 18;
	defparam	b2v_inst52.FILE1 = "invmult_3lut0_7_1.hex";
	defparam	b2v_inst52.FILE2 = "invmult_3lut1_7_1.hex";
	defparam	b2v_inst52.FILE3 = "invmult_3lut2_7_1.hex";
	defparam	b2v_inst52.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst52.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst53(
	.clk(clk),
	.dataA_in(Stg2_Dig7_ALTERA_SYNTHESIZED),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig7_ALTERA_SYNTHESIZED));
	defparam	b2v_inst53.DATA_WIDTH = 18;
	defparam	b2v_inst53.FILE1 = "invmult_3lut0_7_2.hex";
	defparam	b2v_inst53.FILE2 = "invmult_3lut1_7_2.hex";
	defparam	b2v_inst53.FILE3 = "invmult_3lut2_7_2.hex";
	defparam	b2v_inst53.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst53.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst54(
	.clk(clk),
	.dataA_in(Stg3_Dig7_ALTERA_SYNTHESIZED),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig7_ALTERA_SYNTHESIZED));
	defparam	b2v_inst54.DATA_WIDTH = 18;
	defparam	b2v_inst54.FILE1 = "invmult_3lut0_7_3.hex";
	defparam	b2v_inst54.FILE2 = "invmult_3lut1_7_3.hex";
	defparam	b2v_inst54.FILE3 = "invmult_3lut2_7_3.hex";
	defparam	b2v_inst54.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst54.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst55(
	.clk(clk),
	.dataA_in(Stg4_Dig7_ALTERA_SYNTHESIZED),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig7_ALTERA_SYNTHESIZED));
	defparam	b2v_inst55.DATA_WIDTH = 18;
	defparam	b2v_inst55.FILE1 = "invmult_3lut0_7_4.hex";
	defparam	b2v_inst55.FILE2 = "invmult_3lut1_7_4.hex";
	defparam	b2v_inst55.FILE3 = "invmult_3lut2_7_4.hex";
	defparam	b2v_inst55.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst55.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst56(
	.clk(clk),
	.dataA_in(Stg5_Dig7_ALTERA_SYNTHESIZED),
	.dataB_in(Stg5_Dig5_),
	.mod_data_out(Stg6_Dig7_ALTERA_SYNTHESIZED));
	defparam	b2v_inst56.DATA_WIDTH = 18;
	defparam	b2v_inst56.FILE1 = "invmult_3lut0_7_5.hex";
	defparam	b2v_inst56.FILE2 = "invmult_3lut1_7_5.hex";
	defparam	b2v_inst56.FILE3 = "invmult_3lut2_7_5.hex";
	defparam	b2v_inst56.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst56.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst57(
	.clk(clk),
	.dataA_in(Stg6_Dig7_ALTERA_SYNTHESIZED),
	.dataB_in(Stg6_Dig6_),
	.mod_data_out(Stg7_Dig7_));
	defparam	b2v_inst57.DATA_WIDTH = 18;
	defparam	b2v_inst57.FILE1 = "invmult_3lut0_7_6.hex";
	defparam	b2v_inst57.FILE2 = "invmult_3lut1_7_6.hex";
	defparam	b2v_inst57.FILE3 = "invmult_3lut2_7_6.hex";
	defparam	b2v_inst57.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst57.MODULUS = 262069;


SubInvMult_8L_mlab	b2v_inst58(
	.clk(clk),
	.dataA_in(Stg0_Dig8_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig8_ALTERA_SYNTHESIZED));
	defparam	b2v_inst58.DATA_WIDTH = 18;
	defparam	b2v_inst58.FILE1 = "invmult_3lut0_8_0.hex";
	defparam	b2v_inst58.FILE2 = "invmult_3lut1_8_0.hex";
	defparam	b2v_inst58.FILE3 = "invmult_3lut2_8_0.hex";
	defparam	b2v_inst58.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst58.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst59(
	.clk(clk),
	.dataA_in(Stg1_Dig8_ALTERA_SYNTHESIZED),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig8_ALTERA_SYNTHESIZED));
	defparam	b2v_inst59.DATA_WIDTH = 18;
	defparam	b2v_inst59.FILE1 = "invmult_3lut0_8_1.hex";
	defparam	b2v_inst59.FILE2 = "invmult_3lut1_8_1.hex";
	defparam	b2v_inst59.FILE3 = "invmult_3lut2_8_1.hex";
	defparam	b2v_inst59.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst59.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst60(
	.clk(clk),
	.dataA_in(Stg2_Dig8_ALTERA_SYNTHESIZED),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig8_ALTERA_SYNTHESIZED));
	defparam	b2v_inst60.DATA_WIDTH = 18;
	defparam	b2v_inst60.FILE1 = "invmult_3lut0_8_2.hex";
	defparam	b2v_inst60.FILE2 = "invmult_3lut1_8_2.hex";
	defparam	b2v_inst60.FILE3 = "invmult_3lut2_8_2.hex";
	defparam	b2v_inst60.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst60.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst61(
	.clk(clk),
	.dataA_in(Stg3_Dig8_ALTERA_SYNTHESIZED),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig8_ALTERA_SYNTHESIZED));
	defparam	b2v_inst61.DATA_WIDTH = 18;
	defparam	b2v_inst61.FILE1 = "invmult_3lut0_8_3.hex";
	defparam	b2v_inst61.FILE2 = "invmult_3lut1_8_3.hex";
	defparam	b2v_inst61.FILE3 = "invmult_3lut2_8_3.hex";
	defparam	b2v_inst61.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst61.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst62(
	.clk(clk),
	.dataA_in(Stg4_Dig8_ALTERA_SYNTHESIZED),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig8_ALTERA_SYNTHESIZED));
	defparam	b2v_inst62.DATA_WIDTH = 18;
	defparam	b2v_inst62.FILE1 = "invmult_3lut0_8_4.hex";
	defparam	b2v_inst62.FILE2 = "invmult_3lut1_8_4.hex";
	defparam	b2v_inst62.FILE3 = "invmult_3lut2_8_4.hex";
	defparam	b2v_inst62.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst62.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst63(
	.clk(clk),
	.dataA_in(Stg5_Dig8_ALTERA_SYNTHESIZED),
	.dataB_in(Stg5_Dig5_),
	.mod_data_out(Stg6_Dig8_ALTERA_SYNTHESIZED));
	defparam	b2v_inst63.DATA_WIDTH = 18;
	defparam	b2v_inst63.FILE1 = "invmult_3lut0_8_5.hex";
	defparam	b2v_inst63.FILE2 = "invmult_3lut1_8_5.hex";
	defparam	b2v_inst63.FILE3 = "invmult_3lut2_8_5.hex";
	defparam	b2v_inst63.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst63.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst64(
	.clk(clk),
	.dataA_in(Stg6_Dig8_ALTERA_SYNTHESIZED),
	.dataB_in(Stg6_Dig6_),
	.mod_data_out(Stg7_Dig8_ALTERA_SYNTHESIZED));
	defparam	b2v_inst64.DATA_WIDTH = 18;
	defparam	b2v_inst64.FILE1 = "invmult_3lut0_8_6.hex";
	defparam	b2v_inst64.FILE2 = "invmult_3lut1_8_6.hex";
	defparam	b2v_inst64.FILE3 = "invmult_3lut2_8_6.hex";
	defparam	b2v_inst64.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst64.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst65(
	.clk(clk),
	.dataA_in(Stg0_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg0_Dig0_),
	.mod_data_out(Stg1_Dig9_ALTERA_SYNTHESIZED));
	defparam	b2v_inst65.DATA_WIDTH = 18;
	defparam	b2v_inst65.FILE1 = "invmult_3lut0_9_0.hex";
	defparam	b2v_inst65.FILE2 = "invmult_3lut1_9_0.hex";
	defparam	b2v_inst65.FILE3 = "invmult_3lut2_9_0.hex";
	defparam	b2v_inst65.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst65.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst66(
	.clk(clk),
	.dataA_in(Stg1_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg1_Dig1_),
	.mod_data_out(Stg2_Dig9_ALTERA_SYNTHESIZED));
	defparam	b2v_inst66.DATA_WIDTH = 18;
	defparam	b2v_inst66.FILE1 = "invmult_3lut0_9_1.hex";
	defparam	b2v_inst66.FILE2 = "invmult_3lut1_9_1.hex";
	defparam	b2v_inst66.FILE3 = "invmult_3lut2_9_1.hex";
	defparam	b2v_inst66.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst66.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst67(
	.clk(clk),
	.dataA_in(Stg2_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg2_Dig2_),
	.mod_data_out(Stg3_Dig9_ALTERA_SYNTHESIZED));
	defparam	b2v_inst67.DATA_WIDTH = 18;
	defparam	b2v_inst67.FILE1 = "invmult_3lut0_9_2.hex";
	defparam	b2v_inst67.FILE2 = "invmult_3lut1_9_2.hex";
	defparam	b2v_inst67.FILE3 = "invmult_3lut2_9_2.hex";
	defparam	b2v_inst67.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst67.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst68(
	.clk(clk),
	.dataA_in(Stg3_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg3_Dig3_),
	.mod_data_out(Stg4_Dig9_ALTERA_SYNTHESIZED));
	defparam	b2v_inst68.DATA_WIDTH = 18;
	defparam	b2v_inst68.FILE1 = "invmult_3lut0_9_3.hex";
	defparam	b2v_inst68.FILE2 = "invmult_3lut1_9_3.hex";
	defparam	b2v_inst68.FILE3 = "invmult_3lut2_9_3.hex";
	defparam	b2v_inst68.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst68.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst69(
	.clk(clk),
	.dataA_in(Stg4_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg4_Dig4_),
	.mod_data_out(Stg5_Dig9_ALTERA_SYNTHESIZED));
	defparam	b2v_inst69.DATA_WIDTH = 18;
	defparam	b2v_inst69.FILE1 = "invmult_3lut0_9_4.hex";
	defparam	b2v_inst69.FILE2 = "invmult_3lut1_9_4.hex";
	defparam	b2v_inst69.FILE3 = "invmult_3lut2_9_4.hex";
	defparam	b2v_inst69.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst69.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst70(
	.clk(clk),
	.dataA_in(Stg5_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg5_Dig5_),
	.mod_data_out(Stg6_Dig9_ALTERA_SYNTHESIZED));
	defparam	b2v_inst70.DATA_WIDTH = 18;
	defparam	b2v_inst70.FILE1 = "invmult_3lut0_9_5.hex";
	defparam	b2v_inst70.FILE2 = "invmult_3lut1_9_5.hex";
	defparam	b2v_inst70.FILE3 = "invmult_3lut2_9_5.hex";
	defparam	b2v_inst70.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst70.MODULUS = 262103;



SubInvMult_8L_mlab	b2v_inst71(
	.clk(clk),
	.dataA_in(Stg6_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg6_Dig6_),
	.mod_data_out(Stg7_Dig9_ALTERA_SYNTHESIZED));
	defparam	b2v_inst71.DATA_WIDTH = 18;
	defparam	b2v_inst71.FILE1 = "invmult_3lut0_9_6.hex";
	defparam	b2v_inst71.FILE2 = "invmult_3lut1_9_6.hex";
	defparam	b2v_inst71.FILE3 = "invmult_3lut2_9_6.hex";
	defparam	b2v_inst71.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst71.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst72(
	.clk(clk),
	.dataA_in(Stg7_Dig8_ALTERA_SYNTHESIZED),
	.dataB_in(Stg7_Dig7_),
	.mod_data_out(Stg8_Dig8_ALTERA_SYNTHESIZED));
	defparam	b2v_inst72.DATA_WIDTH = 18;
	defparam	b2v_inst72.FILE1 = "invmult_3lut0_8_7.hex";
	defparam	b2v_inst72.FILE2 = "invmult_3lut1_8_7.hex";
	defparam	b2v_inst72.FILE3 = "invmult_3lut2_8_7.hex";
	defparam	b2v_inst72.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst72.MODULUS = 262079;


SubInvMult_8L_mlab	b2v_inst73(
	.clk(clk),
	.dataA_in(Stg7_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg7_Dig7_),
	.mod_data_out(Stg8_Dig9_ALTERA_SYNTHESIZED));
	defparam	b2v_inst73.DATA_WIDTH = 18;
	defparam	b2v_inst73.FILE1 = "invmult_3lut0_9_7.hex";
	defparam	b2v_inst73.FILE2 = "invmult_3lut1_9_7.hex";
	defparam	b2v_inst73.FILE3 = "invmult_3lut2_9_7.hex";
	defparam	b2v_inst73.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst73.MODULUS = 262103;


SubInvMult_8L_mlab	b2v_inst74(
	.clk(clk),
	.dataA_in(Stg8_Dig9_ALTERA_SYNTHESIZED),
	.dataB_in(Stg8_Dig8_ALTERA_SYNTHESIZED),
	.mod_data_out(Stg9_Dig9_));
	defparam	b2v_inst74.DATA_WIDTH = 18;
	defparam	b2v_inst74.FILE1 = "invmult_3lut0_9_8.hex";
	defparam	b2v_inst74.FILE2 = "invmult_3lut1_9_8.hex";
	defparam	b2v_inst74.FILE3 = "invmult_3lut2_9_8.hex";
	defparam	b2v_inst74.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst74.MODULUS = 262103;


fixed_val	b2v_inst_const1(
	.value(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst_const1.DATA_WIDTH = 2;
	defparam	b2v_inst_const1.MCONSTANT = 1;


ModMultAdd_8L_v2	b2v_inst_d1_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_12),
	.result(d1_0_0_));
	defparam	b2v_inst_d1_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d1_0.FILE1 = "pwrmult_3lut0_d1_0_0.hex";
	defparam	b2v_inst_d1_0.FILE2 = "pwrmult_3lut1_d1_0_0.hex";
	defparam	b2v_inst_d1_0.FILE3 = "pwrmult_3lut2_d1_0_0.hex";
	defparam	b2v_inst_d1_0.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst_d1_0.MODULUS = 78125;


ModMultAdd_8L_v2	b2v_inst_d2_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_13),
	.result(d2_0_0_));
	defparam	b2v_inst_d2_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d2_0.FILE1 = "pwrmult_3lut0_d2_0_0.hex";
	defparam	b2v_inst_d2_0.FILE2 = "pwrmult_3lut1_d2_0_0.hex";
	defparam	b2v_inst_d2_0.FILE3 = "pwrmult_3lut2_d2_0_0.hex";
	defparam	b2v_inst_d2_0.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_inst_d2_0.MODULUS = 117649;


ModMultAdd_8L_v2	b2v_inst_d2_1(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(d2_0_0_),
	.result(d2_0_1_));
	defparam	b2v_inst_d2_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d2_1.FILE1 = "pwrmult_3lut0_d2_0_1.hex";
	defparam	b2v_inst_d2_1.FILE2 = "pwrmult_3lut1_d2_0_1.hex";
	defparam	b2v_inst_d2_1.FILE3 = "pwrmult_3lut2_d2_0_1.hex";
	defparam	b2v_inst_d2_1.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_inst_d2_1.MODULUS = 117649;


ModMultAdd_8L_v2	b2v_inst_d3_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_14),
	.result(d3_0_0_));
	defparam	b2v_inst_d3_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d3_0.FILE1 = "pwrmult_3lut0_d3_0_0.hex";
	defparam	b2v_inst_d3_0.FILE2 = "pwrmult_3lut1_d3_0_0.hex";
	defparam	b2v_inst_d3_0.FILE3 = "pwrmult_3lut2_d3_0_0.hex";
	defparam	b2v_inst_d3_0.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst_d3_0.MODULUS = 177147;


ModMultAdd_8L_v2	b2v_inst_d3_1(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(d3_0_0_),
	.result(d3_0_1_));
	defparam	b2v_inst_d3_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d3_1.FILE1 = "pwrmult_3lut0_d3_0_1.hex";
	defparam	b2v_inst_d3_1.FILE2 = "pwrmult_3lut1_d3_0_1.hex";
	defparam	b2v_inst_d3_1.FILE3 = "pwrmult_3lut2_d3_0_1.hex";
	defparam	b2v_inst_d3_1.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst_d3_1.MODULUS = 177147;


ModMultAdd_8L_v2	b2v_inst_d3_2(
	.clk(clk),
	.OP_A_mult(Stg2_Dig2_),
	.OP_B_add(d3_0_1_),
	.result(d3_0_2_));
	defparam	b2v_inst_d3_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d3_2.FILE1 = "pwrmult_3lut0_d3_0_2.hex";
	defparam	b2v_inst_d3_2.FILE2 = "pwrmult_3lut1_d3_0_2.hex";
	defparam	b2v_inst_d3_2.FILE3 = "pwrmult_3lut2_d3_0_2.hex";
	defparam	b2v_inst_d3_2.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_inst_d3_2.MODULUS = 177147;


ModMultAdd_8L_v2	b2v_inst_d4_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_15),
	.result(d4_0_0_));
	defparam	b2v_inst_d4_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d4_0.FILE1 = "pwrmult_3lut0_d4_0_0.hex";
	defparam	b2v_inst_d4_0.FILE2 = "pwrmult_3lut1_d4_0_0.hex";
	defparam	b2v_inst_d4_0.FILE3 = "pwrmult_3lut2_d4_0_0.hex";
	defparam	b2v_inst_d4_0.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst_d4_0.MODULUS = 262027;


ModMultAdd_8L_v2	b2v_inst_d4_1(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(d4_0_0_),
	.result(d4_0_1_));
	defparam	b2v_inst_d4_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d4_1.FILE1 = "pwrmult_3lut0_d4_0_1.hex";
	defparam	b2v_inst_d4_1.FILE2 = "pwrmult_3lut1_d4_0_1.hex";
	defparam	b2v_inst_d4_1.FILE3 = "pwrmult_3lut2_d4_0_1.hex";
	defparam	b2v_inst_d4_1.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst_d4_1.MODULUS = 262027;


ModMultAdd_8L_v2	b2v_inst_d4_2(
	.clk(clk),
	.OP_A_mult(Stg2_Dig2_),
	.OP_B_add(d4_0_1_),
	.result(d4_0_2_));
	defparam	b2v_inst_d4_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d4_2.FILE1 = "pwrmult_3lut0_d4_0_2.hex";
	defparam	b2v_inst_d4_2.FILE2 = "pwrmult_3lut1_d4_0_2.hex";
	defparam	b2v_inst_d4_2.FILE3 = "pwrmult_3lut2_d4_0_2.hex";
	defparam	b2v_inst_d4_2.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst_d4_2.MODULUS = 262027;


ModMultAdd_8L_v2	b2v_inst_d4_3(
	.clk(clk),
	.OP_A_mult(Stg3_Dig3_),
	.OP_B_add(d4_0_2_),
	.result(d4_0_3_));
	defparam	b2v_inst_d4_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d4_3.FILE1 = "pwrmult_3lut0_d4_0_3.hex";
	defparam	b2v_inst_d4_3.FILE2 = "pwrmult_3lut1_d4_0_3.hex";
	defparam	b2v_inst_d4_3.FILE3 = "pwrmult_3lut2_d4_0_3.hex";
	defparam	b2v_inst_d4_3.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_inst_d4_3.MODULUS = 262027;


ModMultAdd_8L_v2	b2v_inst_d5_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_16),
	.result(d5_0_0_));
	defparam	b2v_inst_d5_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_0.FILE1 = "pwrmult_3lut0_d5_0_0.hex";
	defparam	b2v_inst_d5_0.FILE2 = "pwrmult_3lut1_d5_0_0.hex";
	defparam	b2v_inst_d5_0.FILE3 = "pwrmult_3lut2_d5_0_0.hex";
	defparam	b2v_inst_d5_0.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_0.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_inst_d5_1(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(d5_0_0_),
	.result(d5_0_1_));
	defparam	b2v_inst_d5_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_1.FILE1 = "pwrmult_3lut0_d5_0_1.hex";
	defparam	b2v_inst_d5_1.FILE2 = "pwrmult_3lut1_d5_0_1.hex";
	defparam	b2v_inst_d5_1.FILE3 = "pwrmult_3lut2_d5_0_1.hex";
	defparam	b2v_inst_d5_1.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_1.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_inst_d5_2(
	.clk(clk),
	.OP_A_mult(Stg2_Dig2_),
	.OP_B_add(d5_0_1_),
	.result(d5_0_2_));
	defparam	b2v_inst_d5_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_2.FILE1 = "pwrmult_3lut0_d5_0_2.hex";
	defparam	b2v_inst_d5_2.FILE2 = "pwrmult_3lut1_d5_0_2.hex";
	defparam	b2v_inst_d5_2.FILE3 = "pwrmult_3lut2_d5_0_2.hex";
	defparam	b2v_inst_d5_2.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_2.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_inst_d5_3(
	.clk(clk),
	.OP_A_mult(Stg3_Dig3_),
	.OP_B_add(d5_0_2_),
	.result(d5_0_3_));
	defparam	b2v_inst_d5_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_3.FILE1 = "pwrmult_3lut0_d5_0_3.hex";
	defparam	b2v_inst_d5_3.FILE2 = "pwrmult_3lut1_d5_0_3.hex";
	defparam	b2v_inst_d5_3.FILE3 = "pwrmult_3lut2_d5_0_3.hex";
	defparam	b2v_inst_d5_3.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_3.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_inst_d5_4(
	.clk(clk),
	.OP_A_mult(Stg4_Dig4_),
	.OP_B_add(d5_0_3_),
	.result(d5_0_4_));
	defparam	b2v_inst_d5_4.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_4.FILE1 = "pwrmult_3lut0_d5_0_4.hex";
	defparam	b2v_inst_d5_4.FILE2 = "pwrmult_3lut1_d5_0_4.hex";
	defparam	b2v_inst_d5_4.FILE3 = "pwrmult_3lut2_d5_0_4.hex";
	defparam	b2v_inst_d5_4.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_4.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_inst_d6_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_17),
	.result(d6_0_0_));
	defparam	b2v_inst_d6_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_0.FILE1 = "pwrmult_3lut0_d6_0_0.hex";
	defparam	b2v_inst_d6_0.FILE2 = "pwrmult_3lut1_d6_0_0.hex";
	defparam	b2v_inst_d6_0.FILE3 = "pwrmult_3lut2_d6_0_0.hex";
	defparam	b2v_inst_d6_0.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_0.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_inst_d6_1(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(d6_0_0_),
	.result(d6_0_1_));
	defparam	b2v_inst_d6_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_1.FILE1 = "pwrmult_3lut0_d6_0_1.hex";
	defparam	b2v_inst_d6_1.FILE2 = "pwrmult_3lut1_d6_0_1.hex";
	defparam	b2v_inst_d6_1.FILE3 = "pwrmult_3lut2_d6_0_1.hex";
	defparam	b2v_inst_d6_1.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_1.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_inst_d6_2(
	.clk(clk),
	.OP_A_mult(Stg2_Dig2_),
	.OP_B_add(d6_0_1_),
	.result(d6_0_2_));
	defparam	b2v_inst_d6_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_2.FILE1 = "pwrmult_3lut0_d6_0_2.hex";
	defparam	b2v_inst_d6_2.FILE2 = "pwrmult_3lut1_d6_0_2.hex";
	defparam	b2v_inst_d6_2.FILE3 = "pwrmult_3lut2_d6_0_2.hex";
	defparam	b2v_inst_d6_2.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_2.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_inst_d6_3(
	.clk(clk),
	.OP_A_mult(Stg3_Dig3_),
	.OP_B_add(d6_0_2_),
	.result(d6_0_3_));
	defparam	b2v_inst_d6_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_3.FILE1 = "pwrmult_3lut0_d6_0_3.hex";
	defparam	b2v_inst_d6_3.FILE2 = "pwrmult_3lut1_d6_0_3.hex";
	defparam	b2v_inst_d6_3.FILE3 = "pwrmult_3lut2_d6_0_3.hex";
	defparam	b2v_inst_d6_3.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_3.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_inst_d6_4(
	.clk(clk),
	.OP_A_mult(Stg4_Dig4_),
	.OP_B_add(d6_0_3_),
	.result(d6_0_4_));
	defparam	b2v_inst_d6_4.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_4.FILE1 = "pwrmult_3lut0_d6_0_4.hex";
	defparam	b2v_inst_d6_4.FILE2 = "pwrmult_3lut1_d6_0_4.hex";
	defparam	b2v_inst_d6_4.FILE3 = "pwrmult_3lut2_d6_0_4.hex";
	defparam	b2v_inst_d6_4.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_4.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_inst_d6_5(
	.clk(clk),
	.OP_A_mult(Stg5_Dig5_),
	.OP_B_add(d6_0_4_),
	.result(d6_0_5_));
	defparam	b2v_inst_d6_5.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_5.FILE1 = "pwrmult_3lut0_d6_0_5.hex";
	defparam	b2v_inst_d6_5.FILE2 = "pwrmult_3lut1_d6_0_5.hex";
	defparam	b2v_inst_d6_5.FILE3 = "pwrmult_3lut2_d6_0_5.hex";
	defparam	b2v_inst_d6_5.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_inst_d6_5.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_inst_d7_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_18),
	.result(d7_0_0_));
	defparam	b2v_inst_d7_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d7_0.FILE1 = "pwrmult_3lut0_d7_0_0.hex";
	defparam	b2v_inst_d7_0.FILE2 = "pwrmult_3lut1_d7_0_0.hex";
	defparam	b2v_inst_d7_0.FILE3 = "pwrmult_3lut2_d7_0_0.hex";
	defparam	b2v_inst_d7_0.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d7_0.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_inst_d7_1(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(d7_0_0_),
	.result(d7_0_1_));
	defparam	b2v_inst_d7_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d7_1.FILE1 = "pwrmult_3lut0_d7_0_1.hex";
	defparam	b2v_inst_d7_1.FILE2 = "pwrmult_3lut1_d7_0_1.hex";
	defparam	b2v_inst_d7_1.FILE3 = "pwrmult_3lut2_d7_0_1.hex";
	defparam	b2v_inst_d7_1.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d7_1.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_inst_d7_2(
	.clk(clk),
	.OP_A_mult(Stg2_Dig2_),
	.OP_B_add(d7_0_1_),
	.result(d7_0_2_));
	defparam	b2v_inst_d7_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d7_2.FILE1 = "pwrmult_3lut0_d7_0_2.hex";
	defparam	b2v_inst_d7_2.FILE2 = "pwrmult_3lut1_d7_0_2.hex";
	defparam	b2v_inst_d7_2.FILE3 = "pwrmult_3lut2_d7_0_2.hex";
	defparam	b2v_inst_d7_2.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d7_2.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_inst_d7_3(
	.clk(clk),
	.OP_A_mult(Stg3_Dig3_),
	.OP_B_add(d7_0_2_),
	.result(d7_0_3_));
	defparam	b2v_inst_d7_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d7_3.FILE1 = "pwrmult_3lut0_d7_0_3.hex";
	defparam	b2v_inst_d7_3.FILE2 = "pwrmult_3lut1_d7_0_3.hex";
	defparam	b2v_inst_d7_3.FILE3 = "pwrmult_3lut2_d7_0_3.hex";
	defparam	b2v_inst_d7_3.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d7_3.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_inst_d7_4(
	.clk(clk),
	.OP_A_mult(Stg4_Dig4_),
	.OP_B_add(d7_0_3_),
	.result(d7_0_4_));
	defparam	b2v_inst_d7_4.DATA_WIDTH = 18;
	defparam	b2v_inst_d7_4.FILE1 = "pwrmult_3lut0_d7_0_4.hex";
	defparam	b2v_inst_d7_4.FILE2 = "pwrmult_3lut1_d7_0_4.hex";
	defparam	b2v_inst_d7_4.FILE3 = "pwrmult_3lut2_d7_0_4.hex";
	defparam	b2v_inst_d7_4.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d7_4.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_inst_d7_5(
	.clk(clk),
	.OP_A_mult(Stg5_Dig5_),
	.OP_B_add(d7_0_4_),
	.result(d7_0_5_));
	defparam	b2v_inst_d7_5.DATA_WIDTH = 18;
	defparam	b2v_inst_d7_5.FILE1 = "pwrmult_3lut0_d7_0_5.hex";
	defparam	b2v_inst_d7_5.FILE2 = "pwrmult_3lut1_d7_0_5.hex";
	defparam	b2v_inst_d7_5.FILE3 = "pwrmult_3lut2_d7_0_5.hex";
	defparam	b2v_inst_d7_5.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d7_5.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_inst_d7_6(
	.clk(clk),
	.OP_A_mult(Stg6_Dig6_),
	.OP_B_add(d7_0_5_),
	.result(d7_0_6_));
	defparam	b2v_inst_d7_6.DATA_WIDTH = 18;
	defparam	b2v_inst_d7_6.FILE1 = "pwrmult_3lut0_d7_0_6.hex";
	defparam	b2v_inst_d7_6.FILE2 = "pwrmult_3lut1_d7_0_6.hex";
	defparam	b2v_inst_d7_6.FILE3 = "pwrmult_3lut2_d7_0_6.hex";
	defparam	b2v_inst_d7_6.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d7_6.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_inst_d8_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_19),
	.result(d8_0_0_));
	defparam	b2v_inst_d8_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d8_0.FILE1 = "pwrmult_3lut0_d8_0_0.hex";
	defparam	b2v_inst_d8_0.FILE2 = "pwrmult_3lut1_d8_0_0.hex";
	defparam	b2v_inst_d8_0.FILE3 = "pwrmult_3lut2_d8_0_0.hex";
	defparam	b2v_inst_d8_0.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d8_0.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_inst_d8_1(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(d8_0_0_),
	.result(d8_0_1_));
	defparam	b2v_inst_d8_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d8_1.FILE1 = "pwrmult_3lut0_d8_0_1.hex";
	defparam	b2v_inst_d8_1.FILE2 = "pwrmult_3lut1_d8_0_1.hex";
	defparam	b2v_inst_d8_1.FILE3 = "pwrmult_3lut2_d8_0_1.hex";
	defparam	b2v_inst_d8_1.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d8_1.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_inst_d8_2(
	.clk(clk),
	.OP_A_mult(Stg2_Dig2_),
	.OP_B_add(d8_0_1_),
	.result(d8_0_2_));
	defparam	b2v_inst_d8_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d8_2.FILE1 = "pwrmult_3lut0_d8_0_2.hex";
	defparam	b2v_inst_d8_2.FILE2 = "pwrmult_3lut1_d8_0_2.hex";
	defparam	b2v_inst_d8_2.FILE3 = "pwrmult_3lut2_d8_0_2.hex";
	defparam	b2v_inst_d8_2.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d8_2.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_inst_d8_3(
	.clk(clk),
	.OP_A_mult(Stg3_Dig3_),
	.OP_B_add(d8_0_2_),
	.result(d8_0_3_));
	defparam	b2v_inst_d8_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d8_3.FILE1 = "pwrmult_3lut0_d8_0_3.hex";
	defparam	b2v_inst_d8_3.FILE2 = "pwrmult_3lut1_d8_0_3.hex";
	defparam	b2v_inst_d8_3.FILE3 = "pwrmult_3lut2_d8_0_3.hex";
	defparam	b2v_inst_d8_3.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d8_3.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_inst_d8_4(
	.clk(clk),
	.OP_A_mult(Stg4_Dig4_),
	.OP_B_add(d8_0_3_),
	.result(d8_0_4_));
	defparam	b2v_inst_d8_4.DATA_WIDTH = 18;
	defparam	b2v_inst_d8_4.FILE1 = "pwrmult_3lut0_d8_0_4.hex";
	defparam	b2v_inst_d8_4.FILE2 = "pwrmult_3lut1_d8_0_4.hex";
	defparam	b2v_inst_d8_4.FILE3 = "pwrmult_3lut2_d8_0_4.hex";
	defparam	b2v_inst_d8_4.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d8_4.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_inst_d8_5(
	.clk(clk),
	.OP_A_mult(Stg5_Dig5_),
	.OP_B_add(d8_0_4_),
	.result(d8_0_5_));
	defparam	b2v_inst_d8_5.DATA_WIDTH = 18;
	defparam	b2v_inst_d8_5.FILE1 = "pwrmult_3lut0_d8_0_5.hex";
	defparam	b2v_inst_d8_5.FILE2 = "pwrmult_3lut1_d8_0_5.hex";
	defparam	b2v_inst_d8_5.FILE3 = "pwrmult_3lut2_d8_0_5.hex";
	defparam	b2v_inst_d8_5.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d8_5.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_inst_d8_6(
	.clk(clk),
	.OP_A_mult(Stg6_Dig6_),
	.OP_B_add(d8_0_5_),
	.result(d8_0_6_));
	defparam	b2v_inst_d8_6.DATA_WIDTH = 18;
	defparam	b2v_inst_d8_6.FILE1 = "pwrmult_3lut0_d8_0_6.hex";
	defparam	b2v_inst_d8_6.FILE2 = "pwrmult_3lut1_d8_0_6.hex";
	defparam	b2v_inst_d8_6.FILE3 = "pwrmult_3lut2_d8_0_6.hex";
	defparam	b2v_inst_d8_6.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d8_6.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_inst_d8_7(
	.clk(clk),
	.OP_A_mult(Stg7_Dig7_),
	.OP_B_add(d8_0_6_),
	.result(d8_0_7_));
	defparam	b2v_inst_d8_7.DATA_WIDTH = 18;
	defparam	b2v_inst_d8_7.FILE1 = "pwrmult_3lut0_d8_0_7.hex";
	defparam	b2v_inst_d8_7.FILE2 = "pwrmult_3lut1_d8_0_7.hex";
	defparam	b2v_inst_d8_7.FILE3 = "pwrmult_3lut2_d8_0_7.hex";
	defparam	b2v_inst_d8_7.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_inst_d8_7.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_inst_d9_0(
	.clk(clk),
	.OP_A_mult(Stg0_Dig0_),
	.OP_B_add(SYNTHESIZED_WIRE_20),
	.result(d9_0_0_));
	defparam	b2v_inst_d9_0.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_0.FILE1 = "pwrmult_3lut0_d9_0_0.hex";
	defparam	b2v_inst_d9_0.FILE2 = "pwrmult_3lut1_d9_0_0.hex";
	defparam	b2v_inst_d9_0.FILE3 = "pwrmult_3lut2_d9_0_0.hex";
	defparam	b2v_inst_d9_0.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_0.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_inst_d9_1(
	.clk(clk),
	.OP_A_mult(Stg1_Dig1_),
	.OP_B_add(d9_0_0_),
	.result(d9_0_1_));
	defparam	b2v_inst_d9_1.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_1.FILE1 = "pwrmult_3lut0_d9_0_1.hex";
	defparam	b2v_inst_d9_1.FILE2 = "pwrmult_3lut1_d9_0_1.hex";
	defparam	b2v_inst_d9_1.FILE3 = "pwrmult_3lut2_d9_0_1.hex";
	defparam	b2v_inst_d9_1.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_1.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_inst_d9_2(
	.clk(clk),
	.OP_A_mult(Stg2_Dig2_),
	.OP_B_add(d9_0_1_),
	.result(d9_0_2_));
	defparam	b2v_inst_d9_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_2.FILE1 = "pwrmult_3lut0_d9_0_2.hex";
	defparam	b2v_inst_d9_2.FILE2 = "pwrmult_3lut1_d9_0_2.hex";
	defparam	b2v_inst_d9_2.FILE3 = "pwrmult_3lut2_d9_0_2.hex";
	defparam	b2v_inst_d9_2.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_2.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_inst_d9_3(
	.clk(clk),
	.OP_A_mult(Stg3_Dig3_),
	.OP_B_add(d9_0_2_),
	.result(d9_0_3_));
	defparam	b2v_inst_d9_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_3.FILE1 = "pwrmult_3lut0_d9_0_3.hex";
	defparam	b2v_inst_d9_3.FILE2 = "pwrmult_3lut1_d9_0_3.hex";
	defparam	b2v_inst_d9_3.FILE3 = "pwrmult_3lut2_d9_0_3.hex";
	defparam	b2v_inst_d9_3.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_3.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_inst_d9_4(
	.clk(clk),
	.OP_A_mult(Stg4_Dig4_),
	.OP_B_add(d9_0_3_),
	.result(d9_0_4_));
	defparam	b2v_inst_d9_4.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_4.FILE1 = "pwrmult_3lut0_d9_0_4.hex";
	defparam	b2v_inst_d9_4.FILE2 = "pwrmult_3lut1_d9_0_4.hex";
	defparam	b2v_inst_d9_4.FILE3 = "pwrmult_3lut2_d9_0_4.hex";
	defparam	b2v_inst_d9_4.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_4.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_inst_d9_5(
	.clk(clk),
	.OP_A_mult(Stg5_Dig5_),
	.OP_B_add(d9_0_4_),
	.result(d9_0_5_));
	defparam	b2v_inst_d9_5.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_5.FILE1 = "pwrmult_3lut0_d9_0_5.hex";
	defparam	b2v_inst_d9_5.FILE2 = "pwrmult_3lut1_d9_0_5.hex";
	defparam	b2v_inst_d9_5.FILE3 = "pwrmult_3lut2_d9_0_5.hex";
	defparam	b2v_inst_d9_5.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_5.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_inst_d9_6(
	.clk(clk),
	.OP_A_mult(Stg6_Dig6_),
	.OP_B_add(d9_0_5_),
	.result(d9_0_6_));
	defparam	b2v_inst_d9_6.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_6.FILE1 = "pwrmult_3lut0_d9_0_6.hex";
	defparam	b2v_inst_d9_6.FILE2 = "pwrmult_3lut1_d9_0_6.hex";
	defparam	b2v_inst_d9_6.FILE3 = "pwrmult_3lut2_d9_0_6.hex";
	defparam	b2v_inst_d9_6.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_6.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_inst_d9_7(
	.clk(clk),
	.OP_A_mult(Stg7_Dig7_),
	.OP_B_add(d9_0_6_),
	.result(d9_0_7_ALTERA_SYNTHESIZED));
	defparam	b2v_inst_d9_7.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_7.FILE1 = "pwrmult_3lut0_d9_0_7.hex";
	defparam	b2v_inst_d9_7.FILE2 = "pwrmult_3lut1_d9_0_7.hex";
	defparam	b2v_inst_d9_7.FILE3 = "pwrmult_3lut2_d9_0_7.hex";
	defparam	b2v_inst_d9_7.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_7.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_inst_d9_8(
	.clk(clk),
	.OP_A_mult(Stg8_Dig8_ALTERA_SYNTHESIZED),
	.OP_B_add(d9_0_7_ALTERA_SYNTHESIZED),
	.result(d9_0_8_));
	defparam	b2v_inst_d9_8.DATA_WIDTH = 18;
	defparam	b2v_inst_d9_8.FILE1 = "pwrmult_3lut0_d9_0_8.hex";
	defparam	b2v_inst_d9_8.FILE2 = "pwrmult_3lut1_d9_0_8.hex";
	defparam	b2v_inst_d9_8.FILE3 = "pwrmult_3lut2_d9_0_8.hex";
	defparam	b2v_inst_d9_8.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_inst_d9_8.MODULUS = 262103;

assign	Stg0_Dig0_ = Dig_in_0_;
assign	Stg0_Dig1_ALTERA_SYNTHESIZED = Dig_in_1_;
assign	Stg0_Dig2_ALTERA_SYNTHESIZED = Dig_in_2_;
assign	Stg0_Dig3_ALTERA_SYNTHESIZED = Dig_in_3_;
assign	Stg0_Dig4_ALTERA_SYNTHESIZED = Dig_in_4_;
assign	Stg0_Dig5_ALTERA_SYNTHESIZED = Dig_in_5_;
assign	Stg0_Dig6_ALTERA_SYNTHESIZED = Dig_in_6_;
assign	Stg0_Dig7_ALTERA_SYNTHESIZED = Dig_in_7_;
assign	d9_0_7_ = d9_0_7_ALTERA_SYNTHESIZED;
assign	Stg0_Dig8_ALTERA_SYNTHESIZED = Dig_in_8_;
assign	Stg0_Dig9_ALTERA_SYNTHESIZED = Dig_in_9_;
assign	Stg0_Dig1_ = Stg0_Dig1_ALTERA_SYNTHESIZED;
assign	Stg0_Dig2_ = Stg0_Dig2_ALTERA_SYNTHESIZED;
assign	Stg0_Dig3_ = Stg0_Dig3_ALTERA_SYNTHESIZED;
assign	Stg0_Dig4_ = Stg0_Dig4_ALTERA_SYNTHESIZED;
assign	Stg0_Dig5_ = Stg0_Dig5_ALTERA_SYNTHESIZED;
assign	Stg0_Dig6_ = Stg0_Dig6_ALTERA_SYNTHESIZED;
assign	Stg0_Dig7_ = Stg0_Dig7_ALTERA_SYNTHESIZED;
assign	Stg0_Dig8_ = Stg0_Dig8_ALTERA_SYNTHESIZED;
assign	Stg0_Dig9_ = Stg0_Dig9_ALTERA_SYNTHESIZED;
assign	Stg1_Dig2_ = Stg1_Dig2_ALTERA_SYNTHESIZED;
assign	Stg1_Dig3_ = Stg1_Dig3_ALTERA_SYNTHESIZED;
assign	Stg1_Dig4_ = Stg1_Dig4_ALTERA_SYNTHESIZED;
assign	Stg1_Dig5_ = Stg1_Dig5_ALTERA_SYNTHESIZED;
assign	Stg1_Dig6_ = Stg1_Dig6_ALTERA_SYNTHESIZED;
assign	Stg1_Dig7_ = Stg1_Dig7_ALTERA_SYNTHESIZED;
assign	Stg1_Dig8_ = Stg1_Dig8_ALTERA_SYNTHESIZED;
assign	Stg1_Dig9_ = Stg1_Dig9_ALTERA_SYNTHESIZED;
assign	Stg2_Dig3_ = Stg2_Dig3_ALTERA_SYNTHESIZED;
assign	Stg2_Dig4_ = Stg2_Dig4_ALTERA_SYNTHESIZED;
assign	Stg2_Dig5_ = Stg2_Dig5_ALTERA_SYNTHESIZED;
assign	Stg2_Dig6_ = Stg2_Dig6_ALTERA_SYNTHESIZED;
assign	Stg2_Dig7_ = Stg2_Dig7_ALTERA_SYNTHESIZED;
assign	Stg2_Dig8_ = Stg2_Dig8_ALTERA_SYNTHESIZED;
assign	Stg2_Dig9_ = Stg2_Dig9_ALTERA_SYNTHESIZED;
assign	Stg3_Dig4_ = Stg3_Dig4_ALTERA_SYNTHESIZED;
assign	Stg3_Dig5_ = Stg3_Dig5_ALTERA_SYNTHESIZED;
assign	Stg3_Dig6_ = Stg3_Dig6_ALTERA_SYNTHESIZED;
assign	Stg3_Dig7_ = Stg3_Dig7_ALTERA_SYNTHESIZED;
assign	Stg3_Dig8_ = Stg3_Dig8_ALTERA_SYNTHESIZED;
assign	Stg3_Dig9_ = Stg3_Dig9_ALTERA_SYNTHESIZED;
assign	Stg4_Dig5_ = Stg4_Dig5_ALTERA_SYNTHESIZED;
assign	Stg4_Dig6_ = Stg4_Dig6_ALTERA_SYNTHESIZED;
assign	Stg4_Dig7_ = Stg4_Dig7_ALTERA_SYNTHESIZED;
assign	Stg4_Dig8_ = Stg4_Dig8_ALTERA_SYNTHESIZED;
assign	Stg4_Dig9_ = Stg4_Dig9_ALTERA_SYNTHESIZED;
assign	Stg5_Dig6_ = Stg5_Dig6_ALTERA_SYNTHESIZED;
assign	Stg5_Dig7_ = Stg5_Dig7_ALTERA_SYNTHESIZED;
assign	Stg5_Dig8_ = Stg5_Dig8_ALTERA_SYNTHESIZED;
assign	Stg5_Dig9_ = Stg5_Dig9_ALTERA_SYNTHESIZED;
assign	Stg6_Dig7_ = Stg6_Dig7_ALTERA_SYNTHESIZED;
assign	Stg6_Dig8_ = Stg6_Dig8_ALTERA_SYNTHESIZED;
assign	Stg6_Dig9_ = Stg6_Dig9_ALTERA_SYNTHESIZED;
assign	Stg7_Dig8_ = Stg7_Dig8_ALTERA_SYNTHESIZED;
assign	Stg7_Dig9_ = Stg7_Dig9_ALTERA_SYNTHESIZED;
assign	Stg8_Dig8_ = Stg8_Dig8_ALTERA_SYNTHESIZED;
assign	Stg8_Dig9_ = Stg8_Dig9_ALTERA_SYNTHESIZED;

endmodule
