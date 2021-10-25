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
// CREATED		"Sun May 19 07:54:35 2019"

module ec_correct_pipe18x10(
	clk,
	Dig_in_0_,
	Dig_in_1_,
	Dig_in_2_,
	Dig_in_3_,
	Dig_in_4_,
	Dig_in_5_,
	Dig_in_6_,
	Dig_in_7_,
	Dig_in_8_,
	Dig_in_9_,
	cor_error,
	non_cor_error,
	mal_error,
	out_0_,
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
input wire	[17:0] Dig_in_0_;
input wire	[17:0] Dig_in_1_;
input wire	[17:0] Dig_in_2_;
input wire	[17:0] Dig_in_3_;
input wire	[17:0] Dig_in_4_;
input wire	[17:0] Dig_in_5_;
input wire	[17:0] Dig_in_6_;
input wire	[17:0] Dig_in_7_;
input wire	[17:0] Dig_in_8_;
input wire	[17:0] Dig_in_9_;
output wire	cor_error;
output wire	non_cor_error;
output wire	mal_error;
output wire	[17:0] out_0_;
output wire	[17:0] out_1_;
output wire	[17:0] out_2_;
output wire	[17:0] out_3_;
output wire	[17:0] out_4_;
output wire	[17:0] out_5_;
output wire	[17:0] out_6_;
output wire	[17:0] out_7_;
output wire	[17:0] out_8_;
output wire	[17:0] out_9_;

wire	[17:0] d0_recomb;
wire	[17:0] d1_0_0_;
wire	[17:0] d1_recomb;
wire	[17:0] d2_0_1_;
wire	[17:0] d2_recomb;
wire	[17:0] d3_0_2_;
wire	[17:0] d3_recomb;
wire	[17:0] d4_0_3_;
wire	[17:0] d4_recomb;
wire	[17:0] d5_0_4_;
wire	[17:0] d5_recomb;
wire	[17:0] d6_0_5_;
wire	[17:0] d6_recomb;
wire	[17:0] d7_0_6_;
wire	[17:0] d7_recomb;
wire	[17:0] d8_0_7_;
wire	[17:0] d8_recomb;
wire	[17:0] d9_0_7_;
wire	[17:0] d9_recomb;
wire	[17:0] dig_0_delay;
wire	[17:0] dig_1_delay;
wire	[17:0] dig_2_delay;
wire	[17:0] dig_3_delay;
wire	[17:0] dig_4_delay;
wire	[17:0] dig_5_delay;
wire	[17:0] dig_6_delay;
wire	[17:0] dig_7_delay;
wire	[17:0] dig_8_delay;
wire	[17:0] dig_9_delay;
wire	[1:0] error_0_;
wire	[1:0] error_1_;
wire	[1:0] error_2_;
wire	[1:0] error_3_;
wire	[1:0] error_4_;
wire	[1:0] error_5_;
wire	[1:0] error_6_;
wire	[1:0] error_7_;
wire	[1:0] error_8_;
wire	[1:0] error_9_;
wire	[1:0] sign_out_0_;
wire	[1:0] sign_out_1_;
wire	[1:0] sign_out_2_;
wire	[1:0] sign_out_3_;
wire	[1:0] sign_out_4_;
wire	[1:0] sign_out_5_;
wire	[1:0] sign_out_6_;
wire	[1:0] sign_out_7_;
wire	[1:0] sign_out_8_neg;
wire	[1:0] sign_out_8_pos;
wire	[1:0] sign_out_9_neg;
wire	[1:0] sign_out_9_pos;
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
wire	[17:0] stg0_dig1_;
wire	[17:0] stg0_dig2_;
wire	[17:0] stg0_dig3_;
wire	[17:0] stg0_dig4_;
wire	[17:0] stg0_dig5_;
wire	[17:0] stg0_dig6_;
wire	[17:0] stg0_dig7_;
wire	[17:0] stg0_dig8_;
wire	[17:0] stg0_dig9_;
wire	[17:0] stg1_dig2_;
wire	[17:0] stg1_dig3_;
wire	[17:0] stg1_dig4_;
wire	[17:0] stg1_dig5_;
wire	[17:0] stg1_dig6_;
wire	[17:0] stg1_dig7_;
wire	[17:0] stg1_dig8_;
wire	[17:0] stg1_dig9_;
wire	[17:0] stg2_dig3_;
wire	[17:0] stg2_dig4_;
wire	[17:0] stg2_dig5_;
wire	[17:0] stg2_dig6_;
wire	[17:0] stg2_dig7_;
wire	[17:0] stg2_dig8_;
wire	[17:0] stg2_dig9_;
wire	[17:0] stg3_dig4_;
wire	[17:0] stg3_dig5_;
wire	[17:0] stg3_dig6_;
wire	[17:0] stg3_dig7_;
wire	[17:0] stg3_dig8_;
wire	[17:0] stg3_dig9_;
wire	[17:0] stg4_dig5_;
wire	[17:0] stg4_dig6_;
wire	[17:0] stg4_dig7_;
wire	[17:0] stg4_dig8_;
wire	[17:0] stg4_dig9_;
wire	[17:0] stg5_dig6_;
wire	[17:0] stg5_dig7_;
wire	[17:0] stg5_dig8_;
wire	[17:0] stg5_dig9_;
wire	[17:0] stg6_dig7_;
wire	[17:0] stg6_dig8_;
wire	[17:0] stg6_dig9_;
wire	[17:0] stg7_dig8_;
wire	[17:0] stg7_dig9_;
wire	[17:0] stg8_dig8_;
wire	[17:0] stg8_dig9_;
wire	[1:0] SYNTHESIZED_WIRE_0;





reg_delay_81L_x10	b2v_inst_bus_delay(
	.clk(clk),
	.reg10_in(Dig_in_9_),
	.reg1_in(Dig_in_0_),
	.reg2_in(Dig_in_1_),
	.reg3_in(Dig_in_2_),
	.reg4_in(Dig_in_3_),
	.reg5_in(Dig_in_4_),
	.reg6_in(Dig_in_5_),
	.reg7_in(Dig_in_6_),
	.reg8_in(Dig_in_7_),
	.reg9_in(Dig_in_8_),
	.reg10_out(dig_9_delay),
	.reg1_out(dig_0_delay),
	.reg2_out(dig_1_delay),
	.reg3_out(dig_2_delay),
	.reg4_out(dig_3_delay),
	.reg5_out(dig_4_delay),
	.reg6_out(dig_5_delay),
	.reg7_out(dig_6_delay),
	.reg8_out(dig_7_delay),
	.reg9_out(dig_8_delay));
	defparam	b2v_inst_bus_delay.DATA_WIDTH = 18;


fixed_val	b2v_inst_const1(
	.value(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst_const1.DATA_WIDTH = 2;
	defparam	b2v_inst_const1.MCONSTANT = 1;


ec_correct_select18x10	b2v_inst_correct_select(
	.clk(clk),
	.in_cor_10_(d9_recomb),
	.in_cor_1_(d0_recomb),
	.in_cor_2_(d1_recomb),
	.in_cor_3_(d2_recomb),
	.in_cor_4_(d3_recomb),
	.in_cor_5_(d4_recomb),
	.in_cor_6_(d5_recomb),
	.in_cor_7_(d6_recomb),
	.in_cor_8_(d7_recomb),
	.in_cor_9_(d8_recomb),
	.in_Y_10_(dig_9_delay),
	.in_Y_1_(dig_0_delay),
	.in_Y_2_(dig_1_delay),
	.in_Y_3_(dig_2_delay),
	.in_Y_4_(dig_3_delay),
	.in_Y_5_(dig_4_delay),
	.in_Y_6_(dig_5_delay),
	.in_Y_7_(dig_6_delay),
	.in_Y_8_(dig_7_delay),
	.in_Y_9_(dig_8_delay),
	.sign_in_A_10_(skp9_sign_out_A),
	.sign_in_A_1_(skp0_sign_out_A),
	.sign_in_A_2_(skp1_sign_out_A),
	.sign_in_A_3_(skp2_sign_out_A),
	.sign_in_A_4_(skp3_sign_out_A),
	.sign_in_A_5_(skp4_sign_out_A),
	.sign_in_A_6_(skp5_sign_out_A),
	.sign_in_A_7_(skp6_sign_out_A),
	.sign_in_A_8_(skp7_sign_out_A),
	.sign_in_A_9_(skp8_sign_out_A),
	.sign_in_B_10_(skp9_sign_out_B),
	.sign_in_B_1_(skp0_sign_out_B),
	.sign_in_B_2_(skp1_sign_out_B),
	.sign_in_B_3_(skp2_sign_out_B),
	.sign_in_B_4_(skp3_sign_out_B),
	.sign_in_B_5_(skp4_sign_out_B),
	.sign_in_B_6_(skp5_sign_out_B),
	.sign_in_B_7_(skp6_sign_out_B),
	.sign_in_B_8_(skp7_sign_out_B),
	.sign_in_B_9_(skp8_sign_out_B),
	.cor_error(cor_error),
	.non_cor_error(non_cor_error),
	.mal_error(mal_error),
	
	
	
	
	
	
	
	
	
	
	.out_10_(out_9_),
	.out_1_(out_0_),
	.out_2_(out_1_),
	.out_3_(out_2_),
	.out_4_(out_3_),
	.out_5_(out_4_),
	.out_6_(out_5_),
	.out_7_(out_6_),
	.out_8_(out_7_),
	.out_9_(out_8_));


MRC_pipe_full_ec_v1	b2v_inst_main_mrc(
	.clk(clk),
	.Dig_in_0_(Dig_in_0_),
	.Dig_in_1_(Dig_in_1_),
	.Dig_in_2_(Dig_in_2_),
	.Dig_in_3_(Dig_in_3_),
	.Dig_in_4_(Dig_in_4_),
	.Dig_in_5_(Dig_in_5_),
	.Dig_in_6_(Dig_in_6_),
	.Dig_in_7_(Dig_in_7_),
	.Dig_in_8_(Dig_in_8_),
	.Dig_in_9_(Dig_in_9_),
	.d1_0_0_(d1_0_0_),
	.d2_0_1_(d2_0_1_),
	.d3_0_2_(d3_0_2_),
	.d4_0_3_(d4_0_3_),
	.d5_0_4_(d5_0_4_),
	.d6_0_5_(d6_0_5_),
	.d7_0_6_(d7_0_6_),
	.d8_0_7_(d8_0_7_),
	.d9_0_7_(d9_0_7_),
	
	.Sgn_out_0_(sign_out_0_),
	.Sgn_out_1_(sign_out_1_),
	.Sgn_out_2_(sign_out_2_),
	.Sgn_out_3_(sign_out_3_),
	.Sgn_out_4_(sign_out_4_),
	.Sgn_out_5_(sign_out_5_),
	.Sgn_out_6_(sign_out_6_),
	.Sgn_out_7_(sign_out_7_),
	
	
	
	
	.Stg0_Dig1_(stg0_dig1_),
	.Stg0_Dig2_(stg0_dig2_),
	.Stg0_Dig3_(stg0_dig3_),
	.Stg0_Dig4_(stg0_dig4_),
	.Stg0_Dig5_(stg0_dig5_),
	.Stg0_Dig6_(stg0_dig6_),
	.Stg0_Dig7_(stg0_dig7_),
	.Stg0_Dig8_(stg0_dig8_),
	.Stg0_Dig9_(stg0_dig9_),
	.Stg1_Dig2_(stg1_dig2_),
	.Stg1_Dig3_(stg1_dig3_),
	.Stg1_Dig4_(stg1_dig4_),
	.Stg1_Dig5_(stg1_dig5_),
	.Stg1_Dig6_(stg1_dig6_),
	.Stg1_Dig7_(stg1_dig7_),
	.Stg1_Dig8_(stg1_dig8_),
	.Stg1_Dig9_(stg1_dig9_),
	.Stg2_Dig3_(stg2_dig3_),
	.Stg2_Dig4_(stg2_dig4_),
	.Stg2_Dig5_(stg2_dig5_),
	.Stg2_Dig6_(stg2_dig6_),
	.Stg2_Dig7_(stg2_dig7_),
	.Stg2_Dig8_(stg2_dig8_),
	.Stg2_Dig9_(stg2_dig9_),
	.Stg3_Dig4_(stg3_dig4_),
	.Stg3_Dig5_(stg3_dig5_),
	.Stg3_Dig6_(stg3_dig6_),
	.Stg3_Dig7_(stg3_dig7_),
	.Stg3_Dig8_(stg3_dig8_),
	.Stg3_Dig9_(stg3_dig9_),
	.Stg4_Dig5_(stg4_dig5_),
	.Stg4_Dig6_(stg4_dig6_),
	.Stg4_Dig7_(stg4_dig7_),
	.Stg4_Dig8_(stg4_dig8_),
	.Stg4_Dig9_(stg4_dig9_),
	.Stg5_Dig6_(stg5_dig6_),
	.Stg5_Dig7_(stg5_dig7_),
	.Stg5_Dig8_(stg5_dig8_),
	.Stg5_Dig9_(stg5_dig9_),
	.Stg6_Dig7_(stg6_dig7_),
	.Stg6_Dig8_(stg6_dig8_),
	.Stg6_Dig9_(stg6_dig9_),
	.Stg7_Dig8_(stg7_dig8_),
	.Stg7_Dig9_(stg7_dig9_),
	.Stg8_Dig8_(stg8_dig8_),
	.Stg8_Dig9_(stg8_dig9_));


MRC_pipe_mlab_ec_skp0	b2v_skp0(
	.clk(clk),
	.Dig_in_1_(stg0_dig1_),
	.Dig_in_2_(stg0_dig2_),
	.Dig_in_3_(stg0_dig3_),
	.Dig_in_4_(stg0_dig4_),
	.Dig_in_5_(stg0_dig5_),
	.Dig_in_6_(stg0_dig6_),
	.Dig_in_7_(stg0_dig7_),
	.Dig_in_8_(stg0_dig8_),
	.Dig_in_9_(stg0_dig9_),
	.Sgn_in(SYNTHESIZED_WIRE_0),
	.d0_0_8_(d0_recomb),
	
	
	
	
	
	
	
	
	
	.Sgn_out_9_A(skp0_sign_out_A),
	.Sgn_out_9_B(skp0_sign_out_B));


MRC_pipe_mlab_ec_skp1	b2v_skp1(
	.clk(clk),
	.d1_0_0_in(d1_0_0_),
	.Dig_in_2_(stg1_dig2_),
	.Dig_in_3_(stg1_dig3_),
	.Dig_in_4_(stg1_dig4_),
	.Dig_in_5_(stg1_dig5_),
	.Dig_in_6_(stg1_dig6_),
	.Dig_in_7_(stg1_dig7_),
	.Dig_in_8_(stg1_dig8_),
	.Dig_in_9_(stg1_dig9_),
	.Sgn_in(sign_out_0_),
	.d1_0_8_(d1_recomb),
	
	
	
	
	
	
	
	
	.Sgn_out_9_A(skp1_sign_out_A),
	.Sgn_out_9_B(skp1_sign_out_B));


MRC_pipe_mlab_ec_skp2	b2v_skp2(
	.clk(clk),
	.d2_0_1_in(d2_0_1_),
	.Dig_in_3_(stg2_dig3_),
	.Dig_in_4_(stg2_dig4_),
	.Dig_in_5_(stg2_dig5_),
	.Dig_in_6_(stg2_dig6_),
	.Dig_in_7_(stg2_dig7_),
	.Dig_in_8_(stg2_dig8_),
	.Dig_in_9_(stg2_dig9_),
	.Sgn_in(sign_out_1_),
	.d2_0_8_(d2_recomb),
	
	
	
	
	
	
	
	.Sgn_out_9_A(skp2_sign_out_A),
	.Sgn_out_9_B(skp2_sign_out_B));


MRC_pipe_mlab_ec_skp3	b2v_skp3(
	.clk(clk),
	.d3_0_2_in(d3_0_2_),
	.Dig_in_4_(stg3_dig4_),
	.Dig_in_5_(stg3_dig5_),
	.Dig_in_6_(stg3_dig6_),
	.Dig_in_7_(stg3_dig7_),
	.Dig_in_8_(stg3_dig8_),
	.Dig_in_9_(stg3_dig9_),
	.Sgn_in(sign_out_2_),
	.d3_0_8_(d3_recomb),
	
	
	
	
	
	
	.Sgn_out_9_A(skp3_sign_out_A),
	.Sgn_out_9_B(skp3_sign_out_B));


MRC_pipe_mlab_ec_skp4	b2v_skp4(
	.clk(clk),
	.d4_0_3_in(d4_0_3_),
	.Dig_in_5_(stg4_dig5_),
	.Dig_in_6_(stg4_dig6_),
	.Dig_in_7_(stg4_dig7_),
	.Dig_in_8_(stg4_dig8_),
	.Dig_in_9_(stg4_dig9_),
	.Sgn_in(sign_out_3_),
	.d4_0_8_(d4_recomb),
	
	
	
	
	
	.Sgn_out_9_A(skp4_sign_out_A),
	.Sgn_out_9_B(skp4_sign_out_B));


MRC_pipe_mlab_ec_skp5	b2v_skp5(
	.clk(clk),
	.d5_0_4_in(d5_0_4_),
	.Dig_in_6_(stg5_dig6_),
	.Dig_in_7_(stg5_dig7_),
	.Dig_in_8_(stg5_dig8_),
	.Dig_in_9_(stg5_dig9_),
	.Sgn_in(sign_out_4_),
	.d5_0_8_(d5_recomb),
	
	
	
	
	.Sgn_out_9_A(skp5_sign_out_A),
	.Sgn_out_9_B(skp5_sign_out_B));


MRC_pipe_mlab_ec_skp6	b2v_skp6(
	.clk(clk),
	.d6_0_5_in(d6_0_5_),
	.Dig_in_7_(stg6_dig7_),
	.Dig_in_8_(stg6_dig8_),
	.Dig_in_9_(stg6_dig9_),
	.Sgn_in(sign_out_5_),
	.d6_0_8_(d6_recomb),
	
	
	
	.Sgn_out_9_A(skp6_sign_out_A),
	.Sgn_out_9_B(skp6_sign_out_B));


MRC_pipe_mlab_ec_skp7	b2v_skp7(
	.clk(clk),
	.d7_0_6_in(d7_0_6_),
	.Dig_in_8_(stg7_dig8_),
	.Dig_in_9_(stg7_dig9_),
	.Sgn_in(sign_out_6_),
	.d7_0_8_(d7_recomb),
	
	
	.Sgn_out_9_A(skp7_sign_out_A),
	.Sgn_out_9_B(skp7_sign_out_B));


MRC_pipe_mlab_ec_skp8	b2v_skp8(
	.clk(clk),
	.d8_0_7_in(d8_0_7_),
	.Dig_in_9_(stg8_dig9_),
	.Sgn_in_A(sign_out_7_),
	.Sgn_in_B(sign_out_7_),
	.d8_0_8_(d8_recomb),
	.Sgn_out_9_A(skp8_sign_out_A),
	.Sgn_out_9_B(skp8_sign_out_B));


MRC_pipe_mlab_ec_skp9	b2v_skp9(
	.clk(clk),
	.d9_0_7_in(d9_0_7_),
	.Dig_in_9_(stg8_dig8_),
	.Sgn_in_A(sign_out_7_),
	.Sgn_in_B(sign_out_7_),
	.d9_0_8_(d9_recomb),
	.Sgn_out_9_A(skp9_sign_out_A),
	.Sgn_out_9_B(skp9_sign_out_B));


endmodule
