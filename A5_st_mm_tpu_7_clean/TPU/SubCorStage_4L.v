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
// CREATED		"Fri Aug 09 21:43:17 2019"

module SubCorStage_4L(
	clk,
	Dig_in_0_,
	Dig_in_1_,
	Dig_in_2_,
	Dig_in_3_,
	Dig_in_4_,
	Dig_in_5_,
	Dig_in_6_,
	Dig_in_7_,
	sign_in,
	result_0_,
	result_1_,
	result_2_,
	result_3_,
	result_4_,
	result_5_,
	result_6_,
	result_7_
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
input wire	[1:0] sign_in;
output wire	[17:0] result_0_;
output wire	[17:0] result_1_;
output wire	[17:0] result_2_;
output wire	[17:0] result_3_;
output wire	[17:0] result_4_;
output wire	[17:0] result_5_;
output wire	[17:0] result_6_;
output wire	[17:0] result_7_;






SubCor_4L	b2v_inst1(
	.clk(clk),
	.Digit_in_(Dig_in_0_),
	.sign_in(sign_in),
	.result(result_0_));
	defparam	b2v_inst1.DATA_WIDTH = 18;
	defparam	b2v_inst1.DIGIT_CORRECT = 47175;
	defparam	b2v_inst1.MODULUS = 65536;


SubCor_4L	b2v_inst2(
	.clk(clk),
	.Digit_in_(Dig_in_1_),
	.sign_in(sign_in),
	.result(result_1_));
	defparam	b2v_inst2.DATA_WIDTH = 18;
	defparam	b2v_inst2.DIGIT_CORRECT = 66586;
	defparam	b2v_inst2.MODULUS = 78125;


SubCor_4L	b2v_inst3(
	.clk(clk),
	.Digit_in_(Dig_in_2_),
	.sign_in(sign_in),
	.result(result_2_));
	defparam	b2v_inst3.DATA_WIDTH = 18;
	defparam	b2v_inst3.DIGIT_CORRECT = 0;
	defparam	b2v_inst3.MODULUS = 117649;


SubCor_4L	b2v_inst4(
	.clk(clk),
	.Digit_in_(Dig_in_3_),
	.sign_in(sign_in),
	.result(result_3_));
	defparam	b2v_inst4.DATA_WIDTH = 18;
	defparam	b2v_inst4.DIGIT_CORRECT = 0;
	defparam	b2v_inst4.MODULUS = 177147;


SubCor_4L	b2v_inst5(
	.clk(clk),
	.Digit_in_(Dig_in_4_),
	.sign_in(sign_in),
	.result(result_4_));
	defparam	b2v_inst5.DATA_WIDTH = 18;
	defparam	b2v_inst5.DIGIT_CORRECT = 0;
	defparam	b2v_inst5.MODULUS = 262027;


SubCor_4L	b2v_inst6(
	.clk(clk),
	.Digit_in_(Dig_in_5_),
	.sign_in(sign_in),
	.result(result_5_));
	defparam	b2v_inst6.DATA_WIDTH = 18;
	defparam	b2v_inst6.DIGIT_CORRECT = 0;
	defparam	b2v_inst6.MODULUS = 262049;


SubCor_4L	b2v_inst7(
	.clk(clk),
	.Digit_in_(Dig_in_6_),
	.sign_in(sign_in),
	.result(result_6_));
	defparam	b2v_inst7.DATA_WIDTH = 18;
	defparam	b2v_inst7.DIGIT_CORRECT = 0;
	defparam	b2v_inst7.MODULUS = 262051;


SubCor_4L	b2v_inst8(
	.clk(clk),
	.Digit_in_(Dig_in_7_),
	.sign_in(sign_in),
	.result(result_7_));
	defparam	b2v_inst8.DATA_WIDTH = 18;
	defparam	b2v_inst8.DIGIT_CORRECT = 0;
	defparam	b2v_inst8.MODULUS = 262069;


endmodule
