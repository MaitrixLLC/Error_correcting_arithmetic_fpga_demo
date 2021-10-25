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
// CREATED		"Wed Oct 30 21:19:12 2019"

module ec_prod_sum_test10(
	s_clk,
	f_clk,
	reset_in,
	nios_rd_clk,
	nios_rd_req,
	lut_wr_clk,
	lut_wr_ena_B,
	lut_wr_ena_A,
	lut_adr_in,
	lut_data_in,
	num_bats,
	num_prods,
	done,
	fixpnt_sign_out,
	fixpnt_ov1_out,
	fast_ena_out,
	ec_err_digs,
	ec_flags_out,
	ec_flags_rd_used,
	fixpnt_data_out,
	fixpnt_rd_used
);


input wire	s_clk;
input wire	f_clk;
input wire	reset_in;
input wire	nios_rd_clk;
input wire	nios_rd_req;
input wire	lut_wr_clk;
input wire	lut_wr_ena_B;
input wire	lut_wr_ena_A;
input wire	[10:0] lut_adr_in;
input wire	[31:0] lut_data_in;
input wire	[9:0] num_bats;
input wire	[9:0] num_prods;
output wire	done;
output wire	fixpnt_sign_out;
output wire	fixpnt_ov1_out;
output wire	fast_ena_out;
output wire	[19:0] ec_err_digs;
output wire	[2:0] ec_flags_out;
output wire	[8:0] ec_flags_rd_used;
output wire	[31:0] fixpnt_data_out;
output wire	[9:0] fixpnt_rd_used;

