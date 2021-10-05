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
// CREATED		"Mon Sep 02 16:14:57 2019"

module FFracConv4x16_10x18(
	clk,
	sign_in,
	datavalid_in,
	aclr,
	R1_in,
	R2_in,
	R3_in,
	R4_in,
	sign_out,
	datavalid_out,
	rns_R10_out,
	rns_R1_out,
	rns_R2_out,
	rns_R3_out,
	rns_R4_out,
	rns_R5_out,
	rns_R6_out,
	rns_R7_out,
	rns_R8_out,
	rns_R9_out
);


input wire	clk;
input wire	sign_in;
input wire	datavalid_in;
input wire	aclr;
input wire	[15:0] R1_in;
input wire	[15:0] R2_in;
input wire	[15:0] R3_in;
input wire	[15:0] R4_in;
output wire	sign_out;
output wire	datavalid_out;
output wire	[17:0] rns_R10_out;
output wire	[17:0] rns_R1_out;
output wire	[17:0] rns_R2_out;
output wire	[17:0] rns_R3_out;
output wire	[17:0] rns_R4_out;
output wire	[17:0] rns_R5_out;
output wire	[17:0] rns_R6_out;
output wire	[17:0] rns_R7_out;
output wire	[17:0] rns_R8_out;
output wire	[17:0] rns_R9_out;

wire	[17:0] R3_in_;
wire	[17:0] R4_in_;
wire	[15:0] reg0_out;
wire	[15:0] reg10_val;
wire	[17:0] reg11_out;
wire	[15:0] reg12_out;
wire	[17:0] reg13_out;
wire	[17:0] reg14_out;
wire	[33:0] reg15_out;
wire	[15:0] reg15_val;
wire	[17:0] reg16_out;
wire	[17:0] reg17_out;
wire	[17:0] reg18_out;
wire	[17:0] reg19_out;
wire	[15:0] reg1_out;
wire	[17:0] reg20_out;
wire	[17:0] reg21_out;
wire	[17:0] reg21b_out;
wire	[17:0] reg21c_out;
wire	[17:0] reg21d_out;
wire	[17:0] reg22_out;
wire	[17:0] reg22b_out;
wire	[17:0] reg22c_out;
wire	[17:0] reg22d_out;
wire	[17:0] reg23_out;
wire	[17:0] reg24_out;
wire	[17:0] reg25_out;
wire	[17:0] reg26_out;
wire	[17:0] reg27_out;
wire	[17:0] reg28_out;
wire	[17:0] reg29_out;
wire	[33:0] reg2_out;
wire	[17:0] reg30_out;
wire	[17:0] reg31_out;
wire	[17:0] reg32_out;
wire	[17:0] reg33_out;
wire	[17:0] reg34_out;
wire	[17:0] reg35_out;
wire	[17:0] reg36_out;
wire	[17:0] reg37_out;
wire	[17:0] reg38_out;
wire	[17:0] reg39_out;
wire	[15:0] reg3_out;
wire	[17:0] reg40_out;
wire	[17:0] reg41_out;
wire	[17:0] reg42_out;
wire	[15:0] reg4_out;
wire	[17:0] reg5_out;
wire	[15:0] reg6_out;
wire	[33:0] reg7_out;
wire	[17:0] reg8_out;
wire	[33:0] reg9_out;
wire	[17:0] regw_0_lat;
wire	[17:0] regw_1_lat;
wire	[17:0] regw_2_lat;
wire	[17:0] regw_3_lat;
wire	[15:14] rnd_up1_;
wire	[15:14] rnd_up2_;
wire	[17:0] rns_R10_frac;
wire	[17:0] rns_R10_round;
wire	[17:0] rns_R1_frac;
wire	[17:0] rns_R1_round;
wire	[17:0] rns_R2_frac;
wire	[17:0] rns_R2_round;
wire	[17:0] rns_R3_frac;
wire	[17:0] rns_R3_round;
wire	[17:0] rns_R4_frac;
wire	[17:0] rns_R4_round;
wire	[17:0] rns_R5_frac;
wire	[17:0] rns_R5_round;
wire	[17:0] rns_R6_frac;
wire	[17:0] rns_R6_round;
wire	[17:0] rns_R7_frac;
wire	[17:0] rns_R7_round;
wire	[17:0] rns_R8_frac;
wire	[17:0] rns_R8_round;
wire	[17:0] rns_R9_frac;
wire	[17:0] rns_R9_round;
wire	[17:0] rns_whl_r10_out;
wire	[17:0] rns_whl_r10_out_rf;
wire	[17:0] rns_whl_r3_out;
wire	[17:0] rns_whl_r3_out_rf;
wire	[17:0] rns_whl_r4_out;
wire	[17:0] rns_whl_r4_out_rf;
wire	[17:0] rns_whl_r5_out;
wire	[17:0] rns_whl_r5_out_rf;
wire	[17:0] rns_whl_r6_out;
wire	[17:0] rns_whl_r6_out_rf;
wire	[17:0] rns_whl_r7_out;
wire	[17:0] rns_whl_r7_out_rf;
wire	[17:0] rns_whl_r8_out;
wire	[17:0] rns_whl_r8_out_rf;
wire	[17:0] rns_whl_r9_out;
wire	[17:0] rns_whl_r9_out_rf;
wire	sign2;
wire	sign3;
wire	[0:15] SYNTHESIZED_WIRE_0;
wire	[0:15] SYNTHESIZED_WIRE_1;
wire	[0:0] SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_0 = 0;
assign	SYNTHESIZED_WIRE_1 = 0;




