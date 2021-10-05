
module q_sys (
	clk_clk,
	in_fifo_used_external_connection_export,
	in_port_data_external_connection_export,
	in_port_dig_error_external_connection_export,
	in_port_ec_flags_external_connection_export,
	out_port_batnum_external_connection_export,
	out_port_ctrl_external_connection_export,
	out_port_lut_adr_external_connection_export,
	out_port_lut_data_external_connection_export,
	out_port_prodnum_external_connection_export,
	reset_reset_n,
	uart_0_external_connection_rxd,
	uart_0_external_connection_txd,
	in_port_freq_cnt_external_connection_export);	

	input		clk_clk;
	input	[9:0]	in_fifo_used_external_connection_export;
	input	[31:0]	in_port_data_external_connection_export;
	input	[19:0]	in_port_dig_error_external_connection_export;
	input	[2:0]	in_port_ec_flags_external_connection_export;
	output	[9:0]	out_port_batnum_external_connection_export;
	output	[7:0]	out_port_ctrl_external_connection_export;
	output	[10:0]	out_port_lut_adr_external_connection_export;
	output	[31:0]	out_port_lut_data_external_connection_export;
	output	[9:0]	out_port_prodnum_external_connection_export;
	input		reset_reset_n;
	input		uart_0_external_connection_rxd;
	output		uart_0_external_connection_txd;
	input	[15:0]	in_port_freq_cnt_external_connection_export;
endmodule
