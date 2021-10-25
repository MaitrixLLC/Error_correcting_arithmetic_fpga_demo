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
// CREATED		"Tue Aug 13 20:07:04 2019"

module ec_prod_sum_test(
	clk_f,
	trunc_ena,
	clear_ena,
	digA_in_10_,
	digA_in_1_,
	digA_in_2_,
	digA_in_3_,
	digA_in_4_,
	digA_in_5_,
	digA_in_6_,
	digA_in_7_,
	digA_in_8_,
	digA_in_9_,
	digB_in_10_,
	digB_in_1_,
	digB_in_2_,
	digB_in_3_,
	digB_in_4_,
	digB_in_5_,
	digB_in_6_,
	digB_in_7_,
	digB_in_8_,
	digB_in_9_,
	data_valid_out,
	dig_sum_10_,
	dig_sum_1_,
	dig_sum_2_,
	dig_sum_3_,
	dig_sum_4_,
	dig_sum_5_,
	dig_sum_6_,
	dig_sum_7_,
	dig_sum_8_,
	dig_sum_9_
);


input wire	clk_f;
input wire	trunc_ena;
input wire	clear_ena;
input wire	[17:0] digA_in_10_;
input wire	[17:0] digA_in_1_;
input wire	[17:0] digA_in_2_;
input wire	[17:0] digA_in_3_;
input wire	[17:0] digA_in_4_;
input wire	[17:0] digA_in_5_;
input wire	[17:0] digA_in_6_;
input wire	[17:0] digA_in_7_;
input wire	[17:0] digA_in_8_;
input wire	[17:0] digA_in_9_;
input wire	[17:0] digB_in_10_;
input wire	[17:0] digB_in_1_;
input wire	[17:0] digB_in_2_;
input wire	[17:0] digB_in_3_;
input wire	[17:0] digB_in_4_;
input wire	[17:0] digB_in_5_;
input wire	[17:0] digB_in_6_;
input wire	[17:0] digB_in_7_;
input wire	[17:0] digB_in_8_;
input wire	[17:0] digB_in_9_;
output wire	data_valid_out;
output wire	[17:0] dig_sum_10_;
output wire	[17:0] dig_sum_1_;
output wire	[17:0] dig_sum_2_;
output wire	[17:0] dig_sum_3_;
output wire	[17:0] dig_sum_4_;
output wire	[17:0] dig_sum_5_;
output wire	[17:0] dig_sum_6_;
output wire	[17:0] dig_sum_7_;
output wire	[17:0] dig_sum_8_;
output wire	[17:0] dig_sum_9_;

wire	clk;
wire	SYNTHESIZED_WIRE_31;
wire	[20:0] SYNTHESIZED_WIRE_1;
wire	[20:0] SYNTHESIZED_WIRE_2;
wire	[20:0] SYNTHESIZED_WIRE_3;
wire	[20:0] SYNTHESIZED_WIRE_4;
wire	[20:0] SYNTHESIZED_WIRE_5;
wire	[20:0] SYNTHESIZED_WIRE_6;
wire	[20:0] SYNTHESIZED_WIRE_7;
wire	[20:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[20:0] SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[20:0] SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	[20:0] SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[20:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	[20:0] SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	[20:0] SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	[20:0] SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	[20:0] SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	[20:0] SYNTHESIZED_WIRE_27;
wire	[20:0] SYNTHESIZED_WIRE_28;
wire	[20:0] SYNTHESIZED_WIRE_29;
wire	[20:0] SYNTHESIZED_WIRE_30;





reg_delay_4L	b2v_inst(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_31),
	.reg_out(data_valid_out));
	defparam	b2v_inst.DATA_WIDTH = 1;


ModMultAccumTFB_7L_18x21	b2v_inst1(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_1_),
	.IN_B(digB_in_1_),
	.hold_lat_ena(SYNTHESIZED_WIRE_31),
	.mod_result(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst1.FILE_S16 = "partmod_lut_d0_s16.hex";
	defparam	b2v_inst1.FILE_S21 = "partmod_lut_d0_s21.hex";
	defparam	b2v_inst1.FILE_S26 = "partmod_lut_d0_s26.hex";
	defparam	b2v_inst1.FILE_S31 = "partmod_lut_d0_s31.hex";
	defparam	b2v_inst1.ROM_FILE = "partmodmix_lut_d0.hex";


digmod18_21	b2v_inst10(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_1),
	.dig_out_(dig_sum_5_));
	defparam	b2v_inst10.DATA_WIDTH = 18;
	defparam	b2v_inst10.FILE = "partmod_lut_d4_s16_r32.hex";
	defparam	b2v_inst10.LUT_WIDTH = 5;
	defparam	b2v_inst10.MODULUS = 262027;
	defparam	b2v_inst10.TRUNC_WIDTH = 16;


ModMultAccumTFB_7L_18x21	b2v_inst11(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_6_),
	.IN_B(digB_in_6_),
	.hold_lat_ena(SYNTHESIZED_WIRE_18),
	.mod_result(SYNTHESIZED_WIRE_19));
	defparam	b2v_inst11.FILE_S16 = "partmod_lut_d5_s16.hex";
	defparam	b2v_inst11.FILE_S21 = "partmod_lut_d5_s21.hex";
	defparam	b2v_inst11.FILE_S26 = "partmod_lut_d5_s26.hex";
	defparam	b2v_inst11.FILE_S31 = "partmod_lut_d5_s31.hex";
	defparam	b2v_inst11.ROM_FILE = "partmodmix_lut_d5.hex";