reg_delay_22L_aclr	b2v_delay22(
	.clk(clk),
	.aclr(aclr),
	.reg_in(datavalid_in),
	.reg_out(datavalid_out));
	defparam	b2v_delay22.DATA_WIDTH = 1;


register	b2v_frst_dly1_reg1(
	.clk(clk),
	.reg_in(reg13_out),
	.reg_out(reg16_out));
	defparam	b2v_frst_dly1_reg1.DATA_WIDTH = 18;


register	b2v_frst_dly2_reg1(
	.clk(clk),
	.reg_in(reg16_out),
	.reg_out(reg18_out));
	defparam	b2v_frst_dly2_reg1.DATA_WIDTH = 18;


register	b2v_frst_dly3_reg1(
	.clk(clk),
	.reg_in(reg18_out),
	.reg_out(reg20_out));
	defparam	b2v_frst_dly3_reg1.DATA_WIDTH = 18;


register	b2v_frst_dly3_reg2(
	.clk(clk),
	.reg_in(reg18_out),
	.reg_out(reg22_out));
	defparam	b2v_frst_dly3_reg2.DATA_WIDTH = 18;


register	b2v_frst_dly3_reg3(
	.clk(clk),
	.reg_in(reg18_out),
	.reg_out(reg22b_out));
	defparam	b2v_frst_dly3_reg3.DATA_WIDTH = 18;


register	b2v_frst_dly3_reg4(
	.clk(clk),
	.reg_in(reg18_out),
	.reg_out(reg22c_out));
	defparam	b2v_frst_dly3_reg4.DATA_WIDTH = 18;


register	b2v_frst_dly3_reg5(
	.clk(clk),
	.reg_in(reg18_out),
	.reg_out(reg22d_out));
	defparam	b2v_frst_dly3_reg5.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg1(
	.clk(clk),
	.reg_in(reg20_out),
	.reg_out(reg23_out));
	defparam	b2v_frst_dly4_reg1.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg10(
	.clk(clk),
	.reg_in(reg22d_out),
	.reg_out(reg41_out));
	defparam	b2v_frst_dly4_reg10.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg2(
	.clk(clk),
	.reg_in(reg20_out),
	.reg_out(reg25_out));
	defparam	b2v_frst_dly4_reg2.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg3(
	.clk(clk),
	.reg_in(reg22_out),
	.reg_out(reg27_out));
	defparam	b2v_frst_dly4_reg3.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg4(
	.clk(clk),
	.reg_in(reg22_out),
	.reg_out(reg29_out));
	defparam	b2v_frst_dly4_reg4.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg5(
	.clk(clk),
	.reg_in(reg22b_out),
	.reg_out(reg31_out));
	defparam	b2v_frst_dly4_reg5.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg6(
	.clk(clk),
	.reg_in(reg22b_out),
	.reg_out(reg33_out));
	defparam	b2v_frst_dly4_reg6.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg7(
	.clk(clk),
	.reg_in(reg22c_out),
	.reg_out(reg35_out));
	defparam	b2v_frst_dly4_reg7.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg8(
	.clk(clk),
	.reg_in(reg22c_out),
	.reg_out(reg37_out));
	defparam	b2v_frst_dly4_reg8.DATA_WIDTH = 18;


register	b2v_frst_dly4_reg9(
	.clk(clk),
	.reg_in(reg22d_out),
	.reg_out(reg39_out));
	defparam	b2v_frst_dly4_reg9.DATA_WIDTH = 18;






ModMultC18_7L	b2v_mult_by_rf(
	.clk(clk),
	.OP_A_mult(rns_whl_r3_out),
	.result(rns_whl_r3_out_rf));
	defparam	b2v_mult_by_rf.FILE1 = "multc_3lut0_d2_rf.hex";
	defparam	b2v_mult_by_rf.FILE2 = "multc_3lut1_d2_rf.hex";
	defparam	b2v_mult_by_rf.FILE3 = "multc_3lut2_d2_rf.hex";
	defparam	b2v_mult_by_rf.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_mult_by_rf.MODULUS = 117649;


ModMultC18_7L	b2v_mult_by_rf2(
	.clk(clk),
	.OP_A_mult(rns_whl_r4_out),
	.result(rns_whl_r4_out_rf));
	defparam	b2v_mult_by_rf2.FILE1 = "multc_3lut0_d3_rf.hex";
	defparam	b2v_mult_by_rf2.FILE2 = "multc_3lut1_d3_rf.hex";
	defparam	b2v_mult_by_rf2.FILE3 = "multc_3lut2_d3_rf.hex";
	defparam	b2v_mult_by_rf2.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_mult_by_rf2.MODULUS = 177147;


