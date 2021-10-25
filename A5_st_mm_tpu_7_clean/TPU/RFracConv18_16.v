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
// CREATED		"Sun Aug 11 16:57:26 2019"

module RFracConv18_16(
	clk,
	RNS_D1_in,
	RNS_D2_in,
	RNS_D3_in,
	RNS_D4_in,
	RNS_D5_in,
	RNS_D6_in,
	ov1_out,
	sign_out,
	b0_out,
	b1_out,
	b2_out,
	b3_out,
	ov2_out
);


input wire	clk;
input wire	[17:0] RNS_D1_in;
input wire	[17:0] RNS_D2_in;
input wire	[17:0] RNS_D3_in;
input wire	[17:0] RNS_D4_in;
input wire	[17:0] RNS_D5_in;
input wire	[17:0] RNS_D6_in;
output wire	ov1_out;
output wire	sign_out;
output wire	[15:0] b0_out;
output wire	[15:0] b1_out;
output wire	[15:0] b2_out;
output wire	[15:0] b3_out;
output wire	[17:0] ov2_out;

wire	[1:0] mr_sign;
wire	[17:0] mrA3_out;
wire	[17:0] mrA4_out;
wire	[17:0] mrA5_out;
wire	[17:0] mrA6_out;
wire	SYNTHESIZED_WIRE_0;





RFracConv18_16_stg2	b2v_inst1(
	.clk(clk),
	.sign_in(mr_sign[1]),
	.rnd_in(SYNTHESIZED_WIRE_0),
	.mr_A3_in(mrA3_out),
	.mr_A4_in(mrA4_out),
	.mr_A5_in(mrA5_out),
	.mr_A6_in(mrA6_out),
	.OV1_out(ov1_out),
	.sign_out(sign_out),
	.B0_out(b0_out),
	.B1_out(b1_out),
	.B2_out(b2_out),
	.B3_out(b3_out),
	.OV2_out(ov2_out));


RFracConv18_16_stg1	b2v_inst2(
	.clk(clk),
	.RNS_D1_in(RNS_D1_in),
	.RNS_D2_in(RNS_D2_in),
	.RNS_D3_in(RNS_D3_in),
	.RNS_D4_in(RNS_D4_in),
	.RNS_D5_in(RNS_D5_in),
	.RNS_D6_in(RNS_D6_in),
	.round_out(SYNTHESIZED_WIRE_0),
	.mr_A3_out(mrA3_out),
	.mr_A4_out(mrA4_out),
	.mr_A5_out(mrA5_out),
	.mr_A6_out(mrA6_out),
	.sign_out(mr_sign));


endmodule
