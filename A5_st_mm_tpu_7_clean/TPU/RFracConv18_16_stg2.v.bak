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
// CREATED		"Sun Aug 11 16:59:43 2019"

module RFracConv18_16_stg2(
	clk,
	sign_in,
	rnd_in,
	mr_A3_in,
	mr_A4_in,
	mr_A5_in,
	mr_A6_in,
	OV1_out,
	sign_out,
	B0_out,
	B1_out,
	B2_out,
	B3_out,
	OV2_out
);


input wire	clk;
input wire	sign_in;
input wire	rnd_in;
input wire	[17:0] mr_A3_in;
input wire	[17:0] mr_A4_in;
input wire	[17:0] mr_A5_in;
input wire	[17:0] mr_A6_in;
output wire	OV1_out;
output wire	sign_out;
output wire	[15:0] B0_out;
output wire	[15:0] B1_out;
output wire	[15:0] B2_out;
output wire	[15:0] B3_out;
output wire	[17:0] OV2_out;

wire	[15:0] b0_stg1_;
wire	[15:0] b0_stg2_;
wire	[15:0] b0_stg3_;
wire	[15:0] b0_stg4_;
wire	[15:0] b0_stg5_;
wire	[15:0] b0_stg6_;
wire	[15:0] b0_stg7_;
wire	[15:0] b1_stg2_;
wire	[15:0] b1_stg3_;
wire	[15:0] b1_stg4_;
wire	[15:0] b1_stg5_;
wire	[15:0] b1_stg6_;
wire	[15:0] b1_stg7_;
wire	[15:0] b2_stg4_;
wire	[15:0] b2_stg5_;
wire	[15:0] b2_stg6_;
wire	[15:0] b2_stg7_;
wire	[15:0] b3_stg6_;
wire	[15:0] b3_stg7_;
wire	[17:0] c0_stg1_;
wire	[17:0] c0_stg2_;
wire	[17:0] c0_stg3_;
wire	[17:0] c0_stg4_;
wire	c0_stg5;
wire	[17:0] c1_stg3_;
wire	[17:0] c1_stg4_;
wire	[17:0] c1_stg5_;
wire	c1_stg6;
wire	[17:0] c2_stg5_;
wire	[17:0] c2_stg6_;
wire	c2_stg7;
wire	[17:0] c3_stg7_;
wire	[17:0] reg_A4_stg1_;
wire	[17:0] reg_A4_stg2_;
wire	[17:0] reg_A5_stg1_;
wire	[17:0] regA3_stg0_;
wire	[17:0] regA3_stg1_;
wire	[17:0] regA3_stg2_;
wire	[17:0] regA3_stg3_;
wire	[17:0] regA4_stg0_;
wire	[17:0] regA5_stg0_;
wire	[17:0] regA6_stg0_;
wire	rnd_stg0;
wire	rnd_stg1;
wire	rnd_stg2;
wire	rnd_stg3;
wire	rnd_stg4;
wire	sign_stg0;
wire	sign_stg1;
wire	sign_stg2;
wire	sign_stg3;
wire	sign_stg4;
wire	sign_stg5;
wire	sign_stg6;
wire	sign_stg7;
wire	[0:15] SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = 0;




bin_add_const_3x2	b2v_3a_stg5(
	.clk(clk),
	.enable_bin(sign_stg4),
	.in_a(rnd_stg4),
	.in_b(b0_stg4_),
	.hi_sum(c0_stg5),
	.low_sum(b0_stg5_));
	defparam	b2v_3a_stg5.CARRY_WIDTH = 1;
	defparam	b2v_3a_stg5.CONST_VAL = 14087;
	defparam	b2v_3a_stg5.OP_WIDTH = 16;
	defparam	b2v_3a_stg5.SUM_WIDTH = 17;


bin_add_const_3x2	b2v_3a_stg6(
	.clk(clk),
	.enable_bin(sign_stg5),
	.in_a(c0_stg5),
	.in_b(b1_stg5_),
	.hi_sum(c1_stg6),
	.low_sum(b1_stg6_));
	defparam	b2v_3a_stg6.CARRY_WIDTH = 1;
	defparam	b2v_3a_stg6.CONST_VAL = 36804;
	defparam	b2v_3a_stg6.OP_WIDTH = 16;
	defparam	b2v_3a_stg6.SUM_WIDTH = 17;