ModMultC18_7L	b2v_mult_by_rf3(
	.clk(clk),
	.OP_A_mult(rns_whl_r5_out),
	.result(rns_whl_r5_out_rf));
	defparam	b2v_mult_by_rf3.FILE1 = "multc_3lut0_d4_rf.hex";
	defparam	b2v_mult_by_rf3.FILE2 = "multc_3lut1_d4_rf.hex";
	defparam	b2v_mult_by_rf3.FILE3 = "multc_3lut2_d4_rf.hex";
	defparam	b2v_mult_by_rf3.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_mult_by_rf3.MODULUS = 262027;


ModMultC18_7L	b2v_mult_by_rf4(
	.clk(clk),
	.OP_A_mult(rns_whl_r6_out),
	.result(rns_whl_r6_out_rf));
	defparam	b2v_mult_by_rf4.FILE1 = "multc_3lut0_d5_rf.hex";
	defparam	b2v_mult_by_rf4.FILE2 = "multc_3lut1_d5_rf.hex";
	defparam	b2v_mult_by_rf4.FILE3 = "multc_3lut2_d5_rf.hex";
	defparam	b2v_mult_by_rf4.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_mult_by_rf4.MODULUS = 262049;


ModMultC18_7L	b2v_mult_by_rf5(
	.clk(clk),
	.OP_A_mult(rns_whl_r7_out),
	.result(rns_whl_r7_out_rf));
	defparam	b2v_mult_by_rf5.FILE1 = "multc_3lut0_d6_rf.hex";
	defparam	b2v_mult_by_rf5.FILE2 = "multc_3lut1_d6_rf.hex";
	defparam	b2v_mult_by_rf5.FILE3 = "multc_3lut2_d6_rf.hex";
	defparam	b2v_mult_by_rf5.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_mult_by_rf5.MODULUS = 262051;


ModMultC18_7L	b2v_mult_by_rf6(
	.clk(clk),
	.OP_A_mult(rns_whl_r8_out),
	.result(rns_whl_r8_out_rf));
	defparam	b2v_mult_by_rf6.FILE1 = "multc_3lut0_d7_rf.hex";
	defparam	b2v_mult_by_rf6.FILE2 = "multc_3lut1_d7_rf.hex";
	defparam	b2v_mult_by_rf6.FILE3 = "multc_3lut2_d7_rf.hex";
	defparam	b2v_mult_by_rf6.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_mult_by_rf6.MODULUS = 262069;


ModMultC18_7L	b2v_mult_by_rf7(
	.clk(clk),
	.OP_A_mult(rns_whl_r9_out),
	.result(rns_whl_r9_out_rf));
	defparam	b2v_mult_by_rf7.FILE1 = "multc_3lut0_d8_rf.hex";
	defparam	b2v_mult_by_rf7.FILE2 = "multc_3lut1_d8_rf.hex";
	defparam	b2v_mult_by_rf7.FILE3 = "multc_3lut2_d8_rf.hex";
	defparam	b2v_mult_by_rf7.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_mult_by_rf7.MODULUS = 262079;


ModMultC18_7L	b2v_mult_by_rf8(
	.clk(clk),
	.OP_A_mult(rns_whl_r10_out),
	.result(rns_whl_r10_out_rf));
	defparam	b2v_mult_by_rf8.FILE1 = "multc_3lut0_d9_rf.hex";
	defparam	b2v_mult_by_rf8.FILE2 = "multc_3lut1_d9_rf.hex";
	defparam	b2v_mult_by_rf8.FILE3 = "multc_3lut2_d9_rf.hex";
	defparam	b2v_mult_by_rf8.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_mult_by_rf8.MODULUS = 262103;


multconst16_18_reg	b2v_mult_reg14(
	.clk(clk),
	.op_a(reg12_out),
	.result(reg15_out));
	defparam	b2v_mult_reg14.CONST_OP = 78125;
	defparam	b2v_mult_reg14.CONST_WIDTH = 18;
	defparam	b2v_mult_reg14.DATA_IN_WIDTH = 16;


multconst16_18_reg	b2v_mult_reg2(
	.clk(clk),
	.op_a(reg0_out),
	.result(reg2_out));
	defparam	b2v_mult_reg2.CONST_OP = 65536;
	defparam	b2v_mult_reg2.CONST_WIDTH = 18;
	defparam	b2v_mult_reg2.DATA_IN_WIDTH = 16;


multconst16_18_reg	b2v_mult_reg7(
	.clk(clk),
	.op_a(reg4_out),
	.result(reg7_out));
	defparam	b2v_mult_reg7.CONST_OP = 78125;
	defparam	b2v_mult_reg7.CONST_WIDTH = 18;
	defparam	b2v_mult_reg7.DATA_IN_WIDTH = 16;


multconst16_18_reg	b2v_mult_reg9(
	.clk(clk),
	.op_a(reg6_out),
	.result(reg9_out));
	defparam	b2v_mult_reg9.CONST_OP = 65536;
	defparam	b2v_mult_reg9.CONST_WIDTH = 18;
	defparam	b2v_mult_reg9.DATA_IN_WIDTH = 16;


register	b2v_reg0(
	.clk(clk),
	.reg_in(R1_in),
	.reg_out(reg0_out));
	defparam	b2v_reg0.DATA_WIDTH = 16;