digmod18_21	b2v_inst12(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_2),
	.dig_out_(dig_sum_6_));
	defparam	b2v_inst12.DATA_WIDTH = 18;
	defparam	b2v_inst12.FILE = "partmod_lut_d5_s16_r32.hex";
	defparam	b2v_inst12.LUT_WIDTH = 5;
	defparam	b2v_inst12.MODULUS = 262049;
	defparam	b2v_inst12.TRUNC_WIDTH = 16;


ModMultAccumTFB_7L_18x21	b2v_inst13(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_7_),
	.IN_B(digB_in_7_),
	.hold_lat_ena(SYNTHESIZED_WIRE_20),
	.mod_result(SYNTHESIZED_WIRE_21));
	defparam	b2v_inst13.FILE_S16 = "partmod_lut_d6_s16.hex";
	defparam	b2v_inst13.FILE_S21 = "partmod_lut_d6_s21.hex";
	defparam	b2v_inst13.FILE_S26 = "partmod_lut_d6_s26.hex";
	defparam	b2v_inst13.FILE_S31 = "partmod_lut_d6_s31.hex";
	defparam	b2v_inst13.ROM_FILE = "partmodmix_lut_d6.hex";


digmod18_21	b2v_inst14(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_3),
	.dig_out_(dig_sum_7_));
	defparam	b2v_inst14.DATA_WIDTH = 18;
	defparam	b2v_inst14.FILE = "partmod_lut_d6_s16_r32.hex";
	defparam	b2v_inst14.LUT_WIDTH = 5;
	defparam	b2v_inst14.MODULUS = 262051;
	defparam	b2v_inst14.TRUNC_WIDTH = 16;


ModMultAccumTFB_7L_18x21	b2v_inst15(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_8_),
	.IN_B(digB_in_8_),
	.hold_lat_ena(SYNTHESIZED_WIRE_22),
	.mod_result(SYNTHESIZED_WIRE_23));
	defparam	b2v_inst15.FILE_S16 = "partmod_lut_d7_s16.hex";
	defparam	b2v_inst15.FILE_S21 = "partmod_lut_d7_s21.hex";
	defparam	b2v_inst15.FILE_S26 = "partmod_lut_d7_s26.hex";
	defparam	b2v_inst15.FILE_S31 = "partmod_lut_d7_s31.hex";
	defparam	b2v_inst15.ROM_FILE = "partmodmix_lut_d7.hex";


digmod18_21	b2v_inst16(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_4),
	.dig_out_(dig_sum_8_));
	defparam	b2v_inst16.DATA_WIDTH = 18;
	defparam	b2v_inst16.FILE = "partmod_lut_d7_s16_r32.hex";
	defparam	b2v_inst16.LUT_WIDTH = 5;
	defparam	b2v_inst16.MODULUS = 262069;
	defparam	b2v_inst16.TRUNC_WIDTH = 16;


ModMultAccumTFB_7L_18x21	b2v_inst17(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_9_),
	.IN_B(digB_in_9_),
	.hold_lat_ena(SYNTHESIZED_WIRE_24),
	.mod_result(SYNTHESIZED_WIRE_25));
	defparam	b2v_inst17.FILE_S16 = "partmod_lut_d8_s16.hex";
	defparam	b2v_inst17.FILE_S21 = "partmod_lut_d8_s21.hex";
	defparam	b2v_inst17.FILE_S26 = "partmod_lut_d8_s26.hex";
	defparam	b2v_inst17.FILE_S31 = "partmod_lut_d8_s31.hex";
	defparam	b2v_inst17.ROM_FILE = "partmodmix_lut_d8.hex";


