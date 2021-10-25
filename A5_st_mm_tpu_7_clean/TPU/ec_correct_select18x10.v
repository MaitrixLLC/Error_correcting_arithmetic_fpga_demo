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
// CREATED		"Tue May 21 06:31:01 2019"

module ec_correct_select18x10(
	clk,
	in_cor_10_,
	in_cor_1_,
	in_cor_2_,
	in_cor_3_,
	in_cor_4_,
	in_cor_5_,
	in_cor_6_,
	in_cor_7_,
	in_cor_8_,
	in_cor_9_,
	in_Y_10_,
	in_Y_1_,
	in_Y_2_,
	in_Y_3_,
	in_Y_4_,
	in_Y_5_,
	in_Y_6_,
	in_Y_7_,
	in_Y_8_,
	in_Y_9_,
	sign_in_A_10_,
	sign_in_A_1_,
	sign_in_A_2_,
	sign_in_A_3_,
	sign_in_A_4_,
	sign_in_A_5_,
	sign_in_A_6_,
	sign_in_A_7_,
	sign_in_A_8_,
	sign_in_A_9_,
	sign_in_B_10_,
	sign_in_B_1_,
	sign_in_B_2_,
	sign_in_B_3_,
	sign_in_B_4_,
	sign_in_B_5_,
	sign_in_B_6_,
	sign_in_B_7_,
	sign_in_B_8_,
	sign_in_B_9_,
	cor_error,
	non_cor_error,
	mal_error,
	error_10_,
	error_1_,
	error_2_,
	error_3_,
	error_4_,
	error_5_,
	error_6_,
	error_7_,
	error_8_,
	error_9_,
	out_10_,
	out_1_,
	out_2_,
	out_3_,
	out_4_,
	out_5_,
	out_6_,
	out_7_,
	out_8_,
	out_9_
);


input wire	clk;
input wire	[17:0] in_cor_10_;
input wire	[17:0] in_cor_1_;
input wire	[17:0] in_cor_2_;
input wire	[17:0] in_cor_3_;
input wire	[17:0] in_cor_4_;
input wire	[17:0] in_cor_5_;
input wire	[17:0] in_cor_6_;
input wire	[17:0] in_cor_7_;
input wire	[17:0] in_cor_8_;
input wire	[17:0] in_cor_9_;
input wire	[17:0] in_Y_10_;
input wire	[17:0] in_Y_1_;
input wire	[17:0] in_Y_2_;
input wire	[17:0] in_Y_3_;
input wire	[17:0] in_Y_4_;
input wire	[17:0] in_Y_5_;
input wire	[17:0] in_Y_6_;
input wire	[17:0] in_Y_7_;
input wire	[17:0] in_Y_8_;
input wire	[17:0] in_Y_9_;
input wire	[1:0] sign_in_A_10_;
input wire	[1:0] sign_in_A_1_;
input wire	[1:0] sign_in_A_2_;
input wire	[1:0] sign_in_A_3_;
input wire	[1:0] sign_in_A_4_;
input wire	[1:0] sign_in_A_5_;
input wire	[1:0] sign_in_A_6_;
input wire	[1:0] sign_in_A_7_;
input wire	[1:0] sign_in_A_8_;
input wire	[1:0] sign_in_A_9_;
input wire	[1:0] sign_in_B_10_;
input wire	[1:0] sign_in_B_1_;
input wire	[1:0] sign_in_B_2_;
input wire	[1:0] sign_in_B_3_;
input wire	[1:0] sign_in_B_4_;
input wire	[1:0] sign_in_B_5_;
input wire	[1:0] sign_in_B_6_;
input wire	[1:0] sign_in_B_7_;
input wire	[1:0] sign_in_B_8_;
input wire	[1:0] sign_in_B_9_;
output wire	cor_error;
output wire	non_cor_error;
output wire	mal_error;
output wire	[1:0] error_10_;
output wire	[1:0] error_1_;
output wire	[1:0] error_2_;
output wire	[1:0] error_3_;
output wire	[1:0] error_4_;
output wire	[1:0] error_5_;
output wire	[1:0] error_6_;
output wire	[1:0] error_7_;
output wire	[1:0] error_8_;
output wire	[1:0] error_9_;
output wire	[17:0] out_10_;
output wire	[17:0] out_1_;
output wire	[17:0] out_2_;
output wire	[17:0] out_3_;
output wire	[17:0] out_4_;
output wire	[17:0] out_5_;
output wire	[17:0] out_6_;
output wire	[17:0] out_7_;
output wire	[17:0] out_8_;
output wire	[17:0] out_9_;

