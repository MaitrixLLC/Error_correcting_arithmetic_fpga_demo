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
// CREATED		"Fri Aug 09 20:59:33 2019"

module Recomp_pipe_mlab_x2(
	clk,
	cin,
	mr_dig_2_,
	mr_dig_3_,
	mr_dig_4_,
	mr_dig_5_,
	mr_dig_6_,
	mr_dig_7_,
	norm_dig_0_,
	norm_dig_1_
);


input wire	clk;
input wire	cin;
input wire	[17:0] mr_dig_2_;
input wire	[17:0] mr_dig_3_;
input wire	[17:0] mr_dig_4_;
input wire	[17:0] mr_dig_5_;
input wire	[17:0] mr_dig_6_;
input wire	[17:0] mr_dig_7_;
output wire	[17:0] norm_dig_0_;
output wire	[17:0] norm_dig_1_;

wire	[17:0] carry_in;
wire	[17:0] d0_2_2_;
wire	[17:0] d0_2_3_;
wire	[17:0] d0_2_4_;
wire	[17:0] d0_2_5_;
wire	[17:0] d0_2_6_;
wire	[17:0] d0_2_7_;
wire	[17:0] d1_2_2_;
wire	[17:0] d1_2_3_;
wire	[17:0] d1_2_4_;
wire	[17:0] d1_2_5_;
wire	[17:0] d1_2_6_;
wire	[17:0] d1_2_7_;
wire	[17:0] mr_dig2_;
wire	[17:0] mr_dig3_;
wire	[17:0] mr_dig4_;
wire	[17:0] mr_dig5_;
wire	[17:0] mr_dig6_;
wire	[17:0] mr_dig7_;






ModMultAdd_8L_v2	b2v_inst_d0_2(
	.clk(clk),
	.OP_A_mult(mr_dig2_),
	.OP_B_add(carry_in),
	.result(d0_2_2_));
	defparam	b2v_inst_d0_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_2.FILE1 = "pwrmult_3lut0_d0_2_2.hex";
	defparam	b2v_inst_d0_2.FILE2 = "pwrmult_3lut1_d0_2_2.hex";
	defparam	b2v_inst_d0_2.FILE3 = "pwrmult_3lut2_d0_2_2.hex";
	defparam	b2v_inst_d0_2.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_2.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_3(
	.clk(clk),
	.OP_A_mult(mr_dig3_),
	.OP_B_add(d0_2_2_),
	.result(d0_2_3_));
	defparam	b2v_inst_d0_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_3.FILE1 = "pwrmult_3lut0_d0_2_3.hex";
	defparam	b2v_inst_d0_3.FILE2 = "pwrmult_3lut1_d0_2_3.hex";
	defparam	b2v_inst_d0_3.FILE3 = "pwrmult_3lut2_d0_2_3.hex";
	defparam	b2v_inst_d0_3.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_3.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_4(
	.clk(clk),
	.OP_A_mult(mr_dig4_),
	.OP_B_add(d0_2_3_),
	.result(d0_2_4_));
	defparam	b2v_inst_d0_4.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_4.FILE1 = "pwrmult_3lut0_d0_2_4.hex";
	defparam	b2v_inst_d0_4.FILE2 = "pwrmult_3lut1_d0_2_4.hex";
	defparam	b2v_inst_d0_4.FILE3 = "pwrmult_3lut2_d0_2_4.hex";
	defparam	b2v_inst_d0_4.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_4.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_5(
	.clk(clk),
	.OP_A_mult(mr_dig5_),
	.OP_B_add(d0_2_4_),
	.result(d0_2_5_));
	defparam	b2v_inst_d0_5.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_5.FILE1 = "pwrmult_3lut0_d0_2_5.hex";
	defparam	b2v_inst_d0_5.FILE2 = "pwrmult_3lut1_d0_2_5.hex";
	defparam	b2v_inst_d0_5.FILE3 = "pwrmult_3lut2_d0_2_5.hex";
	defparam	b2v_inst_d0_5.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_5.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_6(
	.clk(clk),
	.OP_A_mult(mr_dig6_),
	.OP_B_add(d0_2_5_),
	.result(d0_2_6_));
	defparam	b2v_inst_d0_6.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_6.FILE1 = "pwrmult_3lut0_d0_2_6.hex";
	defparam	b2v_inst_d0_6.FILE2 = "pwrmult_3lut1_d0_2_6.hex";
	defparam	b2v_inst_d0_6.FILE3 = "pwrmult_3lut2_d0_2_6.hex";
	defparam	b2v_inst_d0_6.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_6.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d0_7(
	.clk(clk),
	.OP_A_mult(mr_dig7_),
	.OP_B_add(d0_2_6_),
	.result(d0_2_7_));
	defparam	b2v_inst_d0_7.DATA_WIDTH = 18;
	defparam	b2v_inst_d0_7.FILE1 = "pwrmult_3lut0_d0_2_7.hex";
	defparam	b2v_inst_d0_7.FILE2 = "pwrmult_3lut1_d0_2_7.hex";
	defparam	b2v_inst_d0_7.FILE3 = "pwrmult_3lut2_d0_2_7.hex";
	defparam	b2v_inst_d0_7.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_inst_d0_7.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_inst_d1_2(
	.clk(clk),
	.OP_A_mult(mr_dig2_),
	.OP_B_add(carry_in),
	.result(d1_2_2_));
	defparam	b2v_inst_d1_2.DATA_WIDTH = 18;
	defparam	b2v_inst_d1_2.FILE1 = "pwrmult_3lut0_d1_2_2.hex";
	defparam	b2v_inst_d1_2.FILE2 = "pwrmult_3lut1_d1_2_2.hex";
	defparam	b2v_inst_d1_2.FILE3 = "pwrmult_3lut2_d1_2_2.hex";
	defparam	b2v_inst_d1_2.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst_d1_2.MODULUS = 78125;


