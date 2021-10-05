// Copyright (C) 2017  Intel Corporation. All rights reserved.
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
// VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Standard Edition"
// CREATED		"Tue Mar 13 12:35:09 2018"

// modified for parameterization, E. Olsen

module ModCompare_9L_mlab #(parameter	DATA_WIDTH = 18, parameter	MCONSTANT = 0)
(
	clk,
	in_A_0_,
	sign_in,
	cout_stage3,
	sign_result
);

//parameter	DATA_WIDTH = 18;
//parameter	MCONSTANT = 0;

input wire	clk;
input wire	[DATA_WIDTH-1:0] in_A_0_;
input wire	[1:0] sign_in;
output wire	cout_stage3;
output wire	[1:0] sign_result;

wire	[1:0] prior_result;
wire	[1:0] reg10_;
wire	[1:0] reg11_;
wire	[1:0] reg1_;
wire	[DATA_WIDTH-1:0] reg2_;
wire	[1:0] reg5_;
wire	[1:0] reg6_;
wire	[1:0] reg7_;
wire	[1:0] reg8_;
wire	[1:0] reg9_;
wire	[1:0] sign_comp;




assign	cout_stage3 = reg5_[1] | reg5_[0];


register	b2v_reg1(
	.clk(clk),
	.reg_in(sign_in),
	.reg_out(reg1_));
	defparam	b2v_reg1.DATA_WIDTH = 2;


register	b2v_reg10(
	.clk(clk),
	.reg_in(reg9_),
	.reg_out(reg10_));
	defparam	b2v_reg10.DATA_WIDTH = 2;


register	b2v_reg11(
	.clk(clk),
	.reg_in(reg10_),
	.reg_out(reg11_));
	defparam	b2v_reg11.DATA_WIDTH = 2;


register	b2v_reg2(
	.clk(clk),
	.reg_in(in_A_0_),
	.reg_out(reg2_));
	defparam	b2v_reg2.DATA_WIDTH = DATA_WIDTH;


register	b2v_reg3a(
	.clk(clk),
	.reg_in(reg1_),
	.reg_out(prior_result));
	defparam	b2v_reg3a.DATA_WIDTH = 2;


compare_1L	b2v_reg4(
	.clk(clk),
	.A(reg2_),
	.sign_result(sign_comp));
	defparam	b2v_reg4.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_reg4.MCONSTANT = MCONSTANT;


compare_logic	b2v_reg5(
	.clk(clk),
	.new_sign(sign_comp),
	.prior_sign(prior_result),
	.result(reg5_));


register	b2v_reg6(
	.clk(clk),
	.reg_in(reg5_),
	.reg_out(reg6_));
	defparam	b2v_reg6.DATA_WIDTH = 2;


register	b2v_reg7(
	.clk(clk),
	.reg_in(reg6_),
	.reg_out(reg7_));
	defparam	b2v_reg7.DATA_WIDTH = 2;


register	b2v_reg8(
	.clk(clk),
	.reg_in(reg7_),
	.reg_out(reg8_));
	defparam	b2v_reg8.DATA_WIDTH = 2;


register	b2v_reg9(
	.clk(clk),
	.reg_in(reg8_),
	.reg_out(reg9_));
	defparam	b2v_reg9.DATA_WIDTH = 2;

assign	sign_result = reg11_;

endmodule
