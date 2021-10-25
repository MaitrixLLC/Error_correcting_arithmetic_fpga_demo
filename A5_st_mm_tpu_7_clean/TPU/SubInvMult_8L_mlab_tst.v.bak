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
// CREATED		"Tue Mar 06 14:19:58 2018"

module SubInvMult_8L_mlab_tst(
	clk,
	dataA_,
	dataB_,
	mod_result
);


input wire	clk;
input wire	[17:0] dataA_;
input wire	[17:0] dataB_;
output wire	[17:0] mod_result;






SubInvMult_8L_mlab	b2v_inst(
	.clk(clk),
	.dataA_in(dataA_),
	.dataB_in(dataB_),
	.mod_data_out(mod_result));
	defparam	b2v_inst.DATA_WIDTH = 18;
	defparam	b2v_inst.FILE1 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst.FILE2 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst.FILE3 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst.FILE4 = "data2.hex";
	defparam	b2v_inst.MODULUS = 177147;


endmodule
