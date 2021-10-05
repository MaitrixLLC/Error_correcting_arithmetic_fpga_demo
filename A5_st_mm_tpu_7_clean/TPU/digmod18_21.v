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
// CREATED		"Wed Sep 05 18:02:14 2018"


// NOTE: RECOMPILING THE BDF TO HDL WILL OVERWRITE THE CUSTOM PARAMTERIZATION OF THIS FILE

module digmod18_21		#( parameter	DATA_WIDTH = 18,
									parameter	LUT_WIDTH = 5,
									parameter	TRUNC_WIDTH = 16,
									parameter	FILE = "partmod_lut_d2_s16_r32.hex",
									parameter	MODULUS = 177147)
(
	clk,
	dig_in_,
	dig_out_
);


input wire	clk;
input wire	[TRUNC_WIDTH+LUT_WIDTH-1:0] dig_in_;
output wire	[DATA_WIDTH-1:0] dig_out_;

wire	[DATA_WIDTH-1:0] lut1_;
wire	[TRUNC_WIDTH-1:0] reg1_;
wire	[DATA_WIDTH-1:0] reg2_;
wire	[DATA_WIDTH-1:0] reg3_;
wire	[DATA_WIDTH-1:0] reg4_;
wire	sign_out;
wire	SYNTHESIZED_WIRE_0;


Decomp_1x2_1L	b2v_Decomp_1x2(
	.clk(clk),
	.in_a(dig_in_),
	.lut_out(lut1_),
	.trunc_out(reg1_));
	defparam	b2v_Decomp_1x2.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_Decomp_1x2.FILE = FILE;
	defparam	b2v_Decomp_1x2.LUT_WIDTH = LUT_WIDTH;
	defparam	b2v_Decomp_1x2.TRUNC_WIDTH = TRUNC_WIDTH;


ModAdd_2x2	b2v_inst_Modadd(
	.clk(clk),
	.A(lut1_),
	.B(reg1_),
	.sign_out(sign_out),
	.result_A(reg2_),
	.result_B(reg3_));
	defparam	b2v_inst_Modadd.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst_Modadd.MODULUS = MODULUS;


Select_2x1	b2v_inst_select_2x1(
	.clk(clk),
	.sel(SYNTHESIZED_WIRE_0),
	.A(reg2_),
	.B(reg3_),
	.result(reg4_));
	defparam	b2v_inst_select_2x1.DATA_WIDTH = DATA_WIDTH;

assign	SYNTHESIZED_WIRE_0 =  ~sign_out;

assign	dig_out_ = reg4_;

endmodule