register	b2v_reg1(
	.clk(clk),
	.reg_in(R2_in),
	.reg_out(reg1_out));
	defparam	b2v_reg1.DATA_WIDTH = 16;


adder_xy_2in_2out	b2v_reg10_reg11(
	.clk(clk),
	.in_a(SYNTHESIZED_WIRE_0),
	.in_b(reg7_out),
	.hi_sum(reg11_out)
	);
	defparam	b2v_reg10_reg11.DATA_A_WIDTH = 16;
	defparam	b2v_reg10_reg11.DATA_B_WIDTH = 34;
	defparam	b2v_reg10_reg11.DATA_LO_WIDTH = 16;


adder_xy_2in_2out	b2v_reg12_first(
	.clk(clk),
	.in_a(reg8_out),
	.in_b(reg9_out),
	.hi_sum(reg13_out),
	.low_sum(reg12_out));
	defparam	b2v_reg12_first.DATA_A_WIDTH = 18;
	defparam	b2v_reg12_first.DATA_B_WIDTH = 34;
	defparam	b2v_reg12_first.DATA_LO_WIDTH = 16;


register	b2v_reg13(
	.clk(clk),
	.reg_in(reg11_out),
	.reg_out(reg14_out));
	defparam	b2v_reg13.DATA_WIDTH = 18;


adder_xy_2in_2out	b2v_reg15(
	.clk(clk),
	.in_a(reg14_out),
	.in_b(reg15_out),
	.hi_sum(reg17_out),
	.low_sum(reg15_val));
	defparam	b2v_reg15.DATA_A_WIDTH = 18;
	defparam	b2v_reg15.DATA_B_WIDTH = 34;
	defparam	b2v_reg15.DATA_LO_WIDTH = 16;


register	b2v_reg3(
	.clk(clk),
	.reg_in(reg1_out),
	.reg_out(reg3_out));
	defparam	b2v_reg3.DATA_WIDTH = 16;


adder_xy_2in_2out	b2v_reg4_reg5(
	.clk(clk),
	.in_a(SYNTHESIZED_WIRE_1),
	.in_b(reg2_out),
	.hi_sum(reg5_out),
	.low_sum(reg4_out));
	defparam	b2v_reg4_reg5.DATA_A_WIDTH = 16;
	defparam	b2v_reg4_reg5.DATA_B_WIDTH = 34;
	defparam	b2v_reg4_reg5.DATA_LO_WIDTH = 16;


register	b2v_reg6(
	.clk(clk),
	.reg_in(reg3_out),
	.reg_out(reg6_out));
	defparam	b2v_reg6.DATA_WIDTH = 16;


register	b2v_reg8(
	.clk(clk),
	.reg_in(reg5_out),
	.reg_out(reg8_out));
	defparam	b2v_reg8.DATA_WIDTH = 18;


register	b2v_regw_0(
	.clk(clk),
	.reg_in(R3_in_),
	.reg_out(regw_0_lat));
	defparam	b2v_regw_0.DATA_WIDTH = 18;


register	b2v_regw_1(
	.clk(clk),
	.reg_in(R4_in_),
	.reg_out(regw_1_lat));
	defparam	b2v_regw_1.DATA_WIDTH = 18;


register	b2v_regw_2(
	.clk(clk),
	.reg_in(regw_0_lat),
	.reg_out(regw_2_lat));
	defparam	b2v_regw_2.DATA_WIDTH = 18;


register	b2v_regw_3(
	.clk(clk),
	.reg_in(regw_1_lat),
	.reg_out(regw_3_lat));
	defparam	b2v_regw_3.DATA_WIDTH = 18;


reg_delay_9L	b2v_rnd_dly_1(
	.pin_name1(clk),
	.reg_in(reg15_val[15:14]),
	.reg_out(rnd_up1_));
	defparam	b2v_rnd_dly_1.DATA_WIDTH = 2;


reg_delay_2L	b2v_rnd_dly_2(
	.clk(clk),
	.reg_in(rnd_up1_),
	.reg_out(rnd_up2_));
	defparam	b2v_rnd_dly_2.DATA_WIDTH = 2;


ModMultAdd_8L_v2	b2v_rns_R1(
	.clk(clk),
	.OP_A_mult(reg23_out),
	.OP_B_add(reg24_out),
	.result(rns_R1_frac));
	defparam	b2v_rns_R1.DATA_WIDTH = 18;
	defparam	b2v_rns_R1.FILE1 = "modmult_3lut0_d0_m1.hex";
	defparam	b2v_rns_R1.FILE2 = "modmult_3lut1_d0_m1.hex";
	defparam	b2v_rns_R1.FILE3 = "modmult_3lut2_d0_m1.hex";
	defparam	b2v_rns_R1.FILE4 = "partmod_lut_d0_s16_r16.hex";
	defparam	b2v_rns_R1.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_rns_R10(
	.clk(clk),
	.OP_A_mult(reg41_out),
	.OP_B_add(reg42_out),
	.result(rns_R10_frac));
	defparam	b2v_rns_R10.DATA_WIDTH = 18;
	defparam	b2v_rns_R10.FILE1 = "modmult_3lut0_d9_m1.hex";
	defparam	b2v_rns_R10.FILE2 = "modmult_3lut1_d9_m1.hex";
	defparam	b2v_rns_R10.FILE3 = "modmult_3lut2_d9_m1.hex";
	defparam	b2v_rns_R10.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_rns_R10.MODULUS = 262103;


