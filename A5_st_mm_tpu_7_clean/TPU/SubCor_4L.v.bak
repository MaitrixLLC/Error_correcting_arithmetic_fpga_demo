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
// CREATED		"Tue Mar 13 19:53:17 2018"

// Custom parameterization added, E. Olsen

module SubCor_4L #(parameter	DATA_WIDTH = 18, parameter	DIGIT_CORRECT = 33343, parameter	MODULUS = 177147)
(
	clk,
	Digit_in_,
	sign_in,
	result
);


input wire	clk;
input wire	[17:0] Digit_in_;
input wire	[1:0] sign_in;
output wire	[17:0] result;

wire	[17:0] SYNTHESIZED_WIRE_0;
wire	[17:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[17:0] SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_4;



CorSel_2L	b2v_inst_CorSel(
	.clk(clk),
	.A(Digit_in_),
	.sign_in(sign_in),
	.A_out(SYNTHESIZED_WIRE_0),
	.cor_result(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst_CorSel.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst_CorSel.DIGIT_CORRECT = DIGIT_CORRECT;


ModSub_2x2	b2v_inst_Modsub(
	.clk(clk),
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	.sign_out(SYNTHESIZED_WIRE_2),
	.result_A(SYNTHESIZED_WIRE_3),
	.result_B(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst_Modsub.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst_Modsub.MODULUS = MODULUS;


Select_2x1	b2v_inst_select(
	.clk(clk),
	.sel(SYNTHESIZED_WIRE_2),
	.A(SYNTHESIZED_WIRE_3),
	.B(SYNTHESIZED_WIRE_4),
	.result(result));
	defparam	b2v_inst_select.DATA_WIDTH = DATA_WIDTH;


endmodule
