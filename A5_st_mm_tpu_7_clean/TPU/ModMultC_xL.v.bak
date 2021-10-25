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
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"
// CREATED		"Sun Jun 10 15:30:27 2018"

// This is a hand modified paramterized version - 
// RE-MAKING THIS FILE WILL DELETE THE CUSTOM PARAMETERIZATION

module ModMultC_xL #(parameter FILE1="modmult_3lut0_d0_m1.hex", 
							  parameter FILE2="modmult_3lut1_d0_m1.hex", 
							  parameter FILE3="modmult_3lut2_d0_m1.hex", 
							  parameter FILE4="partmod_lut_d0_s16_r16.hex",
							  parameter MODULUS = 177147)
							

(
	clk,
	OP_A_mult,
	result
);

parameter DATA_WIDTH = 18;
//parameter	FILE1 = "modmult_3lut0_d0_m1.hex";
//parameter	FILE2 = "modmult_3lut1_d0_m1.hex";
//parameter	FILE3 = "modmult_3lut2_d0_m1.hex";
//parameter	FILE4 = "partmod_lut_d0_s16_r16.hex";
//parameter	MODULUS = 177147;

input wire	clk;
input wire	[17:0] OP_A_mult;
output wire	[17:0] result;

wire	[17:0] data1_;
wire	[17:0] data2_;
wire	[17:0] data3_;
wire	[17:0] lut4_;
wire	[17:0] reg1_;
wire	[19:0] reg2_;
wire	[15:0] reg3_;
wire	[17:0] reg4_;
wire	[17:0] reg5_;
wire	[17:0] reg6_;
wire	sign_out;
wire	SYNTHESIZED_WIRE_0;



Decomp_1x2_1L	b2v_Decomp_1x2(
	.clk(clk),
	.in_a(reg2_),
	.lut_out(lut4_),
	.trunc_out(reg3_));
	defparam	b2v_Decomp_1x2.DATA_WIDTH = 18;
	defparam	b2v_Decomp_1x2.FILE = FILE4;
	defparam	b2v_Decomp_1x2.LUT_WIDTH = 4;
	defparam	b2v_Decomp_1x2.TRUNC_WIDTH = 16;


bin_add_3x1	b2v_inst(
	.clk(clk),
	.in_a(data1_),
	.in_b(data2_),
	.in_c(data3_),
	.reg_sum(reg2_));
	defparam	b2v_inst.OPA_WIDTH = 18;
	defparam	b2v_inst.OPB_WIDTH = 18;
	defparam	b2v_inst.OPC_WIDTH = 18;
	defparam	b2v_inst.OUT_WIDTH = 20;


ModAdd_2x2	b2v_inst_Modadd(
	.clk(clk),
	.A(lut4_),
	.B(reg3_),
	.sign_out(sign_out),
	.result_A(reg4_),
	.result_B(reg5_));
	defparam	b2v_inst_Modadd.DATA_WIDTH = 18;
	defparam	b2v_inst_Modadd.MODULUS = MODULUS;


register	b2v_inst_reg1(
	.clk(clk),
	.reg_in(OP_A_mult),
	.reg_out(reg1_));
	defparam	b2v_inst_reg1.DATA_WIDTH = 18;


Select_2x1	b2v_inst_select_2x1(
	.clk(clk),
	.sel(SYNTHESIZED_WIRE_0),
	.A(reg4_),
	.B(reg5_),
	.result(reg6_));
	defparam	b2v_inst_select_2x1.DATA_WIDTH = 18;

assign	SYNTHESIZED_WIRE_0 =  ~sign_out;


RomLUT_1x3_mlab	b2v_RomLUT_1x3(
	.clk(clk),
	.addr1(reg1_[5:0]),
	.addr2(reg1_[11:6]),
	.addr3(reg1_[17:12]),
	.data1(data1_),
	.data2(data2_),
	.data3(data3_));
	defparam	b2v_RomLUT_1x3.ADDR_WIDTH = 6;
	defparam	b2v_RomLUT_1x3.DATA_WIDTH = 18;
	defparam	b2v_RomLUT_1x3.FILE1 = FILE1;
	defparam	b2v_RomLUT_1x3.FILE2 = FILE2;
	defparam	b2v_RomLUT_1x3.FILE3 = FILE3;

assign	result = reg6_;

endmodule