ModCmpl_1R_2C	b2v_rns_R10_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R10_round),
	.result(rns_R10_out));
	defparam	b2v_rns_R10_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R10_cmpl.MODULUS = 262103;


ModAddcin_1R_2C	b2v_rns_R10_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R10_frac),
	.B(rns_whl_r10_out_rf),
	.result(rns_R10_round));
	defparam	b2v_rns_R10_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R10_rnd.MODULUS = 262103;


ModCmpl_1R_2C	b2v_rns_R1_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R1_round),
	.result(rns_R1_out));
	defparam	b2v_rns_R1_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R1_cmpl.MODULUS = 65536;


ModAddOne_1R_2C	b2v_rns_R1_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R1_frac),
	.result(rns_R1_round));
	defparam	b2v_rns_R1_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R1_rnd.MODULUS = 65536;


ModMultAdd_8L_v2	b2v_rns_R2(
	.clk(clk),
	.OP_A_mult(reg25_out),
	.OP_B_add(reg26_out),
	.result(rns_R2_frac));
	defparam	b2v_rns_R2.DATA_WIDTH = 18;
	defparam	b2v_rns_R2.FILE1 = "modmult_3lut0_d1_m1.hex";
	defparam	b2v_rns_R2.FILE2 = "modmult_3lut1_d1_m1.hex";
	defparam	b2v_rns_R2.FILE3 = "modmult_3lut2_d1_m1.hex";
	defparam	b2v_rns_R2.FILE4 = "partmod_lut_d1_s16_r16.hex";
	defparam	b2v_rns_R2.MODULUS = 78125;


ModCmpl_1R_2C	b2v_rns_R2_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R2_round),
	.result(rns_R2_out));
	defparam	b2v_rns_R2_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R2_cmpl.MODULUS = 78125;


ModAddOne_1R_2C	b2v_rns_R2_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R2_frac),
	.result(rns_R2_round));
	defparam	b2v_rns_R2_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R2_rnd.MODULUS = 78125;


ModMultAdd_8L_v2	b2v_rns_R3(
	.clk(clk),
	.OP_A_mult(reg27_out),
	.OP_B_add(reg28_out),
	.result(rns_R3_frac));
	defparam	b2v_rns_R3.DATA_WIDTH = 18;
	defparam	b2v_rns_R3.FILE1 = "modmult_3lut0_d2_m1.hex";
	defparam	b2v_rns_R3.FILE2 = "modmult_3lut1_d2_m1.hex";
	defparam	b2v_rns_R3.FILE3 = "modmult_3lut2_d2_m1.hex";
	defparam	b2v_rns_R3.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_rns_R3.MODULUS = 117649;


ModCmpl_1R_2C	b2v_rns_R3_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R3_round),
	.result(rns_R3_out));
	defparam	b2v_rns_R3_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R3_cmpl.MODULUS = 117649;


ModAddcin_1R_2C	b2v_rns_R3_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R3_frac),
	.B(rns_whl_r3_out_rf),
	.result(rns_R3_round));
	defparam	b2v_rns_R3_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R3_rnd.MODULUS = 117649;


ModMultAdd_8L_v2	b2v_rns_R4(
	.clk(clk),
	.OP_A_mult(reg29_out),
	.OP_B_add(reg30_out),
	.result(rns_R4_frac));
	defparam	b2v_rns_R4.DATA_WIDTH = 18;
	defparam	b2v_rns_R4.FILE1 = "modmult_3lut0_d3_m1.hex";
	defparam	b2v_rns_R4.FILE2 = "modmult_3lut1_d3_m1.hex";
	defparam	b2v_rns_R4.FILE3 = "modmult_3lut2_d3_m1.hex";
	defparam	b2v_rns_R4.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_rns_R4.MODULUS = 177147;


ModCmpl_1R_2C	b2v_rns_R4_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R4_round),
	.result(rns_R4_out));
	defparam	b2v_rns_R4_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R4_cmpl.MODULUS = 177147;


ModAddcin_1R_2C	b2v_rns_R4_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R4_frac),
	.B(rns_whl_r4_out_rf),
	.result(rns_R4_round));
	defparam	b2v_rns_R4_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R4_rnd.MODULUS = 177147;


ModMultAdd_8L_v2	b2v_rns_R5(
	.clk(clk),
	.OP_A_mult(reg31_out),
	.OP_B_add(reg32_out),
	.result(rns_R5_frac));
	defparam	b2v_rns_R5.DATA_WIDTH = 18;
	defparam	b2v_rns_R5.FILE1 = "modmult_3lut0_d4_m1.hex";
	defparam	b2v_rns_R5.FILE2 = "modmult_3lut1_d4_m1.hex";
	defparam	b2v_rns_R5.FILE3 = "modmult_3lut2_d4_m1.hex";
	defparam	b2v_rns_R5.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_rns_R5.MODULUS = 262027;


