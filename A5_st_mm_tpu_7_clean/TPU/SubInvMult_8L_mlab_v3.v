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
// CREATED		"Tue Mar 06 15:32:11 2018"

module SubInvMult_8L_mlab #(parameter DATA_WIDTH = 18, parameter MODULUS = 78125, parameter FILE1 = "invmult_3lut0_1_0.hex", parameter FILE2 = "invmult_3lut1_1_0.hex", parameter FILE3 = "invmult_3lut2_1_0.hex", parameter FILE4 = "partmod_lut_d1_s16_r16.hex")
(
	clk,
	dataA_in,
	dataB_in,
	mod_data_out
);

//parameter	DATA_WIDTH = 18;
//parameter	FILE1 = "partmod_lut_d3_s26.hex";
//parameter	FILE2 = "partmod_lut_d3_s26.hex";
//parameter	FILE3 = "partmod_lut_d3_s26.hex";
//parameter	FILE4 = "data2.hex";
//parameter	MODULUS = 177147;

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
	defparam	b2v_inst.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst1(
	.clk(clk),
	.reg_in(dataB_in),
	.reg_out(reg2_));
	defparam	b2v_inst1.DATA_WIDTH = DATA_WIDTH;


ModSub_2x2	b2v_inst2(
	.clk(clk),
	.A(reg1_),
	.B(reg2_),
	.sign_out(sign1),
	.result_A(reg4_),
	.result_B(reg3_));
	defparam	b2v_inst2.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst2.MODULUS = MODULUS;


Select_2x1	b2v_inst3(
	.clk(clk),
	.sel(sign1),
	.A(reg4_),
	.B(reg3_),
	.result(reg5_));
	defparam	b2v_inst3.DATA_WIDTH = DATA_WIDTH;


RomLUT_1x3_mlab	b2v_inst4(
	.clk(clk),
	.addr1(reg5_[5:0]),
	.addr2(reg5_[11:6]),
	.addr3(reg5_[17:12]),
	.data1(lut_data1),
	.data2(lut_data2),
	.data3(lut_data3));
	defparam	b2v_inst4.ADDR_WIDTH = 6;
	defparam	b2v_inst4.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst4.FILE1 = FILE1;
	defparam	b2v_inst4.FILE2 = FILE2;
	defparam	b2v_inst4.FILE3 = FILE3;


ModAdd_2x2	b2v_inst6(
	.clk(clk),
	.A(lut4_),
	.B(reg7),
	.sign_out(sign2),
	.result_A(reg9_),
	.result_B(reg8_));
	defparam	b2v_inst6.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst6.MODULUS = MODULUS;


Select_2x1	b2v_inst7(
	.clk(clk),
	.sel(sign2),
	.A(reg9_),
	.B(reg8_),
	.result(mod_data_));
	defparam	b2v_inst7.DATA_WIDTH = DATA_WIDTH;


ModAdd_3x2_2L	b2v_inst8(
	.clk(clk),
	.in_a(lut_data1),
	.in_b(lut_data2),
	.in_c(lut_data3),
	.lut_sum(lut4_),
	.trunc_sum(reg7));
	defparam	b2v_inst8.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst8.FILE = FILE4;

assign	mod_data_out = mod_data_;

endmodule