ModMultAdd_8L_v2	b2v_inst_d1_3(
	.clk(clk),
	.OP_A_mult(mr_dig3_),
	.OP_B_add(d1_2_2_),
	.result(d1_2_3_));
	defparam	b2v_inst_d1_3.DATA_WIDTH = 18;
	defparam	b2v_inst_d1_3.FILE1 = "pwrmult_3lut0_d1_2_3.hex";
	defparam	b2v_inst_d1_3.FILE2 = "pwrmult_3lut1_d1_2_3.hex";
	defparam	b2v_inst_d1_3.FILE3 = "pwrmult_3lut2_d1_2_3.hex";
	defparam	b2v_inst_d1_3.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst_d1_3.MODULUS = 78125;


ModMultAdd_8L_v2	b2v_inst_d1_4(
	.clk(clk),
	.OP_A_mult(mr_dig4_),
	.OP_B_add(d1_2_3_),
	.result(d1_2_4_));
	defparam	b2v_inst_d1_4.DATA_WIDTH = 18;
	defparam	b2v_inst_d1_4.FILE1 = "pwrmult_3lut0_d1_2_4.hex";
	defparam	b2v_inst_d1_4.FILE2 = "pwrmult_3lut1_d1_2_4.hex";
	defparam	b2v_inst_d1_4.FILE3 = "pwrmult_3lut2_d1_2_4.hex";
	defparam	b2v_inst_d1_4.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst_d1_4.MODULUS = 78125;


ModMultAdd_8L_v2	b2v_inst_d1_5(
	.clk(clk),
	.OP_A_mult(mr_dig5_),
	.OP_B_add(d1_2_4_),
	.result(d1_2_5_));
	defparam	b2v_inst_d1_5.DATA_WIDTH = 18;
	defparam	b2v_inst_d1_5.FILE1 = "pwrmult_3lut0_d1_2_5.hex";
	defparam	b2v_inst_d1_5.FILE2 = "pwrmult_3lut1_d1_2_5.hex";
	defparam	b2v_inst_d1_5.FILE3 = "pwrmult_3lut2_d1_2_5.hex";
	defparam	b2v_inst_d1_5.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst_d1_5.MODULUS = 78125;


ModMultAdd_8L_v2	b2v_inst_d1_6(
	.clk(clk),
	.OP_A_mult(mr_dig6_),
	.OP_B_add(d1_2_5_),
	.result(d1_2_6_));
	defparam	b2v_inst_d1_6.DATA_WIDTH = 18;
	defparam	b2v_inst_d1_6.FILE1 = "pwrmult_3lut0_d1_2_6.hex";
	defparam	b2v_inst_d1_6.FILE2 = "pwrmult_3lut1_d1_2_6.hex";
	defparam	b2v_inst_d1_6.FILE3 = "pwrmult_3lut2_d1_2_6.hex";
	defparam	b2v_inst_d1_6.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst_d1_6.MODULUS = 78125;


ModMultAdd_8L_v2	b2v_inst_d1_7(
	.clk(clk),
	.OP_A_mult(mr_dig7_),
	.OP_B_add(d1_2_6_),
	.result(d1_2_7_));
	defparam	b2v_inst_d1_7.DATA_WIDTH = 18;
	defparam	b2v_inst_d1_7.FILE1 = "pwrmult_3lut0_d1_2_7.hex";
	defparam	b2v_inst_d1_7.FILE2 = "pwrmult_3lut1_d1_2_7.hex";
	defparam	b2v_inst_d1_7.FILE3 = "pwrmult_3lut2_d1_2_7.hex";
	defparam	b2v_inst_d1_7.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_inst_d1_7.MODULUS = 78125;

assign	norm_dig_0_ = d0_2_7_;
assign	mr_dig7_ = mr_dig_7_;
assign	mr_dig6_ = mr_dig_6_;
assign	mr_dig5_ = mr_dig_5_;
assign	mr_dig4_ = mr_dig_4_;
assign	mr_dig3_ = mr_dig_3_;
assign	mr_dig2_ = mr_dig_2_;
assign	norm_dig_1_ = d1_2_7_;
assign	carry_in[0] = cin;
assign	carry_in[17:1] = 17'b00000000000000000;

endmodule