ModCmpl_1R_2C	b2v_rns_R5_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R5_round),
	.result(rns_R5_out));
	defparam	b2v_rns_R5_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R5_cmpl.MODULUS = 262027;


ModAddcin_1R_2C	b2v_rns_R5_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R5_frac),
	.B(rns_whl_r5_out_rf),
	.result(rns_R5_round));
	defparam	b2v_rns_R5_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R5_rnd.MODULUS = 262027;


ModMultAdd_8L_v2	b2v_rns_R6(
	.clk(clk),
	.OP_A_mult(reg33_out),
	.OP_B_add(reg34_out),
	.result(rns_R6_frac));
	defparam	b2v_rns_R6.DATA_WIDTH = 18;
	defparam	b2v_rns_R6.FILE1 = "modmult_3lut0_d5_m1.hex";
	defparam	b2v_rns_R6.FILE2 = "modmult_3lut1_d5_m1.hex";
	defparam	b2v_rns_R6.FILE3 = "modmult_3lut2_d5_m1.hex";
	defparam	b2v_rns_R6.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_rns_R6.MODULUS = 262049;


ModCmpl_1R_2C	b2v_rns_R6_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R6_round),
	.result(rns_R6_out));
	defparam	b2v_rns_R6_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R6_cmpl.MODULUS = 262049;


ModAddcin_1R_2C	b2v_rns_R6_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R6_frac),
	.B(rns_whl_r6_out_rf),
	.result(rns_R6_round));
	defparam	b2v_rns_R6_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R6_rnd.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_rns_R7(
	.clk(clk),
	.OP_A_mult(reg35_out),
	.OP_B_add(reg36_out),
	.result(rns_R7_frac));
	defparam	b2v_rns_R7.DATA_WIDTH = 18;
	defparam	b2v_rns_R7.FILE1 = "modmult_3lut0_d6_m1.hex";
	defparam	b2v_rns_R7.FILE2 = "modmult_3lut1_d6_m1.hex";
	defparam	b2v_rns_R7.FILE3 = "modmult_3lut2_d6_m1.hex";
	defparam	b2v_rns_R7.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_rns_R7.MODULUS = 262051;


ModCmpl_1R_2C	b2v_rns_R7_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R7_round),
	.result(rns_R7_out));
	defparam	b2v_rns_R7_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R7_cmpl.MODULUS = 262051;


ModAddcin_1R_2C	b2v_rns_R7_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R7_frac),
	.B(rns_whl_r7_out_rf),
	.result(rns_R7_round));
	defparam	b2v_rns_R7_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R7_rnd.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_rns_R8(
	.clk(clk),
	.OP_A_mult(reg37_out),
	.OP_B_add(reg38_out),
	.result(rns_R8_frac));
	defparam	b2v_rns_R8.DATA_WIDTH = 18;
	defparam	b2v_rns_R8.FILE1 = "modmult_3lut0_d7_m1.hex";
	defparam	b2v_rns_R8.FILE2 = "modmult_3lut1_d7_m1.hex";
	defparam	b2v_rns_R8.FILE3 = "modmult_3lut2_d7_m1.hex";
	defparam	b2v_rns_R8.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_rns_R8.MODULUS = 262069;


ModCmpl_1R_2C	b2v_rns_R8_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R8_round),
	.result(rns_R8_out));
	defparam	b2v_rns_R8_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R8_cmpl.MODULUS = 262069;


ModAddcin_1R_2C	b2v_rns_R8_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R8_frac),
	.B(rns_whl_r8_out_rf),
	.result(rns_R8_round));
	defparam	b2v_rns_R8_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R8_rnd.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_rns_R9(
	.clk(clk),
	.OP_A_mult(reg39_out),
	.OP_B_add(reg40_out),
	.result(rns_R9_frac));
	defparam	b2v_rns_R9.DATA_WIDTH = 18;
	defparam	b2v_rns_R9.FILE1 = "modmult_3lut0_d8_m1.hex";
	defparam	b2v_rns_R9.FILE2 = "modmult_3lut1_d8_m1.hex";
	defparam	b2v_rns_R9.FILE3 = "modmult_3lut2_d8_m1.hex";
	defparam	b2v_rns_R9.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_rns_R9.MODULUS = 262079;


ModCmpl_1R_2C	b2v_rns_R9_cmpl(
	.clk(clk),
	.cmpl_ena(sign3),
	.A(rns_R9_round),
	.result(rns_R9_out));
	defparam	b2v_rns_R9_cmpl.DATA_WIDTH = 18;
	defparam	b2v_rns_R9_cmpl.MODULUS = 262079;


ModAddcin_1R_2C	b2v_rns_R9_rnd(
	.clk(clk),
	.cin(rnd_up2_[15]),
	.A(rns_R9_frac),
	.B(rns_whl_r9_out_rf),
	.result(rns_R9_round));
	defparam	b2v_rns_R9_rnd.DATA_WIDTH = 18;
	defparam	b2v_rns_R9_rnd.MODULUS = 262079;


