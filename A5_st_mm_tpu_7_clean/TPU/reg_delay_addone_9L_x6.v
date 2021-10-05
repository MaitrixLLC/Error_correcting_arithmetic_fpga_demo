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
// CREATED		"Sat Mar 17 18:26:44 2018"

module reg_delay_addone_9L_x6(
	clk,
	carry_in,
	reg2_in,
	reg3_in,
	reg4_in,
	reg5_in,
	reg6_in,
	reg7_in,
	reg2_out,
	reg3_out,
	reg4_out,
	reg5_out,
	reg6_out,
	reg7_out
);

parameter	DATA_WIDTH = 18;

input wire	clk;
input wire	carry_in;
input wire	[17:0] reg2_in;
input wire	[17:0] reg3_in;
input wire	[17:0] reg4_in;
input wire	[17:0] reg5_in;
input wire	[17:0] reg6_in;
input wire	[17:0] reg7_in;
output wire	[17:0] reg2_out;
output wire	[17:0] reg3_out;
output wire	[17:0] reg4_out;
output wire	[17:0] reg5_out;
output wire	[17:0] reg6_out;
output wire	[17:0] reg7_out;

wire	[17:0] SYNTHESIZED_WIRE_0;
wire	[17:0] SYNTHESIZED_WIRE_1;
wire	[17:0] SYNTHESIZED_WIRE_2;
wire	[17:0] SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_4;
wire	[17:0] SYNTHESIZED_WIRE_5;
wire	[17:0] SYNTHESIZED_WIRE_6;
wire	[17:0] SYNTHESIZED_WIRE_7;
wire	[17:0] SYNTHESIZED_WIRE_8;
wire	[17:0] SYNTHESIZED_WIRE_9;
wire	[17:0] SYNTHESIZED_WIRE_10;
wire	[17:0] SYNTHESIZED_WIRE_11;
wire	[17:0] SYNTHESIZED_WIRE_12;
wire	[17:0] SYNTHESIZED_WIRE_13;
wire	[17:0] SYNTHESIZED_WIRE_14;
wire	[17:0] SYNTHESIZED_WIRE_15;
wire	[17:0] SYNTHESIZED_WIRE_16;
wire	[17:0] SYNTHESIZED_WIRE_17;
wire	[17:0] SYNTHESIZED_WIRE_18;
wire	[17:0] SYNTHESIZED_WIRE_19;
wire	[17:0] SYNTHESIZED_WIRE_20;
wire	[17:0] SYNTHESIZED_WIRE_21;
wire	[17:0] SYNTHESIZED_WIRE_22;
wire	[17:0] SYNTHESIZED_WIRE_23;
wire	[17:0] SYNTHESIZED_WIRE_24;
wire	[17:0] SYNTHESIZED_WIRE_25;
wire	[17:0] SYNTHESIZED_WIRE_26;
wire	[17:0] SYNTHESIZED_WIRE_27;
wire	[17:0] SYNTHESIZED_WIRE_28;
wire	[17:0] SYNTHESIZED_WIRE_29;
wire	[17:0] SYNTHESIZED_WIRE_30;
wire	[17:0] SYNTHESIZED_WIRE_31;
wire	[17:0] SYNTHESIZED_WIRE_32;
wire	[17:0] SYNTHESIZED_WIRE_33;
wire	[17:0] SYNTHESIZED_WIRE_34;
wire	[17:0] SYNTHESIZED_WIRE_35;





reg_delay_5L	b2v_inst1(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_0),
	.reg_out(SYNTHESIZED_WIRE_33));
	defparam	b2v_inst1.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst10(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_1),
	.reg_out(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst10.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst11(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_2),
	.reg_out(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst11.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst12(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_3),
	.reg_out(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst12.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst13(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_4),
	.reg_out(SYNTHESIZED_WIRE_10));
	defparam	b2v_inst13.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst14(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_5),
	.reg_out(SYNTHESIZED_WIRE_12));
	defparam	b2v_inst14.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst15(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_6),
	.reg_out(SYNTHESIZED_WIRE_13));
	defparam	b2v_inst15.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst16(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_7),
	.reg_out(SYNTHESIZED_WIRE_14));
	defparam	b2v_inst16.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst17(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_8),
	.reg_out(SYNTHESIZED_WIRE_15));
	defparam	b2v_inst17.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst18(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_9),
	.reg_out(SYNTHESIZED_WIRE_16));
	defparam	b2v_inst18.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst19(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_10),
	.reg_out(SYNTHESIZED_WIRE_17));
	defparam	b2v_inst19.DATA_WIDTH = 18;


