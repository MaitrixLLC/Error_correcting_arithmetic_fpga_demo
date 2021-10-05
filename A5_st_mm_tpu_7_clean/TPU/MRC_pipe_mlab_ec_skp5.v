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
// CREATED		"Fri May 17 18:21:27 2019"

module MRC_pipe_mlab_ec_skp5(
	clk,
	d5_0_4_in,
	Dig_in_6_,
	Dig_in_7_,
	Dig_in_8_,
	Dig_in_9_,
	Sgn_in,
	d5_0_8_,
	Sgn_out_6_,
	Sgn_out_7_,
	Sgn_out_8_A,
	Sgn_out_8_B,
	Sgn_out_9_A,
	Sgn_out_9_B
);


input wire	clk;
input wire	[17:0] d5_0_4_in;
input wire	[17:0] Dig_in_6_;
input wire	[17:0] Dig_in_7_;
input wire	[17:0] Dig_in_8_;
input wire	[17:0] Dig_in_9_;
input wire	[1:0] Sgn_in;
output wire	[17:0] d5_0_8_;
output wire	[1:0] Sgn_out_6_;
output wire	[1:0] Sgn_out_7_;
output wire	[1:0] Sgn_out_8_A;
output wire	[1:0] Sgn_out_8_B;
output wire	[1:0] Sgn_out_9_A;
output wire	[1:0] Sgn_out_9_B;

wire	[17:0] d5_0_4_;
wire	[17:0] d5_0_5_;
wire	[17:0] d5_0_6_;
wire	[17:0] d5_0_7_;
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
wire	[1:0] SYNTHESIZED_WIRE_5;

assign	Sgn_out_6_ = SYNTHESIZED_WIRE_2;
assign	Sgn_out_7_ = SYNTHESIZED_WIRE_5;
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


ModCompare_9L_mlab	b2v_inst7(
	.clk(clk),
	.in_A_0_(Stg6_Dig6_),
	.sign_in(Sgn_in),
	
	.sign_result(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst7.DATA_WIDTH = 18;
	defparam	b2v_inst7.MCONSTANT = 131025;


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
	.sign_in(SYNTHESIZED_WIRE_2),
	
	.sign_result(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst8.DATA_WIDTH = 18;
	defparam	b2v_inst8.MCONSTANT = 131034;


ModDualCmp_9L_2in	b2v_inst9(
	.clk(clk),
	.in_A_0_(Stg8_Dig8_),
	.sign_in_A(SYNTHESIZED_WIRE_5),
	.sign_in_B(SYNTHESIZED_WIRE_5),
	
	
	.sign_result_A(SYNTHESIZED_WIRE_0),
	.sign_result_B(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst9.DATA_WIDTH = 18;
	defparam	b2v_inst9.NEG_DIGIT = 131054;
	defparam	b2v_inst9.POS_DIGIT = 131024;


ModMultAdd_8L_v2	b2v_inst_d5_5(
	.clk(clk),
	.OP_A_mult(Stg6_Dig6_),
	.OP_B_add(d5_0_4_),
	.result(d5_0_5_));
	defparam	b2v_inst_d5_5.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_5.FILE1 = "pwrmult_3lut0_d5_0_5.hex";
	defparam	b2v_inst_d5_5.FILE2 = "pwrmult_3lut1_d5_0_5.hex";
	defparam	b2v_inst_d5_5.FILE3 = "pwrmult_3lut2_d5_0_5.hex";
	defparam	b2v_inst_d5_5.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_5.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_inst_d5_6(
	.clk(clk),
	.OP_A_mult(Stg7_Dig7_),
	.OP_B_add(d5_0_5_),
	.result(d5_0_6_));
	defparam	b2v_inst_d5_6.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_6.FILE1 = "pwrmult_3lut0_d5_0_6.hex";
	defparam	b2v_inst_d5_6.FILE2 = "pwrmult_3lut1_d5_0_6.hex";
	defparam	b2v_inst_d5_6.FILE3 = "pwrmult_3lut2_d5_0_6.hex";
	defparam	b2v_inst_d5_6.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_6.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_inst_d5_7(
	.clk(clk),
	.OP_A_mult(Stg8_Dig8_),
	.OP_B_add(d5_0_6_),
	.result(d5_0_7_));
	defparam	b2v_inst_d5_7.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_7.FILE1 = "pwrmult_3lut0_d5_0_7.hex";
	defparam	b2v_inst_d5_7.FILE2 = "pwrmult_3lut1_d5_0_7.hex";
	defparam	b2v_inst_d5_7.FILE3 = "pwrmult_3lut2_d5_0_7.hex";
	defparam	b2v_inst_d5_7.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_7.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_inst_d5_8(
	.clk(clk),
	.OP_A_mult(Stg9_Dig9_),
	.OP_B_add(d5_0_7_),
	.result(d5_0_8_));
	defparam	b2v_inst_d5_8.DATA_WIDTH = 18;
	defparam	b2v_inst_d5_8.FILE1 = "pwrmult_3lut0_d5_0_8.hex";
	defparam	b2v_inst_d5_8.FILE2 = "pwrmult_3lut1_d5_0_8.hex";
	defparam	b2v_inst_d5_8.FILE3 = "pwrmult_3lut2_d5_0_8.hex";
	defparam	b2v_inst_d5_8.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_inst_d5_8.MODULUS = 262049;

assign	Stg6_Dig9_ = Dig_in_9_;
assign	Stg6_Dig6_ = Dig_in_6_;
assign	Stg6_Dig7_ = Dig_in_7_;
assign	Stg6_Dig8_ = Dig_in_8_;
assign	d5_0_4_ = d5_0_4_in;

endmodule