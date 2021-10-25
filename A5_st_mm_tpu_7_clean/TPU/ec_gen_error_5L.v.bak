// Copyright (C) 2018  Intel Corporation. All rights reserved.
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
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
// CREATED		"Wed May 22 22:08:57 2019"

module ec_gen_error_5L(
	clk,
	skp0_sign_A,
	skp0_sign_B,
	skp1_sign_A,
	skp1_sign_B,
	skp2_sign_A,
	skp2_sign_B,
	skp3_sign_A,
	skp3_sign_B,
	skp4_sign_A,
	skp4_sign_B,
	skp5_sign_A,
	skp5_sign_B,
	skp6_sign_A,
	skp6_sign_B,
	skp7_sign_A,
	skp7_sign_B,
	skp8_sign_A,
	skp8_sign_B,
	skp9_sign_A,
	skp9_sign_B,
	dig_norm_err,
	dig_malf_err,
	dig_uncor_err
);


input wire	clk;
input wire	[1:0] skp0_sign_A;
input wire	[1:0] skp0_sign_B;
input wire	[1:0] skp1_sign_A;
input wire	[1:0] skp1_sign_B;
input wire	[1:0] skp2_sign_A;
input wire	[1:0] skp2_sign_B;
input wire	[1:0] skp3_sign_A;
input wire	[1:0] skp3_sign_B;
input wire	[1:0] skp4_sign_A;
input wire	[1:0] skp4_sign_B;
input wire	[1:0] skp5_sign_A;
input wire	[1:0] skp5_sign_B;
input wire	[1:0] skp6_sign_A;
input wire	[1:0] skp6_sign_B;
input wire	[1:0] skp7_sign_A;
input wire	[1:0] skp7_sign_B;
input wire	[1:0] skp8_sign_A;
input wire	[1:0] skp8_sign_B;
input wire	[1:0] skp9_sign_A;
input wire	[1:0] skp9_sign_B;
output wire	dig_norm_err;
output wire	dig_malf_err;
output wire	dig_uncor_err;

wire	all_digs_ok;
wire	all_digs_one;
wire	dig_malf_err_1;
wire	dig_malf_err_10;
wire	dig_malf_err_2;
wire	dig_malf_err_3;
wire	dig_malf_err_4;
wire	dig_malf_err_5;
wire	dig_malf_err_6;
wire	dig_malf_err_7;
wire	dig_malf_err_8;
wire	dig_malf_err_9;
wire	dig_malf_stg4;
wire	dig_norm_err_1;
wire	dig_norm_err_10;
wire	dig_norm_err_2;
wire	dig_norm_err_3;
wire	dig_norm_err_4;
wire	dig_norm_err_5;
wire	dig_norm_err_6;
wire	dig_norm_err_7;
wire	dig_norm_err_8;
wire	dig_norm_err_9;
wire	err_stg1_1;
wire	err_stg1_2;
wire	err_stg1_3;
wire	err_stg1_4;
wire	err_stg1_5;
wire	err_stg2_1;
wire	err_stg2_2;
wire	err_stg2_3;
wire	err_stg3_1;
wire	err_stg3_2;
wire	[1:0] skp0_sign_out_A;
wire	[1:0] skp0_sign_out_B;
wire	[1:0] skp1_sign_out_A;
wire	[1:0] skp1_sign_out_B;
wire	[1:0] skp2_sign_out_A;
wire	[1:0] skp2_sign_out_B;
wire	[1:0] skp3_sign_out_A;
wire	[1:0] skp3_sign_out_B;
wire	[1:0] skp4_sign_out_A;
wire	[1:0] skp4_sign_out_B;
wire	[1:0] skp5_sign_out_A;
wire	[1:0] skp5_sign_out_B;
wire	[1:0] skp6_sign_out_A;
wire	[1:0] skp6_sign_out_B;
wire	[1:0] skp7_sign_out_A;
wire	[1:0] skp7_sign_out_B;
wire	[1:0] skp8_sign_out_A;
wire	[1:0] skp8_sign_out_B;
wire	[1:0] skp9_sign_out_A;
wire	[1:0] skp9_sign_out_B;
wire	Y_stg1_1;
wire	Y_stg1_2;
wire	Y_stg1_3;
wire	Y_stg1_4;
wire	Y_stg1_5;
wire	Y_stg2_1;
wire	Y_stg2_2;
wire	Y_stg2_3;
wire	Y_stg3_1;
wire	Y_stg3_2;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;

