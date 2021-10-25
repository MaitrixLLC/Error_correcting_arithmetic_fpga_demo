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
