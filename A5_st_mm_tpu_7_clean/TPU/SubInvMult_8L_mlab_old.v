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
// CREATED		"Tue Mar 06 14:05:13 2018"

module SubInvMult_8L_mlab(
	clk,
	dataA_in,
	dataB_in,
	mod_data_out
);

parameter	DATA_WIDTH = 18;
parameter	FILE1 = "partmod_lut_d3_s26.hex";
parameter	FILE2 = "partmod_lut_d3_s26.hex";
parameter	FILE3 = "partmod_lut_d3_s26.hex";
parameter	FILE4 = "data2.hex";
parameter	MODULUS = 177147;

input wire	clk;
input wire	[17:0] dataA_in;
input wire	[17:0] dataB_in;
output wire	[17:0] mod_data_out;

wire	[17:0] lut4_;
wire	[17:0] lut_data1;
wire	[17:0] lut_data2;
wire	[17:0] lut_data3;
wire	[17:0] mod_data_;
wire	[17:0] reg1_;
wire	[17:0] reg2_;
wire	[17:0] reg3_;
wire	[17:0] reg4_;
wire	[17:0] reg5_;
wire	[15:0] reg7;
wire	[17:0] reg8_;
wire	[17:0] reg9_;
wire	sign1;
wire	sign2;





register	b2v_inst(
	.clk(clk),
	.reg_in(dataA_in),
	.reg_out(reg1_));
	defparam	b2v_inst.DATA_WIDTH = 18;


register	b2v_inst1(
	.clk(clk),
	.reg_in(dataB_in),
	.reg_out(reg2_));
	defparam	b2v_inst1.DATA_WIDTH = 18;


ModSub_2x2	b2v_inst2(
	.clk(clk),
	.A(reg1_),
	.B(reg2_),
	.sign_out(sign1),
	.result_A(reg4_),
	.result_B(reg3_));
	defparam	b2v_inst2.DATA_WIDTH = 18;
	defparam	b2v_inst2.MODULUS = 177147;


Select_2x1	b2v_inst3(
	.clk(clk),
	.sel(sign1),
	.A(reg4_),
	.B(reg3_),
	.result(reg5_));
	defparam	b2v_inst3.DATA_WIDTH = 18;


RomLUT_1x3_mlab	b2v_inst4(
	.clk(clk),
	.addr1(reg5_[5:0]),
	.addr2(reg5_[11:6]),
	.addr3(reg5_[17:12]),
	.data1(lut_data1),
	.data2(lut_data2),
	.data3(lut_data3));
	defparam	b2v_inst4.ADDR_WIDTH = 6;
	defparam	b2v_inst4.DATA_WIDTH = 18;
	defparam	b2v_inst4.FILE1 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst4.FILE2 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst4.FILE3 = "partmod_lut_d3_s26.hex";


ModAdd_2x2	b2v_inst6(
	.clk(clk),
	.A(lut4_),
	.B(reg7),
	.sign_out(sign2),
	.result_A(reg9_),
	.result_B(reg8_));
	defparam	b2v_inst6.DATA_WIDTH = 18;
	defparam	b2v_inst6.MODULUS = 177147;


Select_2x1	b2v_inst7(
	.clk(clk),
	.sel(sign2),
	.A(reg9_),
	.B(reg8_),
	.result(mod_data_));
	defparam	b2v_inst7.DATA_WIDTH = 18;


ModAdd_3x2_2L	b2v_inst8(
	.clk(clk),
	.in_a(lut_data1),
	.in_b(lut_data2),
	.in_c(lut_data3),
	.lut_sum(lut4_),
	.trunc_sum(reg7));
	defparam	b2v_inst8.DATA_WIDTH = 18;
	defparam	b2v_inst8.FILE = "data2.hex";
	defparam	b2v_inst8.MODULUS = 177147;

assign	mod_data_out = mod_data_;

endmodule
