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
// CREATED		"Sun Oct 13 21:33:16 2019"

module fifo_2c_x10_nosig(
	wr_clk,
	rd_clk,
	wr_req,
	rd_req,
	async_clr,
	dig0_in_,
	dig1_in_,
	dig2_in_,
	dig3_in_,
	dig4_in_,
	dig5_in_,
	dig6_in_,
	dig7_in_,
	dig8_in_,
	dig9_in_,
	dig0_out_,
	dig1_out_,
	dig2_out_,
	dig3_out_,
	dig4_out_,
	dig5_out_,
	dig6_out_,
	dig7_out_,
	dig8_out_,
	dig9_out_,
	rd_empty_,
	wr_full_
);


input wire	wr_clk;
input wire	rd_clk;
input wire	wr_req;
input wire	rd_req;
input wire	async_clr;
input wire	[17:0] dig0_in_;
input wire	[17:0] dig1_in_;
input wire	[17:0] dig2_in_;
input wire	[17:0] dig3_in_;
input wire	[17:0] dig4_in_;
input wire	[17:0] dig5_in_;
input wire	[17:0] dig6_in_;
input wire	[17:0] dig7_in_;
input wire	[17:0] dig8_in_;
input wire	[17:0] dig9_in_;
output wire	[17:0] dig0_out_;
output wire	[17:0] dig1_out_;
output wire	[17:0] dig2_out_;
output wire	[17:0] dig3_out_;
output wire	[17:0] dig4_out_;
output wire	[17:0] dig5_out_;
output wire	[17:0] dig6_out_;
output wire	[17:0] dig7_out_;
output wire	[17:0] dig8_out_;
output wire	[17:0] dig9_out_;
output wire	[9:0] rd_empty_;
output wire	[9:0] wr_full_;

wire	[9:0] rd_empty_ALTERA_SYNTHESIZED;
wire	[9:0] wr_full_ALTERA_SYNTHESIZED;





fifo_2c	b2v_inst10(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig9_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[9]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[9]),
	.q(dig9_out_));


fifo_2c	b2v_inst11(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig0_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[0]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[0]),
	.q(dig0_out_));


fifo_2c	b2v_inst2(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig1_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[1]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[1]),
	.q(dig1_out_));


fifo_2c	b2v_inst3(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig2_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[2]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[2]),
	.q(dig2_out_));


fifo_2c	b2v_inst4(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig3_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[3]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[3]),
	.q(dig3_out_));


fifo_2c	b2v_inst5(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig4_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[4]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[4]),
	.q(dig4_out_));


fifo_2c	b2v_inst6(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig5_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[5]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[5]),
	.q(dig5_out_));


fifo_2c	b2v_inst7(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig6_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[6]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[6]),
	.q(dig6_out_));


fifo_2c	b2v_inst8(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig7_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[7]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[7]),
	.q(dig7_out_));


fifo_2c	b2v_inst9(
	.wrreq(wr_req),
	.wrclk(wr_clk),
	.rdreq(rd_req),
	.rdclk(rd_clk),
	.aclr(async_clr),
	.data(dig8_in_),
	.wrfull(wr_full_ALTERA_SYNTHESIZED[8]),
	.rdempty(rd_empty_ALTERA_SYNTHESIZED[8]),
	.q(dig8_out_));

assign	rd_empty_ = rd_empty_ALTERA_SYNTHESIZED;
assign	wr_full_ = wr_full_ALTERA_SYNTHESIZED;

endmodule