ModMultAdd_8L_v2	b2v_rns_whl_R10(
	.clk(clk),
	.OP_A_mult(regw_3_lat),
	.OP_B_add(regw_2_lat),
	.result(rns_whl_r10_out));
	defparam	b2v_rns_whl_R10.DATA_WIDTH = 18;
	defparam	b2v_rns_whl_R10.FILE1 = "multc_3lut0_d9_2^16.hex";
	defparam	b2v_rns_whl_R10.FILE2 = "multc_3lut1_d9_2^16.hex";
	defparam	b2v_rns_whl_R10.FILE3 = "multc_3lut2_d9_2^16.hex";
	defparam	b2v_rns_whl_R10.FILE4 = "partmod_lut_d9_s16_r16.hex";
	defparam	b2v_rns_whl_R10.MODULUS = 262103;


ModMultAdd_8L_v2	b2v_rns_whl_R3(
	.clk(clk),
	.OP_A_mult(regw_3_lat),
	.OP_B_add(regw_2_lat),
	.result(rns_whl_r3_out));
	defparam	b2v_rns_whl_R3.DATA_WIDTH = 18;
	defparam	b2v_rns_whl_R3.FILE1 = "multc_3lut0_d2_2^16.hex";
	defparam	b2v_rns_whl_R3.FILE2 = "multc_3lut1_d2_2^16.hex";
	defparam	b2v_rns_whl_R3.FILE3 = "multc_3lut2_d2_2^16.hex";
	defparam	b2v_rns_whl_R3.FILE4 = "partmod_lut_d2_s16_r16.hex";
	defparam	b2v_rns_whl_R3.MODULUS = 117649;


ModMultAdd_8L_v2	b2v_rns_whl_R4(
	.clk(clk),
	.OP_A_mult(regw_3_lat),
	.OP_B_add(regw_2_lat),
	.result(rns_whl_r4_out));
	defparam	b2v_rns_whl_R4.DATA_WIDTH = 18;
	defparam	b2v_rns_whl_R4.FILE1 = "multc_3lut0_d3_2^16.hex";
	defparam	b2v_rns_whl_R4.FILE2 = "multc_3lut1_d3_2^16.hex";
	defparam	b2v_rns_whl_R4.FILE3 = "multc_3lut2_d3_2^16.hex";
	defparam	b2v_rns_whl_R4.FILE4 = "partmod_lut_d3_s16_r16.hex";
	defparam	b2v_rns_whl_R4.MODULUS = 177147;


ModMultAdd_8L_v2	b2v_rns_whl_R5(
	.clk(clk),
	.OP_A_mult(regw_3_lat),
	.OP_B_add(regw_2_lat),
	.result(rns_whl_r5_out));
	defparam	b2v_rns_whl_R5.DATA_WIDTH = 18;
	defparam	b2v_rns_whl_R5.FILE1 = "multc_3lut0_d4_2^16.hex";
	defparam	b2v_rns_whl_R5.FILE2 = "multc_3lut1_d4_2^16.hex";
	defparam	b2v_rns_whl_R5.FILE3 = "multc_3lut2_d4_2^16.hex";
	defparam	b2v_rns_whl_R5.FILE4 = "partmod_lut_d4_s16_r16.hex";
	defparam	b2v_rns_whl_R5.MODULUS = 262027;


ModMultAdd_8L_v2	b2v_rns_whl_R6(
	.clk(clk),
	.OP_A_mult(regw_3_lat),
	.OP_B_add(regw_2_lat),
	.result(rns_whl_r6_out));
	defparam	b2v_rns_whl_R6.DATA_WIDTH = 18;
	defparam	b2v_rns_whl_R6.FILE1 = "multc_3lut0_d5_2^16.hex";
	defparam	b2v_rns_whl_R6.FILE2 = "multc_3lut1_d5_2^16.hex";
	defparam	b2v_rns_whl_R6.FILE3 = "multc_3lut2_d5_2^16.hex";
	defparam	b2v_rns_whl_R6.FILE4 = "partmod_lut_d5_s16_r16.hex";
	defparam	b2v_rns_whl_R6.MODULUS = 262049;


ModMultAdd_8L_v2	b2v_rns_whl_R7(
	.clk(clk),
	.OP_A_mult(regw_3_lat),
	.OP_B_add(regw_2_lat),
	.result(rns_whl_r7_out));
	defparam	b2v_rns_whl_R7.DATA_WIDTH = 18;
	defparam	b2v_rns_whl_R7.FILE1 = "multc_3lut0_d6_2^16.hex";
	defparam	b2v_rns_whl_R7.FILE2 = "multc_3lut1_d6_2^16.hex";
	defparam	b2v_rns_whl_R7.FILE3 = "multc_3lut2_d6_2^16.hex";
	defparam	b2v_rns_whl_R7.FILE4 = "partmod_lut_d6_s16_r16.hex";
	defparam	b2v_rns_whl_R7.MODULUS = 262051;


