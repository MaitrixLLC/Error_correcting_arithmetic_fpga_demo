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
// CREATED		"Wed May 15 18:26:06 2019"

// NOTE:  RECOMPILING SOURCE WILL DELETE CUSTOM PARAMTERIZATION

module reg_delay_81L_x10 #(parameter DATA_WIDTH = 18) (
	clk,
	reg10_in,
	reg1_in,
	reg2_in,
	reg3_in,
	reg4_in,
	reg5_in,
	reg6_in,
	reg7_in,
	reg8_in,
	reg9_in,
	reg10_out,
	reg1_out,
	reg2_out,
	reg3_out,
	reg4_out,
	reg5_out,
	reg6_out,
	reg7_out,
	reg8_out,
	reg9_out
);

// parameter	DATA_WIDTH = 18;

input wire	clk;
input wire	[DATA_WIDTH-1:0] reg10_in;
input wire	[DATA_WIDTH-1:0] reg1_in;
input wire	[DATA_WIDTH-1:0] reg2_in;
input wire	[DATA_WIDTH-1:0] reg3_in;
input wire	[DATA_WIDTH-1:0] reg4_in;
input wire	[DATA_WIDTH-1:0] reg5_in;
input wire	[DATA_WIDTH-1:0] reg6_in;
input wire	[DATA_WIDTH-1:0] reg7_in;
input wire	[DATA_WIDTH-1:0] reg8_in;
input wire	[DATA_WIDTH-1:0] reg9_in;
output wire	[DATA_WIDTH-1:0] reg10_out;
output wire	[DATA_WIDTH-1:0] reg1_out;
output wire	[DATA_WIDTH-1:0] reg2_out;
output wire	[DATA_WIDTH-1:0] reg3_out;
output wire	[DATA_WIDTH-1:0] reg4_out;
output wire	[DATA_WIDTH-1:0] reg5_out;
output wire	[DATA_WIDTH-1:0] reg6_out;
output wire	[DATA_WIDTH-1:0] reg7_out;
output wire	[DATA_WIDTH-1:0] reg8_out;
output wire	[DATA_WIDTH-1:0] reg9_out;

wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_0;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_1;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_2;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_3;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_4;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_5;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_6;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_7;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_8;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_9;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_10;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_11;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_12;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_13;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_14;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_15;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_16;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_17;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_18;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_19;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_20;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_21;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_22;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_23;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_24;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_25;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_26;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_27;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_28;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_29;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_30;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_31;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_32;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_33;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_34;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_35;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_36;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_37;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_38;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_39;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_40;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_41;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_42;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_43;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_44;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_45;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_46;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_47;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_48;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_49;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_50;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_51;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_52;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_53;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_54;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_55;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_56;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_57;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_58;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_59;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_60;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_61;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_62;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_63;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_64;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_65;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_66;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_67;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_68;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_69;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_70;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_71;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_72;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_73;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_74;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_75;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_76;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_77;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_78;
wire	[DATA_WIDTH-1:0] SYNTHESIZED_WIRE_79;





