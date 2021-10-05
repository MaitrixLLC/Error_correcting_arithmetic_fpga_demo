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