assign	SYNTHESIZED_WIRE_46 = 0;
assign	SYNTHESIZED_WIRE_47 = 0;
assign	SYNTHESIZED_WIRE_48 = 0;
assign	SYNTHESIZED_WIRE_49 = 0;
assign	SYNTHESIZED_WIRE_50 = 0;
assign	SYNTHESIZED_WIRE_51 = 0;
assign	SYNTHESIZED_WIRE_52 = 0;




or2_reg	b2v_inst11(
	.clk(clk),
	.inA(dig_malf_err_1),
	.inB(dig_malf_err_2),
	.Y(SYNTHESIZED_WIRE_0));


or2_reg	b2v_inst12(
	.clk(clk),
	.inA(dig_malf_err_3),
	.inB(dig_malf_err_4),
	.Y(SYNTHESIZED_WIRE_1));


or2_reg	b2v_inst13(
	.clk(clk),
	.inA(dig_malf_err_5),
	.inB(dig_malf_err_6),
	.Y(SYNTHESIZED_WIRE_4));


or2_reg	b2v_inst14(
	.clk(clk),
	.inA(dig_malf_err_7),
	.inB(dig_malf_err_8),
	.Y(SYNTHESIZED_WIRE_5));


or2_reg	b2v_inst15(
	.clk(clk),
	.inA(dig_malf_err_9),
	.inB(dig_malf_err_10),
	.Y(SYNTHESIZED_WIRE_6));


or2_reg	b2v_inst16(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_0),
	.inB(SYNTHESIZED_WIRE_1),
	.Y(SYNTHESIZED_WIRE_2));


or2_reg	b2v_inst17(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_2),
	.inB(SYNTHESIZED_WIRE_3),
	.Y(dig_malf_stg4));


or3_reg	b2v_inst18(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_4),
	.inB(SYNTHESIZED_WIRE_5),
	.inC(SYNTHESIZED_WIRE_6),
	.Y(SYNTHESIZED_WIRE_3));


or2_reg	b2v_inst19(
	.clk(clk),
	.inA(dig_norm_err_1),
	.inB(dig_norm_err_2),
	.Y(SYNTHESIZED_WIRE_7));


or2_reg	b2v_inst20(
	.clk(clk),
	.inA(dig_norm_err_3),
	.inB(dig_norm_err_4),
	.Y(SYNTHESIZED_WIRE_8));


or2_reg	b2v_inst21(
	.clk(clk),
	.inA(dig_norm_err_5),
	.inB(dig_norm_err_6),
	.Y(SYNTHESIZED_WIRE_11));


or2_reg	b2v_inst22(
	.clk(clk),
	.inA(dig_norm_err_7),
	.inB(dig_norm_err_8),
	.Y(SYNTHESIZED_WIRE_12));


or2_reg	b2v_inst23(
	.clk(clk),
	.inA(dig_norm_err_9),
	.inB(dig_norm_err_10),
	.Y(SYNTHESIZED_WIRE_13));


or2_reg	b2v_inst24(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_7),
	.inB(SYNTHESIZED_WIRE_8),
	.Y(SYNTHESIZED_WIRE_9));


or2_reg	b2v_inst25(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_9),
	.inB(SYNTHESIZED_WIRE_10),
	.Y(SYNTHESIZED_WIRE_14));


or3_reg	b2v_inst26(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_11),
	.inB(SYNTHESIZED_WIRE_12),
	.inC(SYNTHESIZED_WIRE_13),
	.Y(SYNTHESIZED_WIRE_10));