reg_delay_5L	b2v_inst2(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_11),
	.reg_out(SYNTHESIZED_WIRE_34));
	defparam	b2v_inst2.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst20(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_12),
	.reg_out(SYNTHESIZED_WIRE_18));
	defparam	b2v_inst20.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst21(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_13),
	.reg_out(SYNTHESIZED_WIRE_19));
	defparam	b2v_inst21.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst22(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_14),
	.reg_out(SYNTHESIZED_WIRE_20));
	defparam	b2v_inst22.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst23(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_15),
	.reg_out(SYNTHESIZED_WIRE_21));
	defparam	b2v_inst23.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst24(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_16),
	.reg_out(SYNTHESIZED_WIRE_23));
	defparam	b2v_inst24.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst25(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_17),
	.reg_out(SYNTHESIZED_WIRE_24));
	defparam	b2v_inst25.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst26(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_18),
	.reg_out(SYNTHESIZED_WIRE_25));
	defparam	b2v_inst26.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst27(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_19),
	.reg_out(SYNTHESIZED_WIRE_26));
	defparam	b2v_inst27.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst28(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_20),
	.reg_out(SYNTHESIZED_WIRE_27));
	defparam	b2v_inst28.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst29(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_21),
	.reg_out(SYNTHESIZED_WIRE_28));
	defparam	b2v_inst29.DATA_WIDTH = 18;


reg_delay_5L	b2v_inst3(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_22),
	.reg_out(SYNTHESIZED_WIRE_35));
	defparam	b2v_inst3.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst30(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_23),
	.reg_out(SYNTHESIZED_WIRE_29));
	defparam	b2v_inst30.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst31(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_24),
	.reg_out(reg2_out));
	defparam	b2v_inst31.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst32(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_25),
	.reg_out(reg3_out));
	defparam	b2v_inst32.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst33(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_26),
	.reg_out(reg4_out));
	defparam	b2v_inst33.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst34(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_27),
	.reg_out(reg5_out));
	defparam	b2v_inst34.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst35(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_28),
	.reg_out(reg6_out));
	defparam	b2v_inst35.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst36(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_29),
	.reg_out(reg7_out));
	defparam	b2v_inst36.DATA_WIDTH = 18;


reg_delay_5L	b2v_inst4(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_30),
	.reg_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst4.DATA_WIDTH = 18;


reg_delay_5L	b2v_inst5(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_31),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst5.DATA_WIDTH = 18;


reg_delay_5L	b2v_inst6(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_32),
	.reg_out(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst6.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst7(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_33),
	.reg_out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst7.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst8(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_34),
	.reg_out(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst8.DATA_WIDTH = 18;


reg_delay_9L	b2v_inst9(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_35),
	.reg_out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst9.DATA_WIDTH = 18;


ModAddOne_4L	b2v_inst_modaddone_1(
	.rnd_in(carry_in),
	.clk(clk),
	.digit_in_(reg2_in),
	.result(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst_modaddone_1.DATA_WIDTH = 18;
	defparam	b2v_inst_modaddone_1.MODULUS = 177147;


ModAddOne_4L	b2v_inst_modaddone_2(
	.rnd_in(carry_in),
	.clk(clk),
	.digit_in_(reg3_in),
	.result(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst_modaddone_2.DATA_WIDTH = 18;
	defparam	b2v_inst_modaddone_2.MODULUS = 262111;


ModAddOne_4L	b2v_inst_modaddone_3(
	.rnd_in(carry_in),
	.clk(clk),
	.digit_in_(reg4_in),
	.result(SYNTHESIZED_WIRE_22));
	defparam	b2v_inst_modaddone_3.DATA_WIDTH = 18;
	defparam	b2v_inst_modaddone_3.MODULUS = 262121;


ModAddOne_4L	b2v_inst_modaddone_4(
	.rnd_in(carry_in),
	.clk(clk),
	.digit_in_(reg5_in),
	.result(SYNTHESIZED_WIRE_30));
	defparam	b2v_inst_modaddone_4.DATA_WIDTH = 18;
	defparam	b2v_inst_modaddone_4.MODULUS = 262127;


ModAddOne_4L	b2v_inst_modaddone_5(
	.rnd_in(carry_in),
	.clk(clk),
	.digit_in_(reg6_in),
	.result(SYNTHESIZED_WIRE_31));
	defparam	b2v_inst_modaddone_5.DATA_WIDTH = 18;
	defparam	b2v_inst_modaddone_5.MODULUS = 262133;


ModAddOne_4L	b2v_inst_modaddone_6(
	.rnd_in(carry_in),
	.clk(clk),
	.digit_in_(reg7_in),
	.result(SYNTHESIZED_WIRE_32));
	defparam	b2v_inst_modaddone_6.DATA_WIDTH = 18;
	defparam	b2v_inst_modaddone_6.MODULUS = 262139;


endmodule