wire	[10:1] cor_err_stg;
wire	[10:1] mal_err_stg;
wire	[17:0] SYNTHESIZED_WIRE_0;
wire	[17:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_4;
wire	[17:0] SYNTHESIZED_WIRE_5;
wire	[1:0] SYNTHESIZED_WIRE_6;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	[17:0] SYNTHESIZED_WIRE_8;
wire	[17:0] SYNTHESIZED_WIRE_9;
wire	[1:0] SYNTHESIZED_WIRE_10;
wire	[1:0] SYNTHESIZED_WIRE_11;
wire	[17:0] SYNTHESIZED_WIRE_12;
wire	[17:0] SYNTHESIZED_WIRE_13;
wire	[1:0] SYNTHESIZED_WIRE_14;
wire	[1:0] SYNTHESIZED_WIRE_15;
wire	[17:0] SYNTHESIZED_WIRE_16;
wire	[17:0] SYNTHESIZED_WIRE_17;
wire	[1:0] SYNTHESIZED_WIRE_18;
wire	[1:0] SYNTHESIZED_WIRE_19;
wire	[17:0] SYNTHESIZED_WIRE_20;
wire	[17:0] SYNTHESIZED_WIRE_21;
wire	[1:0] SYNTHESIZED_WIRE_22;
wire	[1:0] SYNTHESIZED_WIRE_23;
wire	[17:0] SYNTHESIZED_WIRE_24;
wire	[17:0] SYNTHESIZED_WIRE_25;
wire	[1:0] SYNTHESIZED_WIRE_26;
wire	[1:0] SYNTHESIZED_WIRE_27;
wire	[17:0] SYNTHESIZED_WIRE_28;
wire	[17:0] SYNTHESIZED_WIRE_29;
wire	[1:0] SYNTHESIZED_WIRE_30;
wire	[1:0] SYNTHESIZED_WIRE_31;
wire	[17:0] SYNTHESIZED_WIRE_32;
wire	[17:0] SYNTHESIZED_WIRE_33;
wire	[1:0] SYNTHESIZED_WIRE_34;
wire	[1:0] SYNTHESIZED_WIRE_35;
wire	[17:0] SYNTHESIZED_WIRE_36;
wire	[17:0] SYNTHESIZED_WIRE_37;
wire	[1:0] SYNTHESIZED_WIRE_38;
wire	[1:0] SYNTHESIZED_WIRE_39;





ec_gen_error_5L	b2v_inst(
	.clk(clk),
	.skp0_sign_A(sign_in_A_1_),
	.skp0_sign_B(sign_in_B_1_),
	.skp1_sign_A(sign_in_A_2_),
	.skp1_sign_B(sign_in_B_2_),
	.skp2_sign_A(sign_in_A_3_),
	.skp2_sign_B(sign_in_B_3_),
	.skp3_sign_A(sign_in_A_4_),
	.skp3_sign_B(sign_in_B_4_),
	.skp4_sign_A(sign_in_A_5_),
	.skp4_sign_B(sign_in_B_5_),
	.skp5_sign_A(sign_in_A_6_),
	.skp5_sign_B(sign_in_B_6_),
	.skp6_sign_A(sign_in_A_7_),
	.skp6_sign_B(sign_in_B_7_),
	.skp7_sign_A(sign_in_A_8_),
	.skp7_sign_B(sign_in_B_8_),
	.skp8_sign_A(sign_in_A_9_),
	.skp8_sign_B(sign_in_B_9_),
	.skp9_sign_A(sign_in_A_10_),
	.skp9_sign_B(sign_in_B_10_),
	.dig_norm_err(cor_error),
	.dig_malf_err(mal_error),
	.dig_uncor_err(non_cor_error));


ec_digit_correct	b2v_inst_dig_correct1(
	.clk(clk),
	.cor_in(in_cor_1_),
	.sign_in_A(sign_in_A_1_),
	.sign_in_B(sign_in_B_1_),
	.Y_in(in_Y_1_),
	.cor_out(SYNTHESIZED_WIRE_0),
	.sign_out_A(SYNTHESIZED_WIRE_2),
	.sign_out_B(SYNTHESIZED_WIRE_3),
	.Y_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst_dig_correct1.CORRECT = 3213;
	defparam	b2v_inst_dig_correct1.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct1.MODULUS = 65536;


ec_digit_correct	b2v_inst_dig_correct10(
	.clk(clk),
	.cor_in(in_cor_10_),
	.sign_in_A(sign_in_A_10_),
	.sign_in_B(sign_in_B_10_),
	.Y_in(in_Y_10_),
	.cor_out(SYNTHESIZED_WIRE_4),
	.sign_out_A(SYNTHESIZED_WIRE_6),
	.sign_out_B(SYNTHESIZED_WIRE_7),
	.Y_out(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst_dig_correct10.CORRECT = 113746;
	defparam	b2v_inst_dig_correct10.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct10.MODULUS = 262103;


ec_digit_correct	b2v_inst_dig_correct2(
	.clk(clk),
	.cor_in(in_cor_2_),
	.sign_in_A(sign_in_A_2_),
	.sign_in_B(sign_in_B_2_),
	.Y_in(in_Y_2_),
	.cor_out(SYNTHESIZED_WIRE_8),
	.sign_out_A(SYNTHESIZED_WIRE_10),
	.sign_out_B(SYNTHESIZED_WIRE_11),
	.Y_out(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst_dig_correct2.CORRECT = 7348;
	defparam	b2v_inst_dig_correct2.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct2.MODULUS = 78125;


ec_digit_correct	b2v_inst_dig_correct3(
	.clk(clk),
	.cor_in(in_cor_3_),
	.sign_in_A(sign_in_A_3_),
	.sign_in_B(sign_in_B_3_),
	.Y_in(in_Y_3_),
	.cor_out(SYNTHESIZED_WIRE_12),
	.sign_out_A(SYNTHESIZED_WIRE_14),
	.sign_out_B(SYNTHESIZED_WIRE_15),
	.Y_out(SYNTHESIZED_WIRE_13));
	defparam	b2v_inst_dig_correct3.CORRECT = 3827;
	defparam	b2v_inst_dig_correct3.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct3.MODULUS = 117649;


ec_digit_correct	b2v_inst_dig_correct4(
	.clk(clk),
	.cor_in(in_cor_4_),
	.sign_in_A(sign_in_A_4_),
	.sign_in_B(sign_in_B_4_),
	.Y_in(in_Y_4_),
	.cor_out(SYNTHESIZED_WIRE_16),
	.sign_out_A(SYNTHESIZED_WIRE_18),
	.sign_out_B(SYNTHESIZED_WIRE_19),
	.Y_out(SYNTHESIZED_WIRE_17));
	defparam	b2v_inst_dig_correct4.CORRECT = 78902;
	defparam	b2v_inst_dig_correct4.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct4.MODULUS = 177147;


ec_digit_correct	b2v_inst_dig_correct5(
	.clk(clk),
	.cor_in(in_cor_5_),
	.sign_in_A(sign_in_A_5_),
	.sign_in_B(sign_in_B_5_),
	.Y_in(in_Y_5_),
	.cor_out(SYNTHESIZED_WIRE_20),
	.sign_out_A(SYNTHESIZED_WIRE_22),
	.sign_out_B(SYNTHESIZED_WIRE_23),
	.Y_out(SYNTHESIZED_WIRE_21));
	defparam	b2v_inst_dig_correct5.CORRECT = 94763;
	defparam	b2v_inst_dig_correct5.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct5.MODULUS = 262027;


ec_digit_correct	b2v_inst_dig_correct6(
	.clk(clk),
	.cor_in(in_cor_6_),
	.sign_in_A(sign_in_A_6_),
	.sign_in_B(sign_in_B_6_),
	.Y_in(in_Y_6_),
	.cor_out(SYNTHESIZED_WIRE_24),
	.sign_out_A(SYNTHESIZED_WIRE_26),
	.sign_out_B(SYNTHESIZED_WIRE_27),
	.Y_out(SYNTHESIZED_WIRE_25));
	defparam	b2v_inst_dig_correct6.CORRECT = 261054;
	defparam	b2v_inst_dig_correct6.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct6.MODULUS = 262049;


ec_digit_correct	b2v_inst_dig_correct7(
	.clk(clk),
	.cor_in(in_cor_7_),
	.sign_in_A(sign_in_A_7_),
	.sign_in_B(sign_in_B_7_),
	.Y_in(in_Y_7_),
	.cor_out(SYNTHESIZED_WIRE_28),
	.sign_out_A(SYNTHESIZED_WIRE_30),
	.sign_out_B(SYNTHESIZED_WIRE_31),
	.Y_out(SYNTHESIZED_WIRE_29));
	defparam	b2v_inst_dig_correct7.CORRECT = 230476;
	defparam	b2v_inst_dig_correct7.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct7.MODULUS = 262051;


ec_digit_correct	b2v_inst_dig_correct8(
	.clk(clk),
	.cor_in(in_cor_8_),
	.sign_in_A(sign_in_A_8_),
	.sign_in_B(sign_in_B_8_),
	.Y_in(in_Y_8_),
	.cor_out(SYNTHESIZED_WIRE_32),
	.sign_out_A(SYNTHESIZED_WIRE_34),
	.sign_out_B(SYNTHESIZED_WIRE_35),
	.Y_out(SYNTHESIZED_WIRE_33));
	defparam	b2v_inst_dig_correct8.CORRECT = 95796;
	defparam	b2v_inst_dig_correct8.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct8.MODULUS = 262069;


ec_digit_correct	b2v_inst_dig_correct9(
	.clk(clk),
	.cor_in(in_cor_9_),
	.sign_in_A(sign_in_A_9_),
	.sign_in_B(sign_in_B_9_),
	.Y_in(in_Y_9_),
	.cor_out(SYNTHESIZED_WIRE_36),
	.sign_out_A(SYNTHESIZED_WIRE_38),
	.sign_out_B(SYNTHESIZED_WIRE_39),
	.Y_out(SYNTHESIZED_WIRE_37));
	defparam	b2v_inst_dig_correct9.CORRECT = 33319;
	defparam	b2v_inst_dig_correct9.DATA_WIDTH = 18;
	defparam	b2v_inst_dig_correct9.MODULUS = 262079;


ec_sign_select	b2v_inst_dig_select1(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_0),
	.in_Y(SYNTHESIZED_WIRE_1),
	.sign_in_A(SYNTHESIZED_WIRE_2),
	.sign_in_B(SYNTHESIZED_WIRE_3),
	
	
	.error(error_1_),
	.out(out_1_));
	defparam	b2v_inst_dig_select1.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select10(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_4),
	.in_Y(SYNTHESIZED_WIRE_5),
	.sign_in_A(SYNTHESIZED_WIRE_6),
	.sign_in_B(SYNTHESIZED_WIRE_7),
	
	
	.error(error_10_),
	.out(out_10_));
	defparam	b2v_inst_dig_select10.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select2(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_8),
	.in_Y(SYNTHESIZED_WIRE_9),
	.sign_in_A(SYNTHESIZED_WIRE_10),
	.sign_in_B(SYNTHESIZED_WIRE_11),
	
	
	.error(error_2_),
	.out(out_2_));
	defparam	b2v_inst_dig_select2.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select3(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_12),
	.in_Y(SYNTHESIZED_WIRE_13),
	.sign_in_A(SYNTHESIZED_WIRE_14),
	.sign_in_B(SYNTHESIZED_WIRE_15),
	
	
	.error(error_3_),
	.out(out_3_));
	defparam	b2v_inst_dig_select3.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select4(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_16),
	.in_Y(SYNTHESIZED_WIRE_17),
	.sign_in_A(SYNTHESIZED_WIRE_18),
	.sign_in_B(SYNTHESIZED_WIRE_19),
	
	
	.error(error_4_),
	.out(out_4_));
	defparam	b2v_inst_dig_select4.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select5(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_20),
	.in_Y(SYNTHESIZED_WIRE_21),
	.sign_in_A(SYNTHESIZED_WIRE_22),
	.sign_in_B(SYNTHESIZED_WIRE_23),
	
	
	.error(error_5_),
	.out(out_5_));
	defparam	b2v_inst_dig_select5.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select6(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_24),
	.in_Y(SYNTHESIZED_WIRE_25),
	.sign_in_A(SYNTHESIZED_WIRE_26),
	.sign_in_B(SYNTHESIZED_WIRE_27),
	
	
	.error(error_6_),
	.out(out_6_));
	defparam	b2v_inst_dig_select6.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select7(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_28),
	.in_Y(SYNTHESIZED_WIRE_29),
	.sign_in_A(SYNTHESIZED_WIRE_30),
	.sign_in_B(SYNTHESIZED_WIRE_31),
	
	
	.error(error_7_),
	.out(out_7_));
	defparam	b2v_inst_dig_select7.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select8(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_32),
	.in_Y(SYNTHESIZED_WIRE_33),
	.sign_in_A(SYNTHESIZED_WIRE_34),
	.sign_in_B(SYNTHESIZED_WIRE_35),
	
	
	.error(error_8_),
	.out(out_8_));
	defparam	b2v_inst_dig_select8.DATA_WIDTH = 18;


ec_sign_select	b2v_inst_dig_select9(
	.clk(clk),
	.in_cor(SYNTHESIZED_WIRE_36),
	.in_Y(SYNTHESIZED_WIRE_37),
	.sign_in_A(SYNTHESIZED_WIRE_38),
	.sign_in_B(SYNTHESIZED_WIRE_39),
	
	
	.error(error_9_),
	.out(out_9_));
	defparam	b2v_inst_dig_select9.DATA_WIDTH = 18;


endmodule