assign	SYNTHESIZED_WIRE_22 =  ~dig_norm_err_1;

assign	SYNTHESIZED_WIRE_23 =  ~dig_norm_err_2;

assign	SYNTHESIZED_WIRE_28 =  ~dig_norm_err_3;

assign	SYNTHESIZED_WIRE_29 =  ~dig_norm_err_4;

assign	SYNTHESIZED_WIRE_32 =  ~dig_norm_err_5;

assign	SYNTHESIZED_WIRE_33 =  ~dig_norm_err_6;

assign	SYNTHESIZED_WIRE_36 =  ~dig_norm_err_7;

assign	SYNTHESIZED_WIRE_37 =  ~dig_norm_err_8;

assign	SYNTHESIZED_WIRE_40 =  ~dig_norm_err_9;

assign	SYNTHESIZED_WIRE_41 =  ~dig_norm_err_10;

assign	all_digs_ok =  ~SYNTHESIZED_WIRE_14;


and2_reg	b2v_inst_and1(
	.clk(clk),
	.inA(dig_norm_err_1),
	.inB(dig_norm_err_2),
	.Y(SYNTHESIZED_WIRE_15));


and2_reg	b2v_inst_and2(
	.clk(clk),
	.inA(dig_norm_err_3),
	.inB(dig_norm_err_4),
	.Y(SYNTHESIZED_WIRE_16));


and2_reg	b2v_inst_and3(
	.clk(clk),
	.inA(dig_norm_err_5),
	.inB(dig_norm_err_6),
	.Y(SYNTHESIZED_WIRE_17));


and2_reg	b2v_inst_and4(
	.clk(clk),
	.inA(dig_norm_err_7),
	.inB(dig_norm_err_8),
	.Y(SYNTHESIZED_WIRE_18));


and2_reg	b2v_inst_and5(
	.clk(clk),
	.inA(dig_norm_err_9),
	.inB(dig_norm_err_10),
	.Y(SYNTHESIZED_WIRE_19));


and2_reg	b2v_inst_and6(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_15),
	.inB(SYNTHESIZED_WIRE_16),
	.Y(SYNTHESIZED_WIRE_20));


and3_reg	b2v_inst_and7(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_17),
	.inB(SYNTHESIZED_WIRE_18),
	.inC(SYNTHESIZED_WIRE_19),
	.Y(SYNTHESIZED_WIRE_21));


and2_reg	b2v_inst_and8(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_20),
	.inB(SYNTHESIZED_WIRE_21),
	.Y(all_digs_one));


reg_d	b2v_inst_and9(
	.clk(clk),
	.inA(all_digs_one),
	.Y(dig_uncor_err));


ec_gen_dig_err_norm	b2v_inst_gen1(
	.clk(clk),
	.sign_in_A(skp0_sign_out_A),
	.sign_in_B(skp0_sign_out_B),
	.Y(dig_norm_err_1));


ec_gen_dig_err_norm	b2v_inst_gen10(
	.clk(clk),
	.sign_in_A(skp9_sign_out_A),
	.sign_in_B(skp9_sign_out_B),
	.Y(dig_norm_err_10));


ec_gen_dig_err_norm	b2v_inst_gen2(
	.clk(clk),
	.sign_in_A(skp1_sign_out_A),
	.sign_in_B(skp1_sign_out_B),
	.Y(dig_norm_err_2));


ec_gen_dig_err_norm	b2v_inst_gen3(
	.clk(clk),
	.sign_in_A(skp2_sign_out_A),
	.sign_in_B(skp2_sign_out_B),
	.Y(dig_norm_err_3));


ec_gen_dig_err_norm	b2v_inst_gen4(
	.clk(clk),
	.sign_in_A(skp3_sign_out_A),
	.sign_in_B(skp3_sign_out_B),
	.Y(dig_norm_err_4));


ec_gen_dig_err_norm	b2v_inst_gen5(
	.clk(clk),
	.sign_in_A(skp4_sign_out_A),
	.sign_in_B(skp4_sign_out_B),
	.Y(dig_norm_err_5));


