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