wire	aclr;
wire	clear_ena;
wire	[9:0] data_A_rd_empty_;
wire	[8:0] data_A_rd_used;
wire	[9:0] data_A_wr_full_;
wire	[8:0] data_A_wr_used;
wire	[9:0] data_B_rd_empty_;
wire	[8:0] data_B_rd_used;
wire	[9:0] data_B_wr_full_;
wire	[8:0] data_B_wr_used;
wire	[63:0] data_in_a;
wire	data_in_async_clr;
wire	[63:0] data_in_b;
wire	data_in_rd_req;
wire	[9:0] data_lut_adr;
wire	data_out_async_clr;
wire	data_out_rd_req;
wire	datavalid_in;
wire	ec_datavalid_out;
wire	[19:0] err_digs;
wire	nios_rd_req_1;
wire	norm_datavalid_out;
wire	[15:0] R4_in_a;
wire	[15:0] R4_in_b;
wire	[9:0] result_rd_full_;
wire	[8:0] result_rd_used;
wire	[9:0] result_wr_full_;
wire	[8:0] result_wr_used;
wire	sign_in_A;
wire	sign_in_B;
wire	start;
wire	trunc_ena;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[17:0] SYNTHESIZED_WIRE_2;
wire	[17:0] SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_4;
wire	[17:0] SYNTHESIZED_WIRE_5;
wire	[17:0] SYNTHESIZED_WIRE_6;
wire	[17:0] SYNTHESIZED_WIRE_7;
wire	[17:0] SYNTHESIZED_WIRE_8;
wire	[17:0] SYNTHESIZED_WIRE_9;
wire	[17:0] SYNTHESIZED_WIRE_10;
wire	[17:0] SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[17:0] SYNTHESIZED_WIRE_13;
wire	[17:0] SYNTHESIZED_WIRE_14;
wire	[17:0] SYNTHESIZED_WIRE_15;
wire	[17:0] SYNTHESIZED_WIRE_16;
wire	[17:0] SYNTHESIZED_WIRE_17;
wire	[17:0] SYNTHESIZED_WIRE_18;
wire	[17:0] SYNTHESIZED_WIRE_19;
wire	[17:0] SYNTHESIZED_WIRE_20;
wire	[17:0] SYNTHESIZED_WIRE_21;
wire	[17:0] SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	[15:0] SYNTHESIZED_WIRE_26;
wire	[15:0] SYNTHESIZED_WIRE_27;
wire	[15:0] SYNTHESIZED_WIRE_28;
wire	[15:0] SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	[17:0] SYNTHESIZED_WIRE_31;
wire	[17:0] SYNTHESIZED_WIRE_32;
wire	[17:0] SYNTHESIZED_WIRE_33;
wire	[17:0] SYNTHESIZED_WIRE_34;
wire	[17:0] SYNTHESIZED_WIRE_35;
wire	[17:0] SYNTHESIZED_WIRE_36;
wire	[17:0] SYNTHESIZED_WIRE_37;
wire	[17:0] SYNTHESIZED_WIRE_38;
wire	[17:0] SYNTHESIZED_WIRE_39;
wire	[17:0] SYNTHESIZED_WIRE_40;
wire	[0:0] SYNTHESIZED_WIRE_41;
wire	[17:0] SYNTHESIZED_WIRE_42;
wire	[17:0] SYNTHESIZED_WIRE_43;
wire	[17:0] SYNTHESIZED_WIRE_44;
wire	[17:0] SYNTHESIZED_WIRE_45;
wire	[17:0] SYNTHESIZED_WIRE_46;
wire	[17:0] SYNTHESIZED_WIRE_47;
wire	[17:0] SYNTHESIZED_WIRE_48;
wire	[17:0] SYNTHESIZED_WIRE_49;
wire	[17:0] SYNTHESIZED_WIRE_50;
wire	[17:0] SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	[17:0] SYNTHESIZED_WIRE_57;
wire	[17:0] SYNTHESIZED_WIRE_58;
wire	[17:0] SYNTHESIZED_WIRE_59;
wire	[17:0] SYNTHESIZED_WIRE_60;
wire	[17:0] SYNTHESIZED_WIRE_61;
wire	[17:0] SYNTHESIZED_WIRE_62;
wire	[17:0] SYNTHESIZED_WIRE_63;
wire	[17:0] SYNTHESIZED_WIRE_64;
wire	[17:0] SYNTHESIZED_WIRE_65;
wire	[17:0] SYNTHESIZED_WIRE_66;
wire	[17:0] SYNTHESIZED_WIRE_67;
wire	[17:0] SYNTHESIZED_WIRE_68;
wire	[17:0] SYNTHESIZED_WIRE_69;
wire	[17:0] SYNTHESIZED_WIRE_70;
wire	[17:0] SYNTHESIZED_WIRE_71;
wire	[17:0] SYNTHESIZED_WIRE_72;
wire	[17:0] SYNTHESIZED_WIRE_73;
wire	[17:0] SYNTHESIZED_WIRE_74;
wire	[17:0] SYNTHESIZED_WIRE_75;
wire	[17:0] SYNTHESIZED_WIRE_76;
wire	[17:0] SYNTHESIZED_WIRE_77;
wire	[17:0] SYNTHESIZED_WIRE_78;
wire	[17:0] SYNTHESIZED_WIRE_79;
wire	[17:0] SYNTHESIZED_WIRE_80;
wire	[17:0] SYNTHESIZED_WIRE_81;
wire	[17:0] SYNTHESIZED_WIRE_82;
wire	[17:0] SYNTHESIZED_WIRE_83;
wire	[17:0] SYNTHESIZED_WIRE_84;
wire	[17:0] SYNTHESIZED_WIRE_85;
wire	[17:0] SYNTHESIZED_WIRE_86;
wire	[17:0] SYNTHESIZED_WIRE_87;
wire	[17:0] SYNTHESIZED_WIRE_88;
wire	[17:0] SYNTHESIZED_WIRE_89;
wire	[17:0] SYNTHESIZED_WIRE_90;

assign	SYNTHESIZED_WIRE_0 = 0;
assign	SYNTHESIZED_WIRE_55 = 0;
assign	SYNTHESIZED_WIRE_56 = 0;




ma_control	b2v_control(
	.s_clk(s_clk),
	.f_clk(f_clk),
	.start(start),
	.aclr(aclr),
	.num_batches(num_bats),
	.num_prods(num_prods),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.datavalid_in(datavalid_in),
	.data_in_rd_req(data_in_rd_req),
	.data_in_async_clr(data_in_async_clr),
	.data_out_rd_req(data_out_rd_req),
	.data_out_async_clr(data_out_async_clr),
	.fast_ena_out(fast_ena_out),
	.done(done),
	.data_lut_adr(data_lut_adr));

assign	sign_in_B = data_in_b[63];