bin_add_const_3x2	b2v_3a_stg7(
	.clk(clk),
	.enable_bin(sign_stg6),
	.in_a(c1_stg6),
	.in_b(b2_stg6_),
	.hi_sum(c2_stg7),
	.low_sum(b2_stg7_));
	defparam	b2v_3a_stg7.CARRY_WIDTH = 1;
	defparam	b2v_3a_stg7.CONST_VAL = 28157;
	defparam	b2v_3a_stg7.OP_WIDTH = 16;
	defparam	b2v_3a_stg7.SUM_WIDTH = 17;


reg_delay_3L	b2v_b0_stg6(
	.pin_name1(clk),
	.reg_in(b0_stg5_),
	.reg_out(b0_stg6_));
	defparam	b2v_b0_stg6.DATA_WIDTH = 16;


reg_delay_3L	b2v_b0_stg7(
	.pin_name1(clk),
	.reg_in(b0_stg6_),
	.reg_out(b0_stg7_));
	defparam	b2v_b0_stg7.DATA_WIDTH = 16;


reg_delay_3L	b2v_b0_stg8(
	.pin_name1(clk),
	.reg_in(b0_stg7_),
	.reg_out(B0_out));
	defparam	b2v_b0_stg8.DATA_WIDTH = 16;


reg_delay_3L	b2v_b1_stg7(
	.pin_name1(clk),
	.reg_in(b1_stg6_),
	.reg_out(b1_stg7_));
	defparam	b2v_b1_stg7.DATA_WIDTH = 16;


reg_delay_3L	b2v_b1_stg8(
	.pin_name1(clk),
	.reg_in(b1_stg7_),
	.reg_out(B1_out));
	defparam	b2v_b1_stg8.DATA_WIDTH = 16;


reg_delay_3L	b2v_b2_stg8(
	.pin_name1(clk),
	.reg_in(b2_stg7_),
	.reg_out(B2_out));
	defparam	b2v_b2_stg8.DATA_WIDTH = 16;


bin_add_const_3x2	b2v_b3_stg8(
	.clk(clk),
	.enable_bin(sign_stg7),
	.in_a(c2_stg7),
	.in_b(b3_stg7_),
	.hi_sum(OV1_out),
	.low_sum(B3_out));
	defparam	b2v_b3_stg8.CARRY_WIDTH = 1;
	defparam	b2v_b3_stg8.CONST_VAL = 27746;
	defparam	b2v_b3_stg8.OP_WIDTH = 16;
	defparam	b2v_b3_stg8.SUM_WIDTH = 17;


reg_delay_3L	b2v_bypass_stg2(
	.pin_name1(clk),
	.reg_in(c0_stg1_[15:0]),
	.reg_out(b1_stg2_));
	defparam	b2v_bypass_stg2.DATA_WIDTH = 16;


reg_delay_3L	b2v_bypass_stg4(
	.pin_name1(clk),
	.reg_in(c1_stg3_[15:0]),
	.reg_out(b2_stg4_));
	defparam	b2v_bypass_stg4.DATA_WIDTH = 16;


reg_delay_3L	b2v_bypass_stg6(
	.pin_name1(clk),
	.reg_in(c2_stg5_[15:0]),
	.reg_out(b3_stg6_));
	defparam	b2v_bypass_stg6.DATA_WIDTH = 16;


reg_delay_3L	b2v_bypass_stg8(
	.pin_name1(clk),
	.reg_in(c3_stg7_),
	.reg_out(OV2_out));
	defparam	b2v_bypass_stg8.DATA_WIDTH = 18;



