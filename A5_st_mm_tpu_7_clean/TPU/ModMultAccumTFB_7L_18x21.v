//
//  Copyright (c) 2012-2021, MaitrixLLC and OIR
//
//  This source code is for demonstration purposes only and remains the property of MaitrixLLC.
//  All rights reserved;
//
//  This source code licensed under the Creative Commons License:
//  -->  Attribution-NonCommercial-NoDerivs;  CC BY-NC-ND
//
//  Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. 
//  You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
//
//  NonCommercial — You may not use the material for commercial purposes.
//
//  NoDerivatives — If you remix, transform, or build upon the material, you may not distribute the modified material.
//
//	 Some or all of this material is protected under the following US patents:  
//  10,992,314, 10,649,737, 10,649,736, 10,599,398, 10,387,122, 9,712,185, 9,395,952, 9,081,608, 9,311,050
//
//  Contact info@maitrix.com for more information about licensing
//

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
// CREATED		"Wed Aug 07 21:31:17 2019"



module ModMultAccumTFB_7L_18x21  #(parameter	FILE_S16 = "partmod_lut_d2_s16.hex",
parameter	FILE_S21 = "partmod_lut_d2_s21.hex",
parameter	FILE_S26 = "partmod_lut_d2_s26.hex",
parameter	FILE_S31 = "partmod_lut_d2_s31.hex",
parameter	ROM_FILE = "partmodmix_lut_d2.hex"
)

(
	clk,
	trunc_ena,
	clear_ena,
	IN_A,
	IN_B,
	hold_lat_ena,
	mod_result
);



input wire	clk;
input wire	trunc_ena;
input wire	clear_ena;
input wire	[17:0] IN_A;
input wire	[17:0] IN_B;
output wire	hold_lat_ena;
output wire	[20:0] mod_result;

wire	clear_ena_dly7;
wire	[17:0] lut1_;
wire	[17:0] lut2_;
wire	[17:0] lut3_;
wire	[17:0] lut4_;
wire	[17:0] lut5_;
wire	[35:0] mult_out;
wire	[15:0] reg1_;
wire	[4:0] reg2_;
wire	[4:0] reg3_;
wire	[19:0] reg4_;
wire	[18:0] reg6_;
wire	[2:0] trunc_adr_;
wire	trunc_ena_dly7;


adder_3in	b2v_adder3_reg4(
	.clk(clk),
	.in_a(reg1_),
	.in_b(lut1_),
	.in_c(lut2_),
	.reg_sum(reg4_));
	defparam	b2v_adder3_reg4.OPA_WIDTH = 16;
	defparam	b2v_adder3_reg4.OPB_WIDTH = 18;
	defparam	b2v_adder3_reg4.OPC_WIDTH = 18;
	defparam	b2v_adder3_reg4.SUM_WIDTH = 20;


adder_3in_TFB	b2v_adder4_fb(
	.clk(clk),
	.in_a(reg4_),
	.in_b(lut3_),
	.in_c(lut4_),
	.lut_adr(trunc_adr_),
	.lut_sum(lut5_),
	.trunc_sum(reg6_));
	defparam	b2v_adder4_fb.ROM_FILE = ROM_FILE;


adder_accum21_TFB_C5	b2v_adder_accum(
	.clk(clk),
	.load_ena(clear_ena_dly7),
	.trunc_ena(trunc_ena_dly7),
	.in_a(reg6_),
	.in_b(lut5_),
	.mod_result(mod_result),
	.trunc_adr(trunc_adr_));


reg_delay_7L	b2v_inst2(
	.clk(clk),
	.reg_in(clear_ena),
	.reg_out(clear_ena_dly7));
	defparam	b2v_inst2.DATA_WIDTH = 1;


reg_delay_7L	b2v_inst3(
	.clk(clk),
	.reg_in(trunc_ena),
	.reg_out(trunc_ena_dly7));
	defparam	b2v_inst3.DATA_WIDTH = 1;


RomLUT_mlab	b2v_lut1(
	.clk(clk),
	.addr(mult_out[20:16]),
	.data(lut1_));
	defparam	b2v_lut1.ADDR_WIDTH = 5;
	defparam	b2v_lut1.DATA_WIDTH = 18;
	defparam	b2v_lut1.FILE = FILE_S16;


RomLUT_mlab	b2v_lut2(
	.clk(clk),
	.addr(mult_out[25:21]),
	.data(lut2_));
	defparam	b2v_lut2.ADDR_WIDTH = 5;
	defparam	b2v_lut2.DATA_WIDTH = 18;
	defparam	b2v_lut2.FILE = FILE_S21;


RomLUT_mlab	b2v_lut3(
	.clk(clk),
	.addr(reg2_),
	.data(lut3_));
	defparam	b2v_lut3.ADDR_WIDTH = 5;
	defparam	b2v_lut3.DATA_WIDTH = 18;
	defparam	b2v_lut3.FILE = FILE_S26;


RomLUT_mlab	b2v_lut4(
	.clk(clk),
	.addr(reg3_),
	.data(lut4_));
	defparam	b2v_lut4.ADDR_WIDTH = 5;
	defparam	b2v_lut4.DATA_WIDTH = 18;
	defparam	b2v_lut4.FILE = FILE_S31;


mult_reg18x18	b2v_mult1(
	.clk(clk),
	.op_a(IN_A),
	.op_b(IN_B),
	.result(mult_out));


register	b2v_reg1(
	.clk(clk),
	.reg_in(mult_out[15:0]),
	.reg_out(reg1_));
	defparam	b2v_reg1.DATA_WIDTH = 16;


register	b2v_reg2(
	.clk(clk),
	.reg_in(mult_out[30:26]),
	.reg_out(reg2_));
	defparam	b2v_reg2.DATA_WIDTH = 5;


register	b2v_reg3(
	.clk(clk),
	.reg_in(mult_out[35:31]),
	.reg_out(reg3_));
	defparam	b2v_reg3.DATA_WIDTH = 5;

assign	hold_lat_ena = clear_ena_dly7;

endmodule