loop_start	b2v_inst10(
	.s_clk(s_clk),
	.reset_in(reset_in),
	.done(SYNTHESIZED_WIRE_0),
	.start(start),
	.aclr(aclr));


fifo_2c_x10	b2v_inst12(
	.wr_clk(s_clk),
	.rd_clk(f_clk),
	.wr_req(SYNTHESIZED_WIRE_1),
	.rd_req(data_in_rd_req),
	.async_clr(data_in_async_clr),
	.dig0_in_(SYNTHESIZED_WIRE_2),
	.dig1_in_(SYNTHESIZED_WIRE_3),
	.dig2_in_(SYNTHESIZED_WIRE_4),
	.dig3_in_(SYNTHESIZED_WIRE_5),
	.dig4_in_(SYNTHESIZED_WIRE_6),
	.dig5_in_(SYNTHESIZED_WIRE_7),
	.dig6_in_(SYNTHESIZED_WIRE_8),
	.dig7_in_(SYNTHESIZED_WIRE_9),
	.dig8_in_(SYNTHESIZED_WIRE_10),
	.dig9_in_(SYNTHESIZED_WIRE_11),
	.dig0_out_(SYNTHESIZED_WIRE_76),
	.dig1_out_(SYNTHESIZED_WIRE_77),
	.dig2_out_(SYNTHESIZED_WIRE_78),
	.dig3_out_(SYNTHESIZED_WIRE_79),
	.dig4_out_(SYNTHESIZED_WIRE_80),
	.dig5_out_(SYNTHESIZED_WIRE_81),
	.dig6_out_(SYNTHESIZED_WIRE_82),
	.dig7_out_(SYNTHESIZED_WIRE_83),
	.dig8_out_(SYNTHESIZED_WIRE_84),
	.dig9_out_(SYNTHESIZED_WIRE_75)
	
	
	
	);


fifo_2c_x10	b2v_inst13(
	.wr_clk(s_clk),
	.rd_clk(f_clk),
	.wr_req(SYNTHESIZED_WIRE_12),
	.rd_req(data_in_rd_req),
	.async_clr(data_in_async_clr),
	.dig0_in_(SYNTHESIZED_WIRE_13),
	.dig1_in_(SYNTHESIZED_WIRE_14),
	.dig2_in_(SYNTHESIZED_WIRE_15),
	.dig3_in_(SYNTHESIZED_WIRE_16),
	.dig4_in_(SYNTHESIZED_WIRE_17),
	.dig5_in_(SYNTHESIZED_WIRE_18),
	.dig6_in_(SYNTHESIZED_WIRE_19),
	.dig7_in_(SYNTHESIZED_WIRE_20),
	.dig8_in_(SYNTHESIZED_WIRE_21),
	.dig9_in_(SYNTHESIZED_WIRE_22),
	.dig0_out_(SYNTHESIZED_WIRE_66),
	.dig1_out_(SYNTHESIZED_WIRE_67),
	.dig2_out_(SYNTHESIZED_WIRE_68),
	.dig3_out_(SYNTHESIZED_WIRE_69),
	.dig4_out_(SYNTHESIZED_WIRE_70),
	.dig5_out_(SYNTHESIZED_WIRE_71),
	.dig6_out_(SYNTHESIZED_WIRE_72),
	.dig7_out_(SYNTHESIZED_WIRE_73),
	.dig8_out_(SYNTHESIZED_WIRE_74),
	.dig9_out_(SYNTHESIZED_WIRE_65)
	
	
	
	);


fifo_fixpntint1	b2v_inst14(
	.wr_clk(s_clk),
	.rd_clk(nios_rd_clk),
	.wr_req(SYNTHESIZED_WIRE_23),
	.rd_req(nios_rd_req_1),
	.async_clr(aclr),
	.sign_in(SYNTHESIZED_WIRE_24),
	.ov1_in(SYNTHESIZED_WIRE_25),
	.data1_in_(SYNTHESIZED_WIRE_26),
	.data2_in_(SYNTHESIZED_WIRE_27),
	.data3_in_(SYNTHESIZED_WIRE_28),
	.data4_in_(SYNTHESIZED_WIRE_29),
	.sign_out(fixpnt_sign_out),
	.ov1_out(fixpnt_ov1_out),
	.data_out_(fixpnt_data_out),
	
	.rd_used_(fixpnt_rd_used)
	
	);