bin_mult_add_2x2	b2v_m3_ma_stg4(
	.clk(clk),
	.in_a(b0_stg3_),
	.in_b(regA3_stg3_),
	.hi_sum(c0_stg4_),
	.low_sum(b0_stg4_));
	defparam	b2v_m3_ma_stg4.OP_CONST = 117649;
	defparam	b2v_m3_ma_stg4.OPA_WIDTH = 16;
	defparam	b2v_m3_ma_stg4.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m3_ma_stg5(
	.clk(clk),
	.in_a(b1_stg4_),
	.in_b(c0_stg4_),
	.hi_sum(c1_stg5_),
	.low_sum(b1_stg5_));
	defparam	b2v_m3_ma_stg5.OP_CONST = 117649;
	defparam	b2v_m3_ma_stg5.OPA_WIDTH = 16;
	defparam	b2v_m3_ma_stg5.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m3_ma_stg6(
	.clk(clk),
	.in_a(b2_stg5_),
	.in_b(c1_stg5_),
	.hi_sum(c2_stg6_),
	.low_sum(b2_stg6_));
	defparam	b2v_m3_ma_stg6.OP_CONST = 117649;
	defparam	b2v_m3_ma_stg6.OPA_WIDTH = 16;
	defparam	b2v_m3_ma_stg6.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m3_ma_stg7(
	.clk(clk),
	.in_a(b3_stg6_),
	.in_b(c2_stg6_),
	.hi_sum(c3_stg7_),
	.low_sum(b3_stg7_));
	defparam	b2v_m3_ma_stg7.OP_CONST = 117649;
	defparam	b2v_m3_ma_stg7.OPA_WIDTH = 16;
	defparam	b2v_m3_ma_stg7.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m4_ma_stg3(
	.clk(clk),
	.in_a(b0_stg2_),
	.in_b(reg_A4_stg2_),
	.hi_sum(c0_stg3_),
	.low_sum(b0_stg3_));
	defparam	b2v_m4_ma_stg3.OP_CONST = 177147;
	defparam	b2v_m4_ma_stg3.OPA_WIDTH = 16;
	defparam	b2v_m4_ma_stg3.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m4_ma_stg4(
	.clk(clk),
	.in_a(b1_stg3_),
	.in_b(c0_stg3_),
	.hi_sum(c1_stg4_),
	.low_sum(b1_stg4_));
	defparam	b2v_m4_ma_stg4.OP_CONST = 177147;
	defparam	b2v_m4_ma_stg4.OPA_WIDTH = 16;
	defparam	b2v_m4_ma_stg4.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m4_ma_stg5(
	.clk(clk),
	.in_a(b2_stg4_),
	.in_b(c1_stg4_),
	.hi_sum(c2_stg5_),
	.low_sum(b2_stg5_));
	defparam	b2v_m4_ma_stg5.OP_CONST = 177147;
	defparam	b2v_m4_ma_stg5.OPA_WIDTH = 16;
	defparam	b2v_m4_ma_stg5.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m5_ma_stg2(
	.clk(clk),
	.in_a(b0_stg1_),
	.in_b(reg_A5_stg1_),
	.hi_sum(c0_stg2_),
	.low_sum(b0_stg2_));
	defparam	b2v_m5_ma_stg2.OP_CONST = 262027;
	defparam	b2v_m5_ma_stg2.OPA_WIDTH = 16;
	defparam	b2v_m5_ma_stg2.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m5_ma_stg3(
	.clk(clk),
	.in_a(b1_stg2_),
	.in_b(c0_stg2_),
	.hi_sum(c1_stg3_),
	.low_sum(b1_stg3_));
	defparam	b2v_m5_ma_stg3.OP_CONST = 262027;
	defparam	b2v_m5_ma_stg3.OPA_WIDTH = 16;
	defparam	b2v_m5_ma_stg3.OPB_WIDTH = 18;


bin_mult_add_2x2	b2v_m6_ma_stg1(
	.clk(clk),
	.in_a(SYNTHESIZED_WIRE_0),
	.in_b(regA6_stg0_),
	.hi_sum(c0_stg1_),
	.low_sum(b0_stg1_));
	defparam	b2v_m6_ma_stg1.OP_CONST = 262049;
	defparam	b2v_m6_ma_stg1.OPA_WIDTH = 16;
	defparam	b2v_m6_ma_stg1.OPB_WIDTH = 18;


register	b2v_reg_A3(
	.clk(clk),
	.reg_in(mr_A3_in),
	.reg_out(regA3_stg0_));
	defparam	b2v_reg_A3.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg_A3_stg1(
	.pin_name1(clk),
	.reg_in(regA3_stg0_),
	.reg_out(regA3_stg1_));
	defparam	b2v_reg_A3_stg1.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg_A3_stg2(
	.pin_name1(clk),
	.reg_in(regA3_stg1_),
	.reg_out(regA3_stg2_));
	defparam	b2v_reg_A3_stg2.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg_A3_stg3(
	.pin_name1(clk),
	.reg_in(regA3_stg2_),
	.reg_out(regA3_stg3_));
	defparam	b2v_reg_A3_stg3.DATA_WIDTH = 18;


