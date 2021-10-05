	q_sys u0 (
		.clk_clk                                      (<connected-to-clk_clk>),                                      //                                   clk.clk
		.in_fifo_used_external_connection_export      (<connected-to-in_fifo_used_external_connection_export>),      //      in_fifo_used_external_connection.export
		.in_port_data_external_connection_export      (<connected-to-in_port_data_external_connection_export>),      //      in_port_data_external_connection.export
		.in_port_dig_error_external_connection_export (<connected-to-in_port_dig_error_external_connection_export>), // in_port_dig_error_external_connection.export
		.in_port_ec_flags_external_connection_export  (<connected-to-in_port_ec_flags_external_connection_export>),  //  in_port_ec_flags_external_connection.export
		.out_port_batnum_external_connection_export   (<connected-to-out_port_batnum_external_connection_export>),   //   out_port_batnum_external_connection.export
		.out_port_ctrl_external_connection_export     (<connected-to-out_port_ctrl_external_connection_export>),     //     out_port_ctrl_external_connection.export
		.out_port_lut_adr_external_connection_export  (<connected-to-out_port_lut_adr_external_connection_export>),  //  out_port_lut_adr_external_connection.export
		.out_port_lut_data_external_connection_export (<connected-to-out_port_lut_data_external_connection_export>), // out_port_lut_data_external_connection.export
		.out_port_prodnum_external_connection_export  (<connected-to-out_port_prodnum_external_connection_export>),  //  out_port_prodnum_external_connection.export
		.reset_reset_n                                (<connected-to-reset_reset_n>),                                //                                 reset.reset_n
		.uart_0_external_connection_rxd               (<connected-to-uart_0_external_connection_rxd>),               //            uart_0_external_connection.rxd
		.uart_0_external_connection_txd               (<connected-to-uart_0_external_connection_txd>),               //                                      .txd
		.in_port_freq_cnt_external_connection_export  (<connected-to-in_port_freq_cnt_external_connection_export>)   //  in_port_freq_cnt_external_connection.export
	);

