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
// CREATED		"Sun Sep 01 17:52:55 2019"

// NOTE: REGENERATING THIS FILE WILL DELETE CUSTOM PARAEMTERIZATION !!

module reg_delay_82L_aclr #(parameter DATA_WIDTH = 1) (
	clk,
	aclr,
	reg_in,
	reg_out
);

//parameter	DATA_WIDTH = 1;

input wire	clk;
input wire	aclr;
input wire	[DATA_WIDTH-1:0] reg_in;
output wire	[DATA_WIDTH-1:0] reg_out;

wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_0;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_1;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_2;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_3;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_4;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_5;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_6;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_7;





reg_delay_10L_aclr	b2v_inst1(
	.clk(clk),
	.aclr(aclr),
	.reg_in(reg_in),
	.reg_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst1.DATA_WIDTH = DATA_WIDTH;


reg_delay_2L_aclr	b2v_inst10(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_0),
	.reg_out(reg_out));
	defparam	b2v_inst10.DATA_WIDTH = DATA_WIDTH;


reg_delay_10L_aclr	b2v_inst3(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_1),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst3.DATA_WIDTH = DATA_WIDTH;


reg_delay_10L_aclr	b2v_inst4(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_2),
	.reg_out(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst4.DATA_WIDTH = DATA_WIDTH;


reg_delay_10L_aclr	b2v_inst5(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_3),
	.reg_out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst5.DATA_WIDTH = DATA_WIDTH;


reg_delay_10L_aclr	b2v_inst6(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_4),
	.reg_out(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst6.DATA_WIDTH = DATA_WIDTH;


reg_delay_10L_aclr	b2v_inst7(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_5),
	.reg_out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst7.DATA_WIDTH = DATA_WIDTH;


reg_delay_10L_aclr	b2v_inst8(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_6),
	.reg_out(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst8.DATA_WIDTH = DATA_WIDTH;


reg_delay_10L_aclr	b2v_inst9(
	.clk(clk),
	.aclr(aclr),
	.reg_in(SYNTHESIZED_WIRE_7),
	.reg_out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst9.DATA_WIDTH = DATA_WIDTH;


endmodule
