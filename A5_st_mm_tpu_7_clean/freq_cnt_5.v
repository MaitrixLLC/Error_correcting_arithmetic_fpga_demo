
// this is a 5 Mhz center frequency counter that is driven by a 50 Mhz reference clock

module freq_cnt_5(


	test_clk,
	s_clk,

	arst,			// this also acts as trigger
	
	freq_cnt,
	ready



);


input test_clk;		// clock to be measured
input s_clk;			// clock is reference
input arst;

output [15:0] freq_cnt;
output ready;


reg [15:0] div_cnt_ff;
reg ena_ff;
reg done_ff;

reg [15:0] freq_cnt_ff;

assign ready = done_ff;
assign freq_cnt = freq_cnt_ff;


always @(posedge s_clk or posedge arst) begin


	if (arst == 1) begin
	
		ena_ff <= 1;			// let's try to enable with async reset !
		div_cnt_ff <= 0;
		done_ff <= 0;
		
	end

	else if(ena_ff) begin
	
		div_cnt_ff <= div_cnt_ff + 1;
		
		if(div_cnt_ff == 16'h2710) begin		// shut down at terminal count = 10000
		
			ena_ff <= 0;
			done_ff <= 1;
		
		end
	
	
	end
	

end



always @(posedge test_clk or posedge arst) begin


	if(arst == 1) begin
	
		freq_cnt_ff <= 0;
	
	end
	else if (ena_ff) begin			// count the number of test clocks in the ena_ff period
	
		freq_cnt_ff <= freq_cnt_ff + 1;
	
	end


end



endmodule