fifo_2c_x10	b2v_inst15(
	.wr_clk(f_clk),
	.rd_clk(s_clk),
	.wr_req(SYNTHESIZED_WIRE_30),
	.rd_req(data_out_rd_req),
	.async_clr(data_out_async_clr),
	.dig0_in_(SYNTHESIZED_WIRE_31),
	.dig1_in_(SYNTHESIZED_WIRE_32),
	.dig2_in_(SYNTHESIZED_WIRE_33),
	.dig3_in_(SYNTHESIZED_WIRE_34),
	.dig4_in_(SYNTHESIZED_WIRE_35),
	.dig5_in_(SYNTHESIZED_WIRE_36),
	.dig6_in_(SYNTHESIZED_WIRE_37),
	.dig7_in_(SYNTHESIZED_WIRE_38),
	.dig8_in_(SYNTHESIZED_WIRE_39),
	.dig9_in_(SYNTHESIZED_WIRE_40),
	.dig0_out_(SYNTHESIZED_WIRE_42),
	.dig1_out_(SYNTHESIZED_WIRE_43),
	.dig2_out_(SYNTHESIZED_WIRE_44),
	.dig3_out_(SYNTHESIZED_WIRE_45),
	.dig4_out_(SYNTHESIZED_WIRE_46),
	.dig5_out_(SYNTHESIZED_WIRE_47),
	.dig6_out_(SYNTHESIZED_WIRE_48),
	.dig7_out_(SYNTHESIZED_WIRE_49),
	.dig8_out_(SYNTHESIZED_WIRE_50),
	.dig9_out_(SYNTHESIZED_WIRE_51)
	
	
	
	);


Ram2port_64_32_2048	b2v_inst16(
	.wren(lut_wr_ena_A),
	.wrclock(lut_wr_clk),
	.rdclock(s_clk),
	.data(lut_data_in),
	.rdaddress(data_lut_adr),
	.wraddress(lut_adr_in),
	.q(data_in_a));


Ram2port_64_32_2048	b2v_inst17(
	.wren(lut_wr_ena_B),
	.wrclock(lut_wr_clk),
	.rdclock(s_clk),
	.data(lut_data_in),
	.rdaddress(data_lut_adr),
	.wraddress(lut_adr_in),
	.q(data_in_b));


ec_correct_pipe18x10_dval_errdigs	b2v_inst2(
	.clk(s_clk),
	.datavalid_in(SYNTHESIZED_WIRE_41),
	.aclr(aclr),
	.Dig_in_0_(SYNTHESIZED_WIRE_42),
	.Dig_in_1_(SYNTHESIZED_WIRE_43),
	.Dig_in_2_(SYNTHESIZED_WIRE_44),
	.Dig_in_3_(SYNTHESIZED_WIRE_45),
	.Dig_in_4_(SYNTHESIZED_WIRE_46),
	.Dig_in_5_(SYNTHESIZED_WIRE_47),
	.Dig_in_6_(SYNTHESIZED_WIRE_48),
	.Dig_in_7_(SYNTHESIZED_WIRE_49),
	.Dig_in_8_(SYNTHESIZED_WIRE_50),
	.Dig_in_9_(SYNTHESIZED_WIRE_51),
	.cor_error(SYNTHESIZED_WIRE_52),
	.non_cor_error(SYNTHESIZED_WIRE_53),
	.mal_error(SYNTHESIZED_WIRE_54),
	.datavalid_out(ec_datavalid_out),
	.err_digs(err_digs),
	.out_0_(SYNTHESIZED_WIRE_57),
	.out_1_(SYNTHESIZED_WIRE_58),
	.out_2_(SYNTHESIZED_WIRE_59),
	.out_3_(SYNTHESIZED_WIRE_60),
	.out_4_(SYNTHESIZED_WIRE_61),
	.out_5_(SYNTHESIZED_WIRE_62),
	.out_6_(SYNTHESIZED_WIRE_63),
	.out_7_(SYNTHESIZED_WIRE_64)
	
	);


