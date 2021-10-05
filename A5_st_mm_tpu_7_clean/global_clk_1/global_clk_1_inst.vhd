	component global_clk_1 is
		port (
			inclk  : in  std_logic := 'X'; -- inclk
			outclk : out std_logic         -- outclk
		);
	end component global_clk_1;

	u0 : component global_clk_1
		port map (
			inclk  => CONNECTED_TO_inclk,  --  altclkctrl_input.inclk
			outclk => CONNECTED_TO_outclk  -- altclkctrl_output.outclk
		);

