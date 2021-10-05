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
// CREATED		"Sun Sep 01 09:43:50 2019"

module reg_delay_6L_aclr  #(parameter DATA_WIDTH=18)  (
	clk,
	aclr,
	reg_in,
	reg_out
);

//parameter	DATA_WIDTH = 18;

input wire	clk;
input wire	aclr;
input wire	[DATA_WIDTH-1:0] reg_in;
output wire	[DATA_WIDTH-1:0] reg_out;

wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_0;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_1;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_2;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_3;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_4;





reg_aclr	b2v_reg1(
	.clk(clk),
	.aclr(aclr),
	.reg_in(reg_in),
	.reg_out(SYNTHESIZED_WIRE_0));
	defparam	b2v_reg1.DATA_WIDTH = DATA_WIDTH;


reg_aclr	b2v_reg2(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_0),
	.reg_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_reg2.DATA_WIDTH = DATA_WIDTH;


reg_aclr	b2v_reg3(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_1),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_reg3.DATA_WIDTH = DATA_WIDTH;


reg_aclr	b2v_reg4(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_2),
	.reg_out(SYNTHESIZED_WIRE_3));
	defparam	b2v_reg4.DATA_WIDTH = DATA_WIDTH;


reg_aclr	b2v_reg5(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_3),
	.reg_out(SYNTHESIZED_WIRE_4));
	defparam	b2v_reg5.DATA_WIDTH = DATA_WIDTH;


reg_aclr	b2v_reg6(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_4),
	.reg_out(reg_out));
	defparam	b2v_reg6.DATA_WIDTH = DATA_WIDTH;


endmodule
