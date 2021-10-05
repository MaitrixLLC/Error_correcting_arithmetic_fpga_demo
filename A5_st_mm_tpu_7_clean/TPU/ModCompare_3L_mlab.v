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
// CREATED		"Thu Aug 09 17:06:30 2018"

// ** REGENERATING THIS MODULUE FROM BDF FILE WILL DELETE THE HAND CRATED PARAMTERIZATION

module ModCompare_3L_mlab #(parameter DATA_WIDTH=18, parameter MCONSTANT=0) 
(
	clk,
	in_A_0_,
	sign_in,
	sign_result
);

//parameter	DATA_WIDTH = 18;
//parameter	MCONSTANT = 0;

input wire	clk;
input wire	[17:0] in_A_0_;
input wire	[1:0] sign_in;
output wire	[1:0] sign_result;

wire	[1:0] prior_result;
wire	[1:0] reg1_;
wire	[1:0] reg2_;
wire	[1:0] sign_comp;


register	b2v_reg1(
	.clk(clk),
	.reg_in(sign_in),
	.reg_out(prior_result));
	defparam	b2v_reg1.DATA_WIDTH = 2;


compare_1L	b2v_reg2(
	.clk(clk),
	.A(in_A_0_),
	.sign_result(sign_comp));
	defparam	b2v_reg2.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_reg2.MCONSTANT = MCONSTANT;


compare_logic	b2v_reg3(
	.clk(clk),
	.new_sign(sign_comp),
	.prior_sign(prior_result),
	.result(reg1_));


register	b2v_reg4(
	.clk(clk),
	.reg_in(reg1_),
	.reg_out(reg2_));
	defparam	b2v_reg4.DATA_WIDTH = 2;

assign	sign_result = reg2_;

endmodule