digmod18_21	b2v_inst18(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_5),
	.dig_out_(dig_sum_9_));
	defparam	b2v_inst18.DATA_WIDTH = 18;
	defparam	b2v_inst18.FILE = "partmod_lut_d8_s16_r32.hex";
	defparam	b2v_inst18.LUT_WIDTH = 5;
	defparam	b2v_inst18.MODULUS = 262079;
	defparam	b2v_inst18.TRUNC_WIDTH = 16;


ModMultAccumTFB_7L_18x21	b2v_inst19(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_10_),
	.IN_B(digB_in_10_),
	.hold_lat_ena(SYNTHESIZED_WIRE_26),
	.mod_result(SYNTHESIZED_WIRE_27));
	defparam	b2v_inst19.FILE_S16 = "partmod_lut_d9_s16.hex";
	defparam	b2v_inst19.FILE_S21 = "partmod_lut_d9_s21.hex";
	defparam	b2v_inst19.FILE_S26 = "partmod_lut_d9_s26.hex";
	defparam	b2v_inst19.FILE_S31 = "partmod_lut_d9_s31.hex";
	defparam	b2v_inst19.ROM_FILE = "partmodmix_lut_d9.hex";


digmod18_21	b2v_inst2(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_6),
	.dig_out_(dig_sum_1_));
	defparam	b2v_inst2.DATA_WIDTH = 18;
	defparam	b2v_inst2.FILE = "partmod_lut_d0_s16_r32.hex";
	defparam	b2v_inst2.LUT_WIDTH = 5;
	defparam	b2v_inst2.MODULUS = 65536;
	defparam	b2v_inst2.TRUNC_WIDTH = 16;


digmod18_21	b2v_inst20(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_7),
	.dig_out_(dig_sum_10_));
	defparam	b2v_inst20.DATA_WIDTH = 18;
	defparam	b2v_inst20.FILE = "partmod_lut_d9_s16_r32.hex";
	defparam	b2v_inst20.LUT_WIDTH = 5;
	defparam	b2v_inst20.MODULUS = 262103;
	defparam	b2v_inst20.TRUNC_WIDTH = 16;


reg_ena	b2v_inst21(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_31),
	.reg_in(SYNTHESIZED_WIRE_9),
	.reg_out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst21.DATA_WIDTH = 21;


reg_ena	b2v_inst22(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_10),
	.reg_in(SYNTHESIZED_WIRE_11),
	.reg_out(SYNTHESIZED_WIRE_28));
	defparam	b2v_inst22.DATA_WIDTH = 21;


reg_ena	b2v_inst23(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_12),
	.reg_in(SYNTHESIZED_WIRE_13),
	.reg_out(SYNTHESIZED_WIRE_29));
	defparam	b2v_inst23.DATA_WIDTH = 21;


reg_ena	b2v_inst24(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_14),
	.reg_in(SYNTHESIZED_WIRE_15),
	.reg_out(SYNTHESIZED_WIRE_30));
	defparam	b2v_inst24.DATA_WIDTH = 21;


reg_ena	b2v_inst25(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_16),
	.reg_in(SYNTHESIZED_WIRE_17),
	.reg_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst25.DATA_WIDTH = 21;


reg_ena	b2v_inst26(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_18),
	.reg_in(SYNTHESIZED_WIRE_19),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst26.DATA_WIDTH = 21;