fifo_ec_correct_flags	b2v_inst3(
	.wr_clk(s_clk),
	.rd_clk(nios_rd_clk),
	.wr_req(ec_datavalid_out),
	.rd_req(nios_rd_req_1),
	.async_clr(aclr),
	.cor_error_in(SYNTHESIZED_WIRE_52),
	.uncor_error_in(SYNTHESIZED_WIRE_53),
	.mal_error_in(SYNTHESIZED_WIRE_54),
	
	.ec_flags_out(ec_flags_out),
	.wr_used_(ec_flags_rd_used));

assign	R4_in_b[14:0] = data_in_b[62:48];


assign	R4_in_b[15] = SYNTHESIZED_WIRE_55;



assign	sign_in_A = data_in_a[63];


assign	R4_in_a[14:0] = data_in_a[62:48];


assign	R4_in_a[15] = SYNTHESIZED_WIRE_56;




reg_aclr	b2v_inst4(
	.clk(s_clk),
	.aclr(start),
	.reg_in(data_out_rd_req),
	.reg_out(SYNTHESIZED_WIRE_41));
	defparam	b2v_inst4.DATA_WIDTH = 1;


fifo_ec_correct_digits	b2v_inst5(
	.wr_clk(s_clk),
	.rd_clk(nios_rd_clk),
	.wr_req(ec_datavalid_out),
	.rd_req(nios_rd_req_1),
	.async_clr(aclr),
	.ec_error_digs_in(err_digs),
	
	.ec_error_digs_out(ec_err_digs)
	);


FFracConv4x16_10x18	b2v_inst6(
	.clk(s_clk),
	.sign_in(sign_in_B),
	.datavalid_in(datavalid_in),
	.aclr(aclr),
	.R1_in(data_in_b[15:0]),
	.R2_in(data_in_b[31:16]),
	.R3_in(data_in_b[47:32]),
	.R4_in(R4_in_b),
	
	.datavalid_out(SYNTHESIZED_WIRE_1),
	.rns_R10_out(SYNTHESIZED_WIRE_11),
	.rns_R1_out(SYNTHESIZED_WIRE_2),
	.rns_R2_out(SYNTHESIZED_WIRE_3),
	.rns_R3_out(SYNTHESIZED_WIRE_4),
	.rns_R4_out(SYNTHESIZED_WIRE_5),
	.rns_R5_out(SYNTHESIZED_WIRE_6),
	.rns_R6_out(SYNTHESIZED_WIRE_7),
	.rns_R7_out(SYNTHESIZED_WIRE_8),
	.rns_R8_out(SYNTHESIZED_WIRE_9),
	.rns_R9_out(SYNTHESIZED_WIRE_10));


FFracConv4x16_10x18	b2v_inst7(
	.clk(s_clk),
	.sign_in(sign_in_A),
	.datavalid_in(datavalid_in),
	.aclr(aclr),
	.R1_in(data_in_a[15:0]),
	.R2_in(data_in_a[31:16]),
	.R3_in(data_in_a[47:32]),
	.R4_in(R4_in_a),
	
	.datavalid_out(SYNTHESIZED_WIRE_12),
	.rns_R10_out(SYNTHESIZED_WIRE_22),
	.rns_R1_out(SYNTHESIZED_WIRE_13),
	.rns_R2_out(SYNTHESIZED_WIRE_14),
	.rns_R3_out(SYNTHESIZED_WIRE_15),
	.rns_R4_out(SYNTHESIZED_WIRE_16),
	.rns_R5_out(SYNTHESIZED_WIRE_17),
	.rns_R6_out(SYNTHESIZED_WIRE_18),
	.rns_R7_out(SYNTHESIZED_WIRE_19),
	.rns_R8_out(SYNTHESIZED_WIRE_20),
	.rns_R9_out(SYNTHESIZED_WIRE_21));