register	b2v_reg_A4(
	.clk(clk),
	.reg_in(mr_A4_in),
	.reg_out(regA4_stg0_));
	defparam	b2v_reg_A4.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg_A4_stg1(
	.pin_name1(clk),
	.reg_in(regA4_stg0_),
	.reg_out(reg_A4_stg1_));
	defparam	b2v_reg_A4_stg1.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg_A4_stg2(
	.pin_name1(clk),
	.reg_in(reg_A4_stg1_),
	.reg_out(reg_A4_stg2_));
	defparam	b2v_reg_A4_stg2.DATA_WIDTH = 18;


register	b2v_reg_A5(
	.clk(clk),
	.reg_in(mr_A5_in),
	.reg_out(regA5_stg0_));
	defparam	b2v_reg_A5.DATA_WIDTH = 18;


reg_delay_3L	b2v_reg_A5_stg1(
	.pin_name1(clk),
	.reg_in(regA5_stg0_),
	.reg_out(reg_A5_stg1_));
	defparam	b2v_reg_A5_stg1.DATA_WIDTH = 18;


register	b2v_reg_A6(
	.clk(clk),
	.reg_in(mr_A6_in),
	.reg_out(regA6_stg0_));
	defparam	b2v_reg_A6.DATA_WIDTH = 18;


register	b2v_reg_rnd_in(
	.clk(clk),
	.reg_in(rnd_in),
	.reg_out(rnd_stg0));
	defparam	b2v_reg_rnd_in.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_rnd_in_stg1(
	.pin_name1(clk),
	.reg_in(rnd_stg0),
	.reg_out(rnd_stg1));
	defparam	b2v_reg_rnd_in_stg1.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_rnd_in_stg2(
	.pin_name1(clk),
	.reg_in(rnd_stg1),
	.reg_out(rnd_stg2));
	defparam	b2v_reg_rnd_in_stg2.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_rnd_in_stg3(
	.pin_name1(clk),
	.reg_in(rnd_stg2),
	.reg_out(rnd_stg3));
	defparam	b2v_reg_rnd_in_stg3.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_rnd_in_stg4(
	.pin_name1(clk),
	.reg_in(rnd_stg3),
	.reg_out(rnd_stg4));
	defparam	b2v_reg_rnd_in_stg4.DATA_WIDTH = 1;


register	b2v_reg_sign_in(
	.clk(clk),
	.reg_in(sign_in),
	.reg_out(sign_stg0));
	defparam	b2v_reg_sign_in.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_sign_in_stg1(
	.pin_name1(clk),
	.reg_in(sign_stg0),
	.reg_out(sign_stg1));
	defparam	b2v_reg_sign_in_stg1.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_sign_in_stg2(
	.pin_name1(clk),
	.reg_in(sign_stg1),
	.reg_out(sign_stg2));
	defparam	b2v_reg_sign_in_stg2.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_sign_in_stg3(
	.pin_name1(clk),
	.reg_in(sign_stg2),
	.reg_out(sign_stg3));
	defparam	b2v_reg_sign_in_stg3.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_sign_in_stg4(
	.pin_name1(clk),
	.reg_in(sign_stg3),
	.reg_out(sign_stg4));
	defparam	b2v_reg_sign_in_stg4.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_sign_in_stg5(
	.pin_name1(clk),
	.reg_in(sign_stg4),
	.reg_out(sign_stg5));
	defparam	b2v_reg_sign_in_stg5.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_sign_in_stg6(
	.pin_name1(clk),
	.reg_in(sign_stg5),
	.reg_out(sign_stg6));
	defparam	b2v_reg_sign_in_stg6.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_sign_in_stg7(
	.pin_name1(clk),
	.reg_in(sign_stg6),
	.reg_out(sign_stg7));
	defparam	b2v_reg_sign_in_stg7.DATA_WIDTH = 1;


reg_delay_3L	b2v_reg_sign_in_stg8(
	.pin_name1(clk),
	.reg_in(sign_stg7),
	.reg_out(sign_out));
	defparam	b2v_reg_sign_in_stg8.DATA_WIDTH = 1;


endmodule
