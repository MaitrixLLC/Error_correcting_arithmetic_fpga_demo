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