Full_Norm_pipe8x18_dval	b2v_norm_unit(
	.clk(s_clk),
	.aclr(aclr),
	.datavalid_in(ec_datavalid_out),
	.Dig_0_(SYNTHESIZED_WIRE_57),
	.Dig_1_(SYNTHESIZED_WIRE_58),
	.Dig_2_(SYNTHESIZED_WIRE_59),
	.Dig_3_(SYNTHESIZED_WIRE_60),
	.Dig_4_(SYNTHESIZED_WIRE_61),
	.Dig_5_(SYNTHESIZED_WIRE_62),
	.Dig_6_(SYNTHESIZED_WIRE_63),
	.Dig_7_(SYNTHESIZED_WIRE_64),
	.datavalid_out(norm_datavalid_out),
	.sign_norm_d0_(SYNTHESIZED_WIRE_85),
	.sign_norm_d1_(SYNTHESIZED_WIRE_86),
	.sign_norm_d2_(SYNTHESIZED_WIRE_87),
	.sign_norm_d3_(SYNTHESIZED_WIRE_88),
	.sign_norm_d4_(SYNTHESIZED_WIRE_89),
	.sign_norm_d5_(SYNTHESIZED_WIRE_90)
	
	
	);


ec_prod_sum_test	b2v_prodsum_unit(
	.clk_f(f_clk),
	.trunc_ena(trunc_ena),
	.clear_ena(clear_ena),
	.digA_in_10_(SYNTHESIZED_WIRE_65),
	.digA_in_1_(SYNTHESIZED_WIRE_66),
	.digA_in_2_(SYNTHESIZED_WIRE_67),
	.digA_in_3_(SYNTHESIZED_WIRE_68),
	.digA_in_4_(SYNTHESIZED_WIRE_69),
	.digA_in_5_(SYNTHESIZED_WIRE_70),
	.digA_in_6_(SYNTHESIZED_WIRE_71),
	.digA_in_7_(SYNTHESIZED_WIRE_72),
	.digA_in_8_(SYNTHESIZED_WIRE_73),
	.digA_in_9_(SYNTHESIZED_WIRE_74),
	.digB_in_10_(SYNTHESIZED_WIRE_75),
	.digB_in_1_(SYNTHESIZED_WIRE_76),
	.digB_in_2_(SYNTHESIZED_WIRE_77),
	.digB_in_3_(SYNTHESIZED_WIRE_78),
	.digB_in_4_(SYNTHESIZED_WIRE_79),
	.digB_in_5_(SYNTHESIZED_WIRE_80),
	.digB_in_6_(SYNTHESIZED_WIRE_81),
	.digB_in_7_(SYNTHESIZED_WIRE_82),
	.digB_in_8_(SYNTHESIZED_WIRE_83),
	.digB_in_9_(SYNTHESIZED_WIRE_84),
	.data_valid_out(SYNTHESIZED_WIRE_30),
	.dig_sum_10_(SYNTHESIZED_WIRE_40),
	.dig_sum_1_(SYNTHESIZED_WIRE_31),
	.dig_sum_2_(SYNTHESIZED_WIRE_32),
	.dig_sum_3_(SYNTHESIZED_WIRE_33),
	.dig_sum_4_(SYNTHESIZED_WIRE_34),
	.dig_sum_5_(SYNTHESIZED_WIRE_35),
	.dig_sum_6_(SYNTHESIZED_WIRE_36),
	.dig_sum_7_(SYNTHESIZED_WIRE_37),
	.dig_sum_8_(SYNTHESIZED_WIRE_38),
	.dig_sum_9_(SYNTHESIZED_WIRE_39));


RFracConv18_16_dval	b2v_rfrac_unit(
	.clk(s_clk),
	.aclr(aclr),
	.datavalid_in(norm_datavalid_out),
	.RNS_D1_in(SYNTHESIZED_WIRE_85),
	.RNS_D2_in(SYNTHESIZED_WIRE_86),
	.RNS_D3_in(SYNTHESIZED_WIRE_87),
	.RNS_D4_in(SYNTHESIZED_WIRE_88),
	.RNS_D5_in(SYNTHESIZED_WIRE_89),
	.RNS_D6_in(SYNTHESIZED_WIRE_90),
	.ov1_out(SYNTHESIZED_WIRE_25),
	.sign_out(SYNTHESIZED_WIRE_24),
	.datavalid_out(SYNTHESIZED_WIRE_23),
	.b0_out(SYNTHESIZED_WIRE_26),
	.b1_out(SYNTHESIZED_WIRE_27),
	.b2_out(SYNTHESIZED_WIRE_28),
	.b3_out(SYNTHESIZED_WIRE_29)
	);

assign	nios_rd_req_1 = nios_rd_req;

endmodule
