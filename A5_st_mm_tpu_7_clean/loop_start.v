// loop starter for the MAC demo circuit

module loop_start(

	s_clk,
	reset_in,
	done,

	start,
	aclr


);


input s_clk;
input reset_in;			// from dev boad async reset input source
input done;				// input from the done output of the ma_control circuit

output start;			// output to start the circuit each time
output aclr;			// async clear input to ma_control circuit

reg [1:0]cntrl_cnt_ff;
reg aclr_ff;
reg start_ff;

assign start = start_ff;
assign aclr = aclr_ff;


always @(posedge s_clk or posedge reset_in) begin


	if(reset_in == 1) begin
	
		cntrl_cnt_ff <= 0;
		aclr_ff <= 0;
		start_ff <= 0;
	
	end
	else begin
	
		case(cntrl_cnt_ff)
			2'h0 : aclr_ff <= 1;
			2'h1 : aclr_ff <= 0;
			2'h2 : start_ff <= 1;
			2'h3 : start_ff <= 0;
		endcase

		if(done == 1) begin
		
			cntrl_cnt_ff <= 0;
		
		end
		else begin
		
			if(cntrl_cnt_ff < 3) begin
			
				cntrl_cnt_ff <= cntrl_cnt_ff + 1;
			
			end
		
		end
	
	
	end


end




endmodule