reg_ena	b2v_inst27(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_20),
	.reg_in(SYNTHESIZED_WIRE_21),
	.reg_out(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst27.DATA_WIDTH = 21;


reg_ena	b2v_inst28(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_22),
	.reg_in(SYNTHESIZED_WIRE_23),
	.reg_out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst28.DATA_WIDTH = 21;


reg_ena	b2v_inst29(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_24),
	.reg_in(SYNTHESIZED_WIRE_25),
	.reg_out(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst29.DATA_WIDTH = 21;


ModMultAccumTFB_7L_18x21	b2v_inst3(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_2_),
	.IN_B(digB_in_2_),
	.hold_lat_ena(SYNTHESIZED_WIRE_10),
	.mod_result(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst3.FILE_S16 = "partmod_lut_d1_s16.hex";
	defparam	b2v_inst3.FILE_S21 = "partmod_lut_d1_s21.hex";
	defparam	b2v_inst3.FILE_S26 = "partmod_lut_d1_s26.hex";
	defparam	b2v_inst3.FILE_S31 = "partmod_lut_d1_s31.hex";
	defparam	b2v_inst3.ROM_FILE = "partmodmix_lut_d1.hex";


reg_ena	b2v_inst30(
	.clk(clk),
	.ena(SYNTHESIZED_WIRE_26),
	.reg_in(SYNTHESIZED_WIRE_27),
	.reg_out(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst30.DATA_WIDTH = 21;


digmod18_21	b2v_inst4(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_28),
	.dig_out_(dig_sum_2_));
	defparam	b2v_inst4.DATA_WIDTH = 18;
	defparam	b2v_inst4.FILE = "partmod_lut_d1_s16_r32.hex";
	defparam	b2v_inst4.LUT_WIDTH = 5;
	defparam	b2v_inst4.MODULUS = 78125;
	defparam	b2v_inst4.TRUNC_WIDTH = 16;


ModMultAccumTFB_7L_18x21	b2v_inst5(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_3_),
	.IN_B(digB_in_3_),
	.hold_lat_ena(SYNTHESIZED_WIRE_12),
	.mod_result(SYNTHESIZED_WIRE_13));
	defparam	b2v_inst5.FILE_S16 = "partmod_lut_d2_s16.hex";
	defparam	b2v_inst5.FILE_S21 = "partmod_lut_d2_s21.hex";
	defparam	b2v_inst5.FILE_S26 = "partmod_lut_d2_s26.hex";
	defparam	b2v_inst5.FILE_S31 = "partmod_lut_d2_s31.hex";
	defparam	b2v_inst5.ROM_FILE = "partmodmix_lut_d2.hex";


digmod18_21	b2v_inst6(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_29),
	.dig_out_(dig_sum_3_));
	defparam	b2v_inst6.DATA_WIDTH = 18;
	defparam	b2v_inst6.FILE = "partmod_lut_d2_s16_r32.hex";
	defparam	b2v_inst6.LUT_WIDTH = 5;
	defparam	b2v_inst6.MODULUS = 117649;
	defparam	b2v_inst6.TRUNC_WIDTH = 16;


ModMultAccumTFB_7L_18x21	b2v_inst7(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_4_),
	.IN_B(digB_in_4_),
	.hold_lat_ena(SYNTHESIZED_WIRE_14),
	.mod_result(SYNTHESIZED_WIRE_15));
	defparam	b2v_inst7.FILE_S16 = "partmod_lut_d3_s16.hex";
	defparam	b2v_inst7.FILE_S21 = "partmod_lut_d3_s21.hex";
	defparam	b2v_inst7.FILE_S26 = "partmod_lut_d3_s26.hex";
	defparam	b2v_inst7.FILE_S31 = "partmod_lut_d3_s31.hex";
	defparam	b2v_inst7.ROM_FILE = "partmodmix_lut_d3.hex";


digmod18_21	b2v_inst8(
	.clk(clk),
	.dig_in_(SYNTHESIZED_WIRE_30),
	.dig_out_(dig_sum_4_));
	defparam	b2v_inst8.DATA_WIDTH = 18;
	defparam	b2v_inst8.FILE = "partmod_lut_d3_s16_r32.hex";
	defparam	b2v_inst8.LUT_WIDTH = 5;
	defparam	b2v_inst8.MODULUS = 177147;
	defparam	b2v_inst8.TRUNC_WIDTH = 16;


ModMultAccumTFB_7L_18x21	b2v_inst9(
	.clk(clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.IN_A(digA_in_5_),
	.IN_B(digB_in_5_),
	.hold_lat_ena(SYNTHESIZED_WIRE_16),
	.mod_result(SYNTHESIZED_WIRE_17));
	defparam	b2v_inst9.FILE_S16 = "partmod_lut_d4_s16.hex";
	defparam	b2v_inst9.FILE_S21 = "partmod_lut_d4_s21.hex";
	defparam	b2v_inst9.FILE_S26 = "partmod_lut_d4_s26.hex";
	defparam	b2v_inst9.FILE_S31 = "partmod_lut_d4_s31.hex";
	defparam	b2v_inst9.ROM_FILE = "partmodmix_lut_d4.hex";

assign	clk = clk_f;

endmodule
