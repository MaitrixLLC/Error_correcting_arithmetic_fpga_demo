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
// CREATED		"Sun Aug 11 16:57:26 2019"

module RFracConv18_16(
	clk,
	RNS_D1_in,
	RNS_D2_in,
	RNS_D3_in,
	RNS_D4_in,
	RNS_D5_in,
	RNS_D6_in,
	ov1_out,
	sign_out,
	b0_out,
	b1_out,
	b2_out,
	b3_out,
	ov2_out
);


input wire	clk;
input wire	[17:0] RNS_D1_in;
input wire	[17:0] RNS_D2_in;
input wire	[17:0] RNS_D3_in;
input wire	[17:0] RNS_D4_in;
input wire	[17:0] RNS_D5_in;
input wire	[17:0] RNS_D6_in;
output wire	ov1_out;
output wire	sign_out;
output wire	[15:0] b0_out;
output wire	[15:0] b1_out;
output wire	[15:0] b2_out;
output wire	[15:0] b3_out;
output wire	[17:0] ov2_out;

wire	[1:0] mr_sign;
wire	[17:0] mrA3_out;
wire	[17:0] mrA4_out;
wire	[17:0] mrA5_out;
wire	[17:0] mrA6_out;
wire	SYNTHESIZED_WIRE_0;





RFracConv18_16_stg2	b2v_inst1(
	.clk(clk),
	.sign_in(mr_sign[1]),
	.rnd_in(SYNTHESIZED_WIRE_0),
	.mr_A3_in(mrA3_out),
	.mr_A4_in(mrA4_out),
	.mr_A5_in(mrA5_out),
	.mr_A6_in(mrA6_out),
	.OV1_out(ov1_out),
	.sign_out(sign_out),
	.B0_out(b0_out),
	.B1_out(b1_out),
	.B2_out(b2_out),
	.B3_out(b3_out),
	.OV2_out(ov2_out));


RFracConv18_16_stg1	b2v_inst2(
	.clk(clk),
	.RNS_D1_in(RNS_D1_in),
	.RNS_D2_in(RNS_D2_in),
	.RNS_D3_in(RNS_D3_in),
	.RNS_D4_in(RNS_D4_in),
	.RNS_D5_in(RNS_D5_in),
	.RNS_D6_in(RNS_D6_in),
	.round_out(SYNTHESIZED_WIRE_0),
	.mr_A3_out(mrA3_out),
	.mr_A4_out(mrA4_out),
	.mr_A5_out(mrA5_out),
	.mr_A6_out(mrA6_out),
	.sign_out(mr_sign));


endmodule
