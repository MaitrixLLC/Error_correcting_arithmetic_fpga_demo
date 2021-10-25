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
// CREATED		"Tue May 14 23:03:03 2019"

module MRC_pipe_mlab_ec_skp7(
	clk,
	d7_0_6_in,
	Dig_in_8_,
	Dig_in_9_,
	Sgn_in,
	d7_0_8_,
	Sgn_out_8_A,
	Sgn_out_8_B,
	Sgn_out_9_A,
	Sgn_out_9_B
);


input wire	clk;
input wire	[17:0] d7_0_6_in;
input wire	[17:0] Dig_in_8_;
input wire	[17:0] Dig_in_9_;
input wire	[1:0] Sgn_in;
output wire	[17:0] d7_0_8_;
output wire	[1:0] Sgn_out_8_A;
output wire	[1:0] Sgn_out_8_B;
output wire	[1:0] Sgn_out_9_A;
output wire	[1:0] Sgn_out_9_B;

wire	[17:0] d7_0_6_;
wire	[17:0] d7_0_7_;
wire	[17:0] Stg8_Dig8_;
wire	[17:0] Stg8_Dig9_;
wire	[17:0] Stg9_Dig9_;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;

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


ModDualCmp_9L_2in	b2v_inst9(
	.clk(clk),
	.in_A_0_(Stg8_Dig8_),
	.sign_in_A(Sgn_in),
	.sign_in_B(Sgn_in),
	
	
	.sign_result_A(SYNTHESIZED_WIRE_0),
	.sign_result_B(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst9.DATA_WIDTH = 18;
	defparam	b2v_inst9.NEG_DIGIT = 131044;
	defparam	b2v_inst9.POS_DIGIT = 131034;


ModMultAdd_8L_v2	b2v_inst_d6_7(
	.clk(clk),
	.OP_A_mult(Stg8_Dig8_),
	.OP_B_add(d7_0_6_),
	.result(d7_0_7_));
	defparam	b2v_inst_d6_7.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_7.FILE1 = "pwrmult_3lut0_d7_0_7.hex";
	defparam	b2v_inst_d6_7.FILE2 = "pwrmult_3lut1_d7_0_7.hex";
	defparam	b2v_inst_d6_7.FILE3 = "pwrmult_3lut2_d7_0_7.hex";
	defparam	b2v_inst_d6_7.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d6_7.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_inst_d6_8(
	.clk(clk),
	.OP_A_mult(Stg9_Dig9_),
	.OP_B_add(d7_0_7_),
	.result(d7_0_8_));
	defparam	b2v_inst_d6_8.DATA_WIDTH = 18;
	defparam	b2v_inst_d6_8.FILE1 = "pwrmult_3lut0_d7_0_8.hex";
	defparam	b2v_inst_d6_8.FILE2 = "pwrmult_3lut1_d7_0_8.hex";
	defparam	b2v_inst_d6_8.FILE3 = "pwrmult_3lut2_d7_0_8.hex";
	defparam	b2v_inst_d6_8.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_inst_d6_8.MODULUS = 262069;

assign	Stg8_Dig9_ = Dig_in_9_;
assign	Stg8_Dig8_ = Dig_in_8_;
assign	d7_0_6_ = d7_0_6_in;

endmodule