ModMultAdd_8L_v2	b2v_rns_whl_R8(
	.clk(clk),
	.OP_A_mult(regw_3_lat),
	.OP_B_add(regw_2_lat),
	.result(rns_whl_r8_out));
	defparam	b2v_rns_whl_R8.DATA_WIDTH = 18;
	defparam	b2v_rns_whl_R8.FILE1 = "multc_3lut0_d7_2^16.hex";
	defparam	b2v_rns_whl_R8.FILE2 = "multc_3lut1_d7_2^16.hex";
	defparam	b2v_rns_whl_R8.FILE3 = "multc_3lut2_d7_2^16.hex";
	defparam	b2v_rns_whl_R8.FILE4 = "partmod_lut_d7_s16_r16.hex";
	defparam	b2v_rns_whl_R8.MODULUS = 262069;


ModMultAdd_8L_v2	b2v_rns_whl_R9(
	.clk(clk),
	.OP_A_mult(regw_3_lat),
	.OP_B_add(regw_2_lat),
	.result(rns_whl_r9_out));
	defparam	b2v_rns_whl_R9.DATA_WIDTH = 18;
	defparam	b2v_rns_whl_R9.FILE1 = "multc_3lut0_d8_2^16.hex";
	defparam	b2v_rns_whl_R9.FILE2 = "multc_3lut1_d8_2^16.hex";
	defparam	b2v_rns_whl_R9.FILE3 = "multc_3lut2_d8_2^16.hex";
	defparam	b2v_rns_whl_R9.FILE4 = "partmod_lut_d8_s16_r16.hex";
	defparam	b2v_rns_whl_R9.MODULUS = 262079;


register	b2v_sec_dly2_reg1(
	.clk(clk),
	.reg_in(reg17_out),
	.reg_out(reg19_out));
	defparam	b2v_sec_dly2_reg1.DATA_WIDTH = 18;


register	b2v_sec_dly2_reg2(
	.clk(clk),
	.reg_in(reg17_out),
	.reg_out(reg21_out));
	defparam	b2v_sec_dly2_reg2.DATA_WIDTH = 18;


register	b2v_sec_dly2_reg3(
	.clk(clk),
	.reg_in(reg17_out),
	.reg_out(reg21b_out));
	defparam	b2v_sec_dly2_reg3.DATA_WIDTH = 18;


register	b2v_sec_dly2_reg4(
	.clk(clk),
	.reg_in(reg17_out),
	.reg_out(reg21c_out));
	defparam	b2v_sec_dly2_reg4.DATA_WIDTH = 18;


register	b2v_sec_dly2_reg5(
	.clk(clk),
	.reg_in(reg17_out),
	.reg_out(reg21d_out));
	defparam	b2v_sec_dly2_reg5.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg1(
	.clk(clk),
	.reg_in(reg19_out),
	.reg_out(reg24_out));
	defparam	b2v_sec_dly3_reg1.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg10(
	.clk(clk),
	.reg_in(reg21d_out),
	.reg_out(reg42_out));
	defparam	b2v_sec_dly3_reg10.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg2(
	.clk(clk),
	.reg_in(reg19_out),
	.reg_out(reg26_out));
	defparam	b2v_sec_dly3_reg2.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg3(
	.clk(clk),
	.reg_in(reg21_out),
	.reg_out(reg28_out));
	defparam	b2v_sec_dly3_reg3.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg4(
	.clk(clk),
	.reg_in(reg21_out),
	.reg_out(reg30_out));
	defparam	b2v_sec_dly3_reg4.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg5(
	.clk(clk),
	.reg_in(reg21b_out),
	.reg_out(reg32_out));
	defparam	b2v_sec_dly3_reg5.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg6(
	.clk(clk),
	.reg_in(reg21b_out),
	.reg_out(reg34_out));
	defparam	b2v_sec_dly3_reg6.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg7(
	.clk(clk),
	.reg_in(reg21c_out),
	.reg_out(reg36_out));
	defparam	b2v_sec_dly3_reg7.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg8(
	.clk(clk),
	.reg_in(reg21c_out),
	.reg_out(reg38_out));
	defparam	b2v_sec_dly3_reg8.DATA_WIDTH = 18;


register	b2v_sec_dly3_reg9(
	.clk(clk),
	.reg_in(reg21d_out),
	.reg_out(reg40_out));
	defparam	b2v_sec_dly3_reg9.DATA_WIDTH = 18;


reg_delay_9L	b2v_sign_dly_1(
	.pin_name1(clk),
	.reg_in(sign_in),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_sign_dly_1.DATA_WIDTH = 1;


reg_delay_9L	b2v_sign_dly_2(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_2),
	.reg_out(sign2));
	defparam	b2v_sign_dly_2.DATA_WIDTH = 1;


reg_delay_2L	b2v_sign_dly_3(
	.clk(clk),
	.reg_in(sign2),
	.reg_out(sign3));
	defparam	b2v_sign_dly_3.DATA_WIDTH = 1;


reg_delay_2L	b2v_sign_dly_4(
	.clk(clk),
	.reg_in(sign3),
	.reg_out(sign_out));
	defparam	b2v_sign_dly_4.DATA_WIDTH = 1;

assign	R3_in_[17:16] = 2'b00;
assign	R3_in_[15:0] = R3_in;
assign	R4_in_[17:16] = 2'b00;
assign	R4_in_[15:0] = R4_in;

endmodule