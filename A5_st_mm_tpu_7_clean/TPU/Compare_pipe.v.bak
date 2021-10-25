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
// CREATED		"Fri Aug 09 18:48:10 2019"

module Compare_pipe(
	clk,
	mr_dig_0_,
	mr_dig_1_,
	mr_dig_2_,
	mr_dig_3_,
	mr_dig_4_,
	mr_dig_5_,
	mr_dig_6_,
	mr_dig_7_,
	cout,
	sign_out
);


input wire	clk;
input wire	[17:0] mr_dig_0_;
input wire	[17:0] mr_dig_1_;
input wire	[17:0] mr_dig_2_;
input wire	[17:0] mr_dig_3_;
input wire	[17:0] mr_dig_4_;
input wire	[17:0] mr_dig_5_;
input wire	[17:0] mr_dig_6_;
input wire	[17:0] mr_dig_7_;
output wire	cout;
output wire	[1:0] sign_out;

wire	[1:0] comp_1_;
wire	[1:0] comp_2_;
wire	[1:0] comp_3_;
wire	[1:0] comp_4_;
wire	[1:0] comp_5_;
wire	[1:0] comp_6_;
wire	[1:0] comp_7_;
wire	[1:0] comp_8_;
wire	[1:0] SYNTHESIZED_WIRE_0;




assign	cout = comp_2_[1] | comp_2_[0];


ModCompare_9L_mlab	b2v_inst1(
	.clk(clk),
	.in_A_0_(mr_dig_0_),
	.sign_in(SYNTHESIZED_WIRE_0),
	
	.sign_result(comp_1_));
	defparam	b2v_inst1.DATA_WIDTH = 18;
	defparam	b2v_inst1.MCONSTANT = 32768;


ModCompare_9L_mlab	b2v_inst2(
	.clk(clk),
	.in_A_0_(mr_dig_1_),
	.sign_in(comp_1_),
	
	.sign_result(comp_2_));
	defparam	b2v_inst2.DATA_WIDTH = 18;
	defparam	b2v_inst2.MCONSTANT = 39062;


ModCompare_9L_mlab	b2v_inst3(
	.clk(clk),
	.in_A_0_(mr_dig_2_),
	.sign_in(comp_2_),
	
	.sign_result(comp_3_));
	defparam	b2v_inst3.DATA_WIDTH = 18;
	defparam	b2v_inst3.MCONSTANT = 58824;


ModCompare_9L_mlab	b2v_inst4(
	.clk(clk),
	.in_A_0_(mr_dig_3_),
	.sign_in(comp_3_),
	
	.sign_result(comp_4_));
	defparam	b2v_inst4.DATA_WIDTH = 18;
	defparam	b2v_inst4.MCONSTANT = 88573;


ModCompare_9L_mlab	b2v_inst5(
	.clk(clk),
	.in_A_0_(mr_dig_4_),
	.sign_in(comp_4_),
	
	.sign_result(comp_5_));
	defparam	b2v_inst5.DATA_WIDTH = 18;
	defparam	b2v_inst5.MCONSTANT = 131013;


ModCompare_9L_mlab	b2v_inst6(
	.clk(clk),
	.in_A_0_(mr_dig_5_),
	.sign_in(comp_5_),
	
	.sign_result(comp_6_));
	defparam	b2v_inst6.DATA_WIDTH = 18;
	defparam	b2v_inst6.MCONSTANT = 131024;


ModCompare_9L_mlab	b2v_inst7(
	.clk(clk),
	.in_A_0_(mr_dig_6_),
	.sign_in(comp_6_),
	
	.sign_result(comp_7_));
	defparam	b2v_inst7.DATA_WIDTH = 18;
	defparam	b2v_inst7.MCONSTANT = 131025;


ModCompare_9L_mlab	b2v_inst8(
	.clk(clk),
	.in_A_0_(mr_dig_7_),
	.sign_in(comp_7_),
	
	.sign_result(comp_8_));
	defparam	b2v_inst8.DATA_WIDTH = 18;
	defparam	b2v_inst8.MCONSTANT = 131034;


fixed_val	b2v_inst_const1(
	.value(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst_const1.DATA_WIDTH = 2;
	defparam	b2v_inst_const1.MCONSTANT = 1;

assign	sign_out = comp_8_;

endmodule
