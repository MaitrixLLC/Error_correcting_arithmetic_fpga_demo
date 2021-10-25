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
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"
// CREATED		"Wed Jun 06 11:18:09 2018"

module FFracConv(
	clk,
	R0_in,
	R1_in,
	first_out,
	reg10_out,
	reg15_out,
	second_out
);


input wire	clk;
input wire	[15:0] R0_in;
input wire	[15:0] R1_in;
output wire	[15:0] first_out;
output wire	[15:0] reg10_out;
output wire	[15:0] reg15_out;
output wire	[15:0] second_out;

wire	[15:0] reg0_out;
wire	[15:0] reg11_out;
wire	[15:0] reg12_out;
wire	[15:0] reg13_out;
wire	[31:0] reg14_out;
wire	[15:0] reg1_out;
wire	[31:0] reg2_out;
wire	[15:0] reg3_out;
wire	[15:0] reg4_out;
wire	[15:0] reg5_out;
wire	[15:0] reg6_out;
wire	[31:0] reg7_out;
wire	[15:0] reg8_out;
wire	[31:0] reg9_out;
wire	[0:15] SYNTHESIZED_WIRE_0;
wire	[0:15] SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = 0;
assign	SYNTHESIZED_WIRE_1 = 0;






multconst_reg	b2v_mult1_reg2(
	.clk(clk),
	.op_a(reg0_out),
	.result(reg2_out));
	defparam	b2v_mult1_reg2.CONST_OP = 78125;
	defparam	b2v_mult1_reg2.DATA_IN_WIDTH = 16;


multconst_reg	b2v_mult2_reg7(
	.clk(clk),
	.op_a(reg4_out),
	.result(reg7_out));
	defparam	b2v_mult2_reg7.CONST_OP = 78125;
	defparam	b2v_mult2_reg7.DATA_IN_WIDTH = 16;


multconst_reg	b2v_mult3_reg9(
	.clk(clk),
	.op_a(reg6_out),
	.result(reg9_out));
	defparam	b2v_mult3_reg9.CONST_OP = 131072;
	defparam	b2v_mult3_reg9.DATA_IN_WIDTH = 16;


multconst_reg	b2v_mult4_reg14(
	.clk(clk),
	.op_a(reg12_out),
	.result(reg14_out));
	defparam	b2v_mult4_reg14.CONST_OP = 131072;
	defparam	b2v_mult4_reg14.DATA_IN_WIDTH = 16;


register	b2v_reg0(
	.clk(clk),
	.reg_in(R0_in),
	.reg_out(reg0_out));
	defparam	b2v_reg0.DATA_WIDTH = 16;


register	b2v_reg1(
	.clk(clk),
	.reg_in(R1_in),
	.reg_out(reg1_out));
	defparam	b2v_reg1.DATA_WIDTH = 16;


adder_2in_2out	b2v_reg10_reg11(
	.clk(clk),
	.in_a(SYNTHESIZED_WIRE_0),
	.in_b(reg7_out),
	.hi_sum(reg11_out),
	.low_sum(reg10_out));
	defparam	b2v_reg10_reg11.DATA_WIDTH = 16;


adder_2in_2out	b2v_reg12(
	.clk(clk),
	.in_a(reg8_out),
	.in_b(reg9_out),
	.hi_sum(first_out),
	.low_sum(reg12_out));
	defparam	b2v_reg12.DATA_WIDTH = 16;


register	b2v_reg13(
	.clk(clk),
	.reg_in(reg11_out),
	.reg_out(reg13_out));
	defparam	b2v_reg13.DATA_WIDTH = 16;


adder_2in_2out	b2v_reg15(
	.clk(clk),
	.in_a(reg13_out),
	.in_b(reg14_out),
	.hi_sum(second_out),
	.low_sum(reg15_out));
	defparam	b2v_reg15.DATA_WIDTH = 16;


register	b2v_reg3(
	.clk(clk),
	.reg_in(reg1_out),
	.reg_out(reg3_out));
	defparam	b2v_reg3.DATA_WIDTH = 16;


adder_2in_2out	b2v_reg4_reg5(
	.clk(clk),
	.in_a(SYNTHESIZED_WIRE_1),
	.in_b(reg2_out),
	.hi_sum(reg5_out),
	.low_sum(reg4_out));
	defparam	b2v_reg4_reg5.DATA_WIDTH = 16;


register	b2v_reg6(
	.clk(clk),
	.reg_in(reg3_out),
	.reg_out(reg6_out));
	defparam	b2v_reg6.DATA_WIDTH = 16;


register	b2v_reg8(
	.clk(clk),
	.reg_in(reg5_out),
	.reg_out(reg8_out));
	defparam	b2v_reg8.DATA_WIDTH = 16;


endmodule
