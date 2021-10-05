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
// CREATED		"Sat Mar 17 17:33:04 2018"

// added parameters, E. Olsen

module reg_delay_5L #(parameter DATA_WIDTH=18)
(
	clk,
	reg_in,
	reg_out
);

//parameter	DATA_WIDTH = 18;

input wire	clk;
input wire	[17:0] reg_in;
output wire	[17:0] reg_out;

wire	[17:0] SYNTHESIZED_WIRE_0;
wire	[17:0] SYNTHESIZED_WIRE_1;
wire	[17:0] SYNTHESIZED_WIRE_2;
wire	[17:0] SYNTHESIZED_WIRE_3;





register	b2v_inst_reg1(
	.clk(clk),
	.reg_in(reg_in),
	.reg_out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst_reg1.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_reg2(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_0),
	.reg_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst_reg2.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_reg3(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_1),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst_reg3.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_reg4(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_2),
	.reg_out(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst_reg4.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst_reg5(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_3),
	.reg_out(reg_out));
	defparam	b2v_inst_reg5.DATA_WIDTH = DATA_WIDTH;


endmodule