reg_delay_9L	b2v_inst1(
	.pin_name1(clk),
	.reg_in(reg1_in),
	.reg_out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst1.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst10(
	.pin_name1(clk),
	.reg_in(reg10_in),
	.reg_out(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst10.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst11(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_0),
	.reg_out(SYNTHESIZED_WIRE_10));
	defparam	b2v_inst11.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst12(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_1),
	.reg_out(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst12.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst13(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_2),
	.reg_out(SYNTHESIZED_WIRE_12));
	defparam	b2v_inst13.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst14(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_3),
	.reg_out(SYNTHESIZED_WIRE_13));
	defparam	b2v_inst14.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst15(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_4),
	.reg_out(SYNTHESIZED_WIRE_14));
	defparam	b2v_inst15.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst16(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_5),
	.reg_out(SYNTHESIZED_WIRE_15));
	defparam	b2v_inst16.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst17(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_6),
	.reg_out(SYNTHESIZED_WIRE_16));
	defparam	b2v_inst17.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst18(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_7),
	.reg_out(SYNTHESIZED_WIRE_17));
	defparam	b2v_inst18.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst19(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_8),
	.reg_out(SYNTHESIZED_WIRE_18));
	defparam	b2v_inst19.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst2(
	.pin_name1(clk),
	.reg_in(reg2_in),
	.reg_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst2.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst20(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_9),
	.reg_out(SYNTHESIZED_WIRE_19));
	defparam	b2v_inst20.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst21(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_10),
	.reg_out(SYNTHESIZED_WIRE_20));
	defparam	b2v_inst21.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst22(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_11),
	.reg_out(SYNTHESIZED_WIRE_21));
	defparam	b2v_inst22.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst23(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_12),
	.reg_out(SYNTHESIZED_WIRE_22));
	defparam	b2v_inst23.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst24(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_13),
	.reg_out(SYNTHESIZED_WIRE_23));
	defparam	b2v_inst24.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst25(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_14),
	.reg_out(SYNTHESIZED_WIRE_24));
	defparam	b2v_inst25.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst26(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_15),
	.reg_out(SYNTHESIZED_WIRE_25));
	defparam	b2v_inst26.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst27(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_16),
	.reg_out(SYNTHESIZED_WIRE_26));
	defparam	b2v_inst27.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst28(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_17),
	.reg_out(SYNTHESIZED_WIRE_27));
	defparam	b2v_inst28.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst29(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_18),
	.reg_out(SYNTHESIZED_WIRE_28));
	defparam	b2v_inst29.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst3(
	.pin_name1(clk),
	.reg_in(reg3_in),
	.reg_out(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst3.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst30(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_19),
	.reg_out(SYNTHESIZED_WIRE_29));
	defparam	b2v_inst30.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst31(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_20),
	.reg_out(SYNTHESIZED_WIRE_30));
	defparam	b2v_inst31.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst32(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_21),
	.reg_out(SYNTHESIZED_WIRE_31));
	defparam	b2v_inst32.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst33(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_22),
	.reg_out(SYNTHESIZED_WIRE_32));
	defparam	b2v_inst33.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst34(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_23),
	.reg_out(SYNTHESIZED_WIRE_33));
	defparam	b2v_inst34.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst35(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_24),
	.reg_out(SYNTHESIZED_WIRE_34));
	defparam	b2v_inst35.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst36(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_25),
	.reg_out(SYNTHESIZED_WIRE_35));
	defparam	b2v_inst36.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst37(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_26),
	.reg_out(SYNTHESIZED_WIRE_36));
	defparam	b2v_inst37.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst38(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_27),
	.reg_out(SYNTHESIZED_WIRE_37));
	defparam	b2v_inst38.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst39(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_28),
	.reg_out(SYNTHESIZED_WIRE_38));
	defparam	b2v_inst39.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst4(
	.pin_name1(clk),
	.reg_in(reg4_in),
	.reg_out(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst4.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst40(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_29),
	.reg_out(SYNTHESIZED_WIRE_39));
	defparam	b2v_inst40.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst41(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_30),
	.reg_out(SYNTHESIZED_WIRE_40));
	defparam	b2v_inst41.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst42(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_31),
	.reg_out(SYNTHESIZED_WIRE_41));
	defparam	b2v_inst42.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst43(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_32),
	.reg_out(SYNTHESIZED_WIRE_42));
	defparam	b2v_inst43.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst44(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_33),
	.reg_out(SYNTHESIZED_WIRE_43));
	defparam	b2v_inst44.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst45(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_34),
	.reg_out(SYNTHESIZED_WIRE_44));
	defparam	b2v_inst45.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst46(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_35),
	.reg_out(SYNTHESIZED_WIRE_45));
	defparam	b2v_inst46.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst47(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_36),
	.reg_out(SYNTHESIZED_WIRE_46));
	defparam	b2v_inst47.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst48(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_37),
	.reg_out(SYNTHESIZED_WIRE_47));
	defparam	b2v_inst48.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst49(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_38),
	.reg_out(SYNTHESIZED_WIRE_48));
	defparam	b2v_inst49.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst5(
	.pin_name1(clk),
	.reg_in(reg5_in),
	.reg_out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst5.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst50(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_39),
	.reg_out(SYNTHESIZED_WIRE_49));
	defparam	b2v_inst50.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst51(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_40),
	.reg_out(SYNTHESIZED_WIRE_50));
	defparam	b2v_inst51.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst52(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_41),
	.reg_out(SYNTHESIZED_WIRE_51));
	defparam	b2v_inst52.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst53(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_42),
	.reg_out(SYNTHESIZED_WIRE_52));
	defparam	b2v_inst53.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst54(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_43),
	.reg_out(SYNTHESIZED_WIRE_53));
	defparam	b2v_inst54.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst55(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_44),
	.reg_out(SYNTHESIZED_WIRE_54));
	defparam	b2v_inst55.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst56(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_45),
	.reg_out(SYNTHESIZED_WIRE_55));
	defparam	b2v_inst56.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst57(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_46),
	.reg_out(SYNTHESIZED_WIRE_56));
	defparam	b2v_inst57.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst58(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_47),
	.reg_out(SYNTHESIZED_WIRE_57));
	defparam	b2v_inst58.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst59(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_48),
	.reg_out(SYNTHESIZED_WIRE_58));
	defparam	b2v_inst59.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst6(
	.pin_name1(clk),
	.reg_in(reg6_in),
	.reg_out(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst6.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst60(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_49),
	.reg_out(SYNTHESIZED_WIRE_59));
	defparam	b2v_inst60.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst61(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_50),
	.reg_out(SYNTHESIZED_WIRE_60));
	defparam	b2v_inst61.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst62(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_51),
	.reg_out(SYNTHESIZED_WIRE_61));
	defparam	b2v_inst62.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst63(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_52),
	.reg_out(SYNTHESIZED_WIRE_62));
	defparam	b2v_inst63.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst64(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_53),
	.reg_out(SYNTHESIZED_WIRE_63));
	defparam	b2v_inst64.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst65(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_54),
	.reg_out(SYNTHESIZED_WIRE_64));
	defparam	b2v_inst65.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst66(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_55),
	.reg_out(SYNTHESIZED_WIRE_65));
	defparam	b2v_inst66.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst67(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_56),
	.reg_out(SYNTHESIZED_WIRE_66));
	defparam	b2v_inst67.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst68(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_57),
	.reg_out(SYNTHESIZED_WIRE_67));
	defparam	b2v_inst68.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst69(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_58),
	.reg_out(SYNTHESIZED_WIRE_68));
	defparam	b2v_inst69.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst7(
	.pin_name1(clk),
	.reg_in(reg7_in),
	.reg_out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst7.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst70(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_59),
	.reg_out(SYNTHESIZED_WIRE_69));
	defparam	b2v_inst70.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst71(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_60),
	.reg_out(SYNTHESIZED_WIRE_70));
	defparam	b2v_inst71.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst72(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_61),
	.reg_out(SYNTHESIZED_WIRE_71));
	defparam	b2v_inst72.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst73(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_62),
	.reg_out(SYNTHESIZED_WIRE_72));
	defparam	b2v_inst73.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst74(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_63),
	.reg_out(SYNTHESIZED_WIRE_73));
	defparam	b2v_inst74.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst75(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_64),
	.reg_out(SYNTHESIZED_WIRE_74));
	defparam	b2v_inst75.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst76(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_65),
	.reg_out(SYNTHESIZED_WIRE_75));
	defparam	b2v_inst76.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst77(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_66),
	.reg_out(SYNTHESIZED_WIRE_76));
	defparam	b2v_inst77.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst78(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_67),
	.reg_out(SYNTHESIZED_WIRE_77));
	defparam	b2v_inst78.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst79(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_68),
	.reg_out(SYNTHESIZED_WIRE_78));
	defparam	b2v_inst79.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst8(
	.pin_name1(clk),
	.reg_in(reg8_in),
	.reg_out(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst8.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst80(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_69),
	.reg_out(SYNTHESIZED_WIRE_79));
	defparam	b2v_inst80.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst81(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_70),
	.reg_out(reg1_out));
	defparam	b2v_inst81.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst82(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_71),
	.reg_out(reg2_out));
	defparam	b2v_inst82.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst83(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_72),
	.reg_out(reg3_out));
	defparam	b2v_inst83.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst84(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_73),
	.reg_out(reg4_out));
	defparam	b2v_inst84.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst85(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_74),
	.reg_out(reg5_out));
	defparam	b2v_inst85.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst86(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_75),
	.reg_out(reg6_out));
	defparam	b2v_inst86.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst87(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_76),
	.reg_out(reg7_out));
	defparam	b2v_inst87.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst88(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_77),
	.reg_out(reg8_out));
	defparam	b2v_inst88.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst89(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_78),
	.reg_out(reg9_out));
	defparam	b2v_inst89.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst9(
	.pin_name1(clk),
	.reg_in(reg9_in),
	.reg_out(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst9.DATA_WIDTH = DATA_WIDTH;


reg_delay_9L	b2v_inst90(
	.pin_name1(clk),
	.reg_in(SYNTHESIZED_WIRE_79),
	.reg_out(reg10_out));
	defparam	b2v_inst90.DATA_WIDTH = DATA_WIDTH;


endmodule