ec_gen_dig_err_norm	b2v_inst_gen6(
	.clk(clk),
	.sign_in_A(skp5_sign_out_A),
	.sign_in_B(skp5_sign_out_B),
	.Y(dig_norm_err_6));


ec_gen_dig_err_norm	b2v_inst_gen7(
	.clk(clk),
	.sign_in_A(skp6_sign_out_A),
	.sign_in_B(skp6_sign_out_B),
	.Y(dig_norm_err_7));


ec_gen_dig_err_norm	b2v_inst_gen8(
	.clk(clk),
	.sign_in_A(skp7_sign_out_A),
	.sign_in_B(skp7_sign_out_B),
	.Y(dig_norm_err_8));


ec_gen_dig_err_norm	b2v_inst_gen9(
	.clk(clk),
	.sign_in_A(skp8_sign_out_A),
	.sign_in_B(skp8_sign_out_B),
	.Y(dig_norm_err_9));


ec_gen_dig_err_malf	b2v_inst_malf_1(
	.clk(clk),
	.sign_in_A(skp0_sign_out_A),
	.sign_in_B(skp0_sign_out_B),
	.Y(dig_malf_err_1));


ec_gen_dig_err_malf	b2v_inst_malf_10(
	.clk(clk),
	.sign_in_A(skp9_sign_out_A),
	.sign_in_B(skp9_sign_out_B),
	.Y(dig_malf_err_10));


ec_gen_dig_err_malf	b2v_inst_malf_2(
	.clk(clk),
	.sign_in_A(skp1_sign_out_A),
	.sign_in_B(skp1_sign_out_B),
	.Y(dig_malf_err_2));


ec_gen_dig_err_malf	b2v_inst_malf_3(
	.clk(clk),
	.sign_in_A(skp2_sign_out_A),
	.sign_in_B(skp2_sign_out_B),
	.Y(dig_malf_err_3));


ec_gen_dig_err_malf	b2v_inst_malf_4(
	.clk(clk),
	.sign_in_A(skp3_sign_out_A),
	.sign_in_B(skp3_sign_out_B),
	.Y(dig_malf_err_4));


ec_gen_dig_err_malf	b2v_inst_malf_5(
	.clk(clk),
	.sign_in_A(skp4_sign_out_A),
	.sign_in_B(skp4_sign_out_B),
	.Y(dig_malf_err_5));


ec_gen_dig_err_malf	b2v_inst_malf_6(
	.clk(clk),
	.sign_in_A(skp5_sign_out_A),
	.sign_in_B(skp5_sign_out_B),
	.Y(dig_malf_err_6));


ec_gen_dig_err_malf	b2v_inst_malf_7(
	.clk(clk),
	.sign_in_A(skp6_sign_out_A),
	.sign_in_B(skp6_sign_out_B),
	.Y(dig_malf_err_7));


ec_gen_dig_err_malf	b2v_inst_malf_8(
	.clk(clk),
	.sign_in_A(skp7_sign_out_A),
	.sign_in_B(skp7_sign_out_B),
	.Y(dig_malf_err_8));


ec_gen_dig_err_malf	b2v_inst_malf_9(
	.clk(clk),
	.sign_in_A(skp8_sign_out_A),
	.sign_in_B(skp8_sign_out_B),
	.Y(dig_malf_err_9));


priority2_reg	b2v_preg1(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_22),
	.inB(SYNTHESIZED_WIRE_23),
	.errA(SYNTHESIZED_WIRE_46),
	.errB(SYNTHESIZED_WIRE_46),
	.Y(Y_stg1_1),
	.err(err_stg1_1));


priority2_reg	b2v_preg10(
	.clk(clk),
	.inA(Y_stg2_3),
	.inB(SYNTHESIZED_WIRE_47),
	.errA(err_stg2_3),
	.errB(SYNTHESIZED_WIRE_47),
	.Y(Y_stg3_2),
	.err(err_stg3_2));


