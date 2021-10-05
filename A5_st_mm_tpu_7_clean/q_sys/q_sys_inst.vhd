	component q_sys is
		port (
			clk_clk                                      : in  std_logic                     := 'X';             -- clk
			in_fifo_used_external_connection_export      : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			in_port_data_external_connection_export      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			in_port_dig_error_external_connection_export : in  std_logic_vector(19 downto 0) := (others => 'X'); -- export
			in_port_ec_flags_external_connection_export  : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			out_port_batnum_external_connection_export   : out std_logic_vector(9 downto 0);                     -- export
			out_port_ctrl_external_connection_export     : out std_logic_vector(7 downto 0);                     -- export
			out_port_lut_adr_external_connection_export  : out std_logic_vector(10 downto 0);                    -- export
			out_port_lut_data_external_connection_export : out std_logic_vector(31 downto 0);                    -- export
			out_port_prodnum_external_connection_export  : out std_logic_vector(9 downto 0);                     -- export
			reset_reset_n                                : in  std_logic                     := 'X';             -- reset_n
			uart_0_external_connection_rxd               : in  std_logic                     := 'X';             -- rxd
			uart_0_external_connection_txd               : out std_logic;                                        -- txd
			in_port_freq_cnt_external_connection_export  : in  std_logic_vector(15 downto 0) := (others => 'X')  -- export
		);
	end component q_sys;

	u0 : component q_sys
		port map (
			clk_clk                                      => CONNECTED_TO_clk_clk,                                      --                                   clk.clk
			in_fifo_used_external_connection_export      => CONNECTED_TO_in_fifo_used_external_connection_export,      --      in_fifo_used_external_connection.export
			in_port_data_external_connection_export      => CONNECTED_TO_in_port_data_external_connection_export,      --      in_port_data_external_connection.export
			in_port_dig_error_external_connection_export => CONNECTED_TO_in_port_dig_error_external_connection_export, -- in_port_dig_error_external_connection.export
			in_port_ec_flags_external_connection_export  => CONNECTED_TO_in_port_ec_flags_external_connection_export,  --  in_port_ec_flags_external_connection.export
			out_port_batnum_external_connection_export   => CONNECTED_TO_out_port_batnum_external_connection_export,   --   out_port_batnum_external_connection.export
			out_port_ctrl_external_connection_export     => CONNECTED_TO_out_port_ctrl_external_connection_export,     --     out_port_ctrl_external_connection.export
			out_port_lut_adr_external_connection_export  => CONNECTED_TO_out_port_lut_adr_external_connection_export,  --  out_port_lut_adr_external_connection.export
			out_port_lut_data_external_connection_export => CONNECTED_TO_out_port_lut_data_external_connection_export, -- out_port_lut_data_external_connection.export
			out_port_prodnum_external_connection_export  => CONNECTED_TO_out_port_prodnum_external_connection_export,  --  out_port_prodnum_external_connection.export
			reset_reset_n                                => CONNECTED_TO_reset_reset_n,                                --                                 reset.reset_n
			uart_0_external_connection_rxd               => CONNECTED_TO_uart_0_external_connection_rxd,               --            uart_0_external_connection.rxd
			uart_0_external_connection_txd               => CONNECTED_TO_uart_0_external_connection_txd,               --                                      .txd
			in_port_freq_cnt_external_connection_export  => CONNECTED_TO_in_port_freq_cnt_external_connection_export   --  in_port_freq_cnt_external_connection.export
		);

