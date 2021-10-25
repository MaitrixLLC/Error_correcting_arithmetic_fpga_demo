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
