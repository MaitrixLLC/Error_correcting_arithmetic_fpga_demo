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
// CREATED		"Fri Mar 16 21:46:26 2018"

// Custom parameterization added, E. Olsen

module ModAddOne_4L  #(parameter DATA_WIDTH=18, parameter MODULUS=177147)
(
	rnd_in,
	clk,
	digit_in_,
	result
);

//parameter	DATA_WIDTH = 18;
//parameter	MODULUS = 177147;

input wire	rnd_in;
input wire	clk;
input wire	[17:0] digit_in_;
output wire	[17:0] result;

wire	[15:0] round_in;
wire	[17:0] SYNTHESIZED_WIRE_0;
wire	[0:0] SYNTHESIZED_WIRE_1;
wire	[17:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_4;
wire	[17:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;





register	b2v_inst1(
	.clk(clk),
	.reg_in(digit_in_),
	.reg_out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst1.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst2(
	.clk(clk),
	.reg_in(rnd_in),
	.reg_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst2.DATA_WIDTH = 1;


register	b2v_inst3(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_0),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst3.DATA_WIDTH = DATA_WIDTH;


register	b2v_inst4(
	.clk(clk),
	.reg_in(SYNTHESIZED_WIRE_1),
	.reg_out(round_in[0]));
	defparam	b2v_inst4.DATA_WIDTH = 1;



ModAdd_2x2	b2v_inst6(
	.clk(clk),
	.A(SYNTHESIZED_WIRE_2),
	.B(round_in),
	.sign_out(SYNTHESIZED_WIRE_6),
	.result_A(SYNTHESIZED_WIRE_4),
	.result_B(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst6.DATA_WIDTH = DATA_WIDTH;
	defparam	b2v_inst6.MODULUS = MODULUS;


Select_2x1	b2v_inst7(
	.clk(clk),
	.sel(SYNTHESIZED_WIRE_3),
	.A(SYNTHESIZED_WIRE_4),
	.B(SYNTHESIZED_WIRE_5),
	.result(result));
	defparam	b2v_inst7.DATA_WIDTH = DATA_WIDTH;

assign	SYNTHESIZED_WIRE_3 =  ~SYNTHESIZED_WIRE_6;

assign	round_in[15:1] = 15'b000000000000000;

endmodule
