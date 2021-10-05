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
// CREATED		"Wed Apr 24 06:29:03 2019"


//  NOTE: RECOMPILING THIS MODULE WILL DELETE THE CUSTOM PARAMTERIZATION !!!!

module ModDualCmp_9L_mlab  #(parameter	DATA_WIDTH = 18, parameter NEG_DIGIT = 0, parameter POS_DIGIT = 0)
(
	clk,
	in_A_0_,
	sign_in,
	neg_cout_stage4,
	pos_cout_stage3,
	sign_result
);

//parameter	DATA_WIDTH = 18;
//parameter	NEG_DIGIT = 0;
//parameter	POS_DIGIT = 0;

input wire	clk;
input wire	[DATA_WIDTH-1:0] in_A_0_;
input wire	[3:0] sign_in;
output wire	neg_cout_stage4;
output wire	pos_cout_stage3;
output wire	[3:0] sign_result;

wire	[1:0] neg_sign_comp;
wire	[1:0] pos_sign_comp;
wire	[1:0] prior_neg_result;
wire	[1:0] prior_pos_result;
wire	[1:0] reg10_;
wire	[1:0] reg11_;
wire	[1:0] reg12_;
wire	[1:0] reg13_;
wire	[1:0] reg14_;
wire	[1:0] reg15_;
wire	[1:0] reg16_;
wire	[1:0] reg1_;
wire	[DATA_WIDTH-1:0] reg2_;
wire	[1:0] reg3_;
wire	[DATA_WIDTH-1:0] reg4_;
wire	[1:0] reg5_;
wire	[1:0] reg6_;
wire	[1:0] reg7_;
wire	[1:0] reg8_;
wire	[1:0] reg9_;
wire	[3:0] sign_result_ALTERA_SYNTHESIZED;




assign	pos_cout_stage3 = reg5_[1] | reg5_[0];

assign	neg_cout_stage4 = reg6_[1] | reg6_[0];


register	b2v_reg10a(
	.clk(clk),
	.reg_in(reg13_),
	.reg_out(reg15_));
	defparam	b2v_reg10a.DATA_WIDTH = 2;


register	b2v_reg10b(
	.clk(clk),
	.reg_in(reg14_),
	.reg_out(reg16_));
	defparam	b2v_reg10b.DATA_WIDTH = 2;


register	b2v_reg11a(
	.clk(clk),
	.reg_in(reg15_),
	.reg_out(sign_result_ALTERA_SYNTHESIZED[1:0]));
	defparam	b2v_reg11a.DATA_WIDTH = 2;


register	b2v_reg11b(
	.clk(clk),
	.reg_in(reg16_),
	.reg_out(sign_result_ALTERA_SYNTHESIZED[3:2]));
	defparam	b2v_reg11b.DATA_WIDTH = 2;


register	b2v_reg1a(
	.clk(clk),
	.reg_in(sign_in[1:0]),
	.reg_out(reg1_));
	defparam	b2v_reg1a.DATA_WIDTH = 2;


register	b2v_reg1b(
	.clk(clk),
	.reg_in(sign_in[3:2]),
	.reg_out(reg3_));
	defparam	b2v_reg1b.DATA_WIDTH = 2;


register	b2v_reg2a(
	.clk(clk),
	.reg_in(in_A_0_),
	.reg_out(reg2_));
	defparam	b2v_reg2a.DATA_WIDTH = DATA_WIDTH;


register	b2v_reg2b(
	.clk(clk),
	.reg_in(in_A_0_),
	.reg_out(reg4_));
	defparam	b2v_reg2b.DATA_WIDTH = DATA_WIDTH;


register	b2v_reg3a(
	.clk(clk),
	.reg_in(reg1_),
	.reg_out(prior_pos_result));
	defparam	b2v_reg3a.DATA_WIDTH = 2;


register	b2v_reg3b(
	.clk(clk),
	.reg_in(reg3_),
	.reg_out(prior_neg_result));
	defparam	b2v_reg3b.DATA_WIDTH = 2;


compare_1L	b2v_reg4a(
	.clk(clk),
	.A(reg2_),
	.sign_result(pos_sign_comp));
	defparam	b2v_reg4a.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_reg4a.MCONSTANT = POS_DIGIT;


compare_1L	b2v_reg4b(
	.clk(clk),
	.A(reg4_),
	.sign_result(neg_sign_comp));
	defparam	b2v_reg4b.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_reg4b.MCONSTANT = NEG_DIGIT;


compare_logic	b2v_reg5a(
	.clk(clk),
	.new_sign(pos_sign_comp),
	.prior_sign(prior_pos_result),
	.result(reg5_));


compare_logic	b2v_reg5b(
	.clk(clk),
	.new_sign(neg_sign_comp),
	.prior_sign(prior_neg_result),
	.result(reg6_));


register	b2v_reg6a(
	.clk(clk),
	.reg_in(reg5_),
	.reg_out(reg7_));
	defparam	b2v_reg6a.DATA_WIDTH = 2;


register	b2v_reg6b(
	.clk(clk),
	.reg_in(reg6_),
	.reg_out(reg8_));
	defparam	b2v_reg6b.DATA_WIDTH = 2;


register	b2v_reg7a(
	.clk(clk),
	.reg_in(reg7_),
	.reg_out(reg9_));
	defparam	b2v_reg7a.DATA_WIDTH = 2;


register	b2v_reg7b(
	.clk(clk),
	.reg_in(reg8_),
	.reg_out(reg10_));
	defparam	b2v_reg7b.DATA_WIDTH = 2;


register	b2v_reg8a(
	.clk(clk),
	.reg_in(reg9_),
	.reg_out(reg11_));
	defparam	b2v_reg8a.DATA_WIDTH = 2;


register	b2v_reg8b(
	.clk(clk),
	.reg_in(reg10_),
	.reg_out(reg12_));
	defparam	b2v_reg8b.DATA_WIDTH = 2;


register	b2v_reg9a(
	.clk(clk),
	.reg_in(reg11_),
	.reg_out(reg13_));
	defparam	b2v_reg9a.DATA_WIDTH = 2;


register	b2v_reg9b(
	.clk(clk),
	.reg_in(reg12_),
	.reg_out(reg14_));
	defparam	b2v_reg9b.DATA_WIDTH = 2;

assign	sign_result = sign_result_ALTERA_SYNTHESIZED;

endmodule
