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
// VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
// CREATED		"Sun Mar 11 21:59:40 2018"

// Custom paramterization added, E. Olsen

module ModMultAdd_8L_v2  #(parameter DATA_WIDTH = 18, parameter MODULUS = 177147, parameter FILE1 = "invmult_3lut0_1_0.hex", parameter FILE2 = "invmult_3lut1_1_0.hex", parameter FILE3 = "invmult_3lut2_1_0.hex", parameter FILE4 = "partmod_lut_d1_s16_r16.hex")
(
	clk,
	OP_A_mult,
	OP_B_add,
	result
);

//parameter	DATA_WIDTH = 18;
//parameter	FILE1 = "pwrmult_3lut0_d0_2_3.hex";
//parameter	FILE2 = "pwrmult_3lut1_d0_2_3.hex";
//parameter	FILE3 = "pwrmult_3lut2_d0_2_3.hex";
//parameter	FILE4 = "partmod_lut_d0_s16_r16";
//parameter	MODULUS = 177147;

input wire	clk;
input wire	[17:0] OP_A_mult;
input wire	[17:0] OP_B_add;
output wire	[17:0] result;

wire	[17:0] data1_;
wire	[17:0] data2_;
wire	[17:0] data3_;
wire	[17:0] delayA_;
wire	[17:0] delayB_;
wire	[17:0] lut4_;
wire	[17:0] OP_A;
wire	[17:0] OP_B;
wire	[17:0] reg10_;
wire	[17:0] reg1_;
wire	[17:0] reg2_;
wire	[17:0] reg3a_;
wire	[17:0] reg3b_;
wire	[17:0] reg4_;
wire	[19:0] reg5_;
wire	[19:0] reg6_;
wire	[15:0] reg7_;
wire	[17:0] reg8_;
wire	[17:0] reg9_;
wire	sign_out;
wire	SYNTHESIZED_WIRE_0;





Decomp_1x2_1L	b2v_Decomp_1x2(
	.clk(clk),
	.in_a(reg6_),
	.lut_out(lut4_),
	.trunc_out(reg7_));
	defparam	b2v_Decomp_1x2.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_Decomp_1x2.FILE = FILE4;
	defparam	b2v_Decomp_1x2.LUT_WIDTH = 4;
	defparam	b2v_Decomp_1x2.TRUNC_WIDTH = DATA_WIDTH-2;


bin_add_3x1	b2v_inst(
	.clk(clk),
	.in_a(data1_),
	.in_b(data2_),
	.in_c(data3_),
	.reg_sum(reg5_));
	defparam	b2v_inst.OPA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst.OPB_WIDTH = DATA_WIDTH;
	defparam	b2v_inst.OPC_WIDTH = DATA_WIDTH;
	defparam	b2v_inst.OUT_WIDTH = DATA_WIDTH+2;


register	b2v_inst_delay_A(
	.clk(clk),
	.reg_in(OP_A),
	.reg_out(delayA_));
	defparam	b2v_inst_delay_A.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_delay_B(
	.clk(clk),
	.reg_in(OP_B),
	.reg_out(delayB_));
	defparam	b2v_inst_delay_B.DATA_WIDTH = DATA_WIDTH;


ModAdd_2x2	b2v_inst_Modadd(
	.clk(clk),
	.A(lut4_),
	.B(reg7_),
	.sign_out(sign_out),
	.result_A(reg9_),
	.result_B(reg8_));
	defparam	b2v_inst_Modadd.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst_Modadd.MODULUS = MODULUS;


register	b2v_inst_reg1(
	.clk(clk),
	.reg_in(delayB_),
	.reg_out(reg1_));
	defparam	b2v_inst_reg1.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_reg2(
	.clk(clk),
	.reg_in(delayA_),
	.reg_out(reg2_));
	defparam	b2v_inst_reg2.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_reg3a(
	.clk(clk),
	.reg_in(reg1_),
	.reg_out(reg3a_));
	defparam	b2v_inst_reg3a.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_reg3b(
	.clk(clk),
	.reg_in(reg3a_),
	.reg_out(reg3b_));
	defparam	b2v_inst_reg3b.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_reg4(
	.clk(clk),
	.reg_in(reg3b_),
	.reg_out(reg4_));
	defparam	b2v_inst_reg4.DATA_WIDTH = DATA_WIDTH;


Select_2x1	b2v_inst_select_2x1(
	.clk(clk),
	.sel(SYNTHESIZED_WIRE_0),
	.A(reg9_),
	.B(reg8_),
	.result(reg10_));
	defparam	b2v_inst_select_2x1.DATA_WIDTH = DATA_WIDTH;

assign	SYNTHESIZED_WIRE_0 =  ~sign_out;


RomLUT_1x3_mlab	b2v_RomLUT_1x3(
	.clk(clk),
	.addr1(reg2_[5:0]),
	.addr2(reg2_[11:6]),
	.addr3(reg2_[17:12]),
	.data1(data1_),
	.data2(data2_),
	.data3(data3_));
	defparam	b2v_RomLUT_1x3.ADDR_WIDTH = 6;
	defparam	b2v_RomLUT_1x3.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_RomLUT_1x3.FILE1 = FILE1;
	defparam	b2v_RomLUT_1x3.FILE2 = FILE2;
	defparam	b2v_RomLUT_1x3.FILE3 = FILE3;


bin_add_2x1	b2v_sum_reg6(
	.clk(clk),
	.in_a(reg4_),
	.in_b(reg5_),
	.reg_sum(reg6_));
	defparam	b2v_sum_reg6.OPA_WIDTH = DATA_WIDTH;
	defparam	b2v_sum_reg6.OPB_WIDTH = DATA_WIDTH+2;
	defparam	b2v_sum_reg6.OUT_WIDTH = DATA_WIDTH+2;

assign	result = reg10_;
assign	OP_B = OP_B_add;
assign	OP_A = OP_A_mult;

endmodule
