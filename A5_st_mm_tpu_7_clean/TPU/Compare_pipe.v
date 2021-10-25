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