priority2_final_reg	b2v_preg11(
	.clk(clk),
	.inA(Y_stg3_1),
	.inB(Y_stg3_2),
	.errA(err_stg3_1),
	.errB(err_stg3_2),
	.mal(dig_malf_stg4),
	.allOK(all_digs_ok),
	.Y(dig_norm_err),
	.err(dig_malf_err));


priority2_reg	b2v_preg2(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_28),
	.inB(SYNTHESIZED_WIRE_29),
	.errA(SYNTHESIZED_WIRE_48),
	.errB(SYNTHESIZED_WIRE_48),
	.Y(Y_stg1_2),
	.err(err_stg1_2));


priority2_reg	b2v_preg3(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_32),
	.inB(SYNTHESIZED_WIRE_33),
	.errA(SYNTHESIZED_WIRE_49),
	.errB(SYNTHESIZED_WIRE_49),
	.Y(Y_stg1_3),
	.err(err_stg1_3));


priority2_reg	b2v_preg4(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_36),
	.inB(SYNTHESIZED_WIRE_37),
	.errA(SYNTHESIZED_WIRE_50),
	.errB(SYNTHESIZED_WIRE_50),
	.Y(Y_stg1_4),
	.err(err_stg1_4));


priority2_reg	b2v_preg5(
	.clk(clk),
	.inA(SYNTHESIZED_WIRE_40),
	.inB(SYNTHESIZED_WIRE_41),
	.errA(SYNTHESIZED_WIRE_51),
	.errB(SYNTHESIZED_WIRE_51),
	.Y(Y_stg1_5),
	.err(err_stg1_5));


priority2_reg	b2v_preg6(
	.clk(clk),
	.inA(Y_stg1_1),
	.inB(Y_stg1_2),
	.errA(err_stg1_1),
	.errB(err_stg1_2),
	.Y(Y_stg2_1),
	.err(err_stg2_1));


priority2_reg	b2v_preg7(
	.clk(clk),
	.inA(Y_stg1_3),
	.inB(Y_stg1_4),
	.errA(err_stg1_3),
	.errB(err_stg1_4),
	.Y(Y_stg2_2),
	.err(err_stg2_2));


priority2_reg	b2v_preg8(
	.clk(clk),
	.inA(Y_stg1_5),
	.inB(SYNTHESIZED_WIRE_52),
	.errA(err_stg1_5),
	.errB(SYNTHESIZED_WIRE_52),
	.Y(Y_stg2_3),
	.err(err_stg2_3));


priority2_reg	b2v_preg9(
	.clk(clk),
	.inA(Y_stg2_1),
	.inB(Y_stg2_2),
	.errA(err_stg2_1),
	.errB(err_stg2_2),
	.Y(Y_stg3_1),
	.err(err_stg3_1));

assign	skp0_sign_out_A = skp0_sign_A;
assign	skp0_sign_out_B = skp0_sign_B;
assign	skp1_sign_out_A = skp1_sign_A;
assign	skp1_sign_out_B = skp1_sign_B;
assign	skp2_sign_out_A = skp2_sign_A;
assign	skp2_sign_out_B = skp2_sign_B;
assign	skp3_sign_out_A = skp3_sign_A;
assign	skp3_sign_out_B = skp3_sign_B;
assign	skp4_sign_out_A = skp4_sign_A;
assign	skp4_sign_out_B = skp4_sign_B;
assign	skp5_sign_out_A = skp5_sign_A;
assign	skp5_sign_out_B = skp5_sign_B;
assign	skp6_sign_out_A = skp6_sign_A;
assign	skp6_sign_out_B = skp6_sign_B;
assign	skp7_sign_out_A = skp7_sign_A;
assign	skp7_sign_out_B = skp7_sign_B;
assign	skp8_sign_out_A = skp8_sign_A;
assign	skp8_sign_out_B = skp8_sign_B;
assign	skp9_sign_out_A = skp9_sign_A;
assign	skp9_sign_out_B = skp9_sign_B;

endmodule
