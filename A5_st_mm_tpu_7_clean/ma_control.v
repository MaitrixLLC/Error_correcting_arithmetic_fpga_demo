// product accumulator with error correction demo circuit controller
//

module ma_control (

	s_clk,
	f_clk,
	start,
	num_prods,
	num_batches,
	aclr,					// async clear for critical elements of the controller
	

	data_lut_adr,
	trunc_ena,
	clear_ena,
	datavalid_in,
	
	data_in_rd_req,
	data_in_async_clr,
	
	data_out_rd_req,
	data_out_async_clr,
	
	fast_ena_out,
	
	done

);



input s_clk;				// slow clock input
input f_clk;				// fast clock input

input start;				// start pulse to start the product summation with respect to s_clk
input [9:0] num_prods;			// input to specify the number of products to sum
input [9:0] num_batches;		// input to specify the number of batches to process
input aclr;					// async input to clear all critical registers before start

output [9:0] data_lut_adr;		// LUT address control
output trunc_ena;					// accumulator truncation control
output clear_ena;					// accumulator clear control
output datavalid_in;				// forward converter datavalid in control signal

output data_in_rd_req;		// input data fifo output enable control signal (reads the input fifo's to the MAC unit)
output data_in_async_clr;	// clears the input fifo's

output data_out_rd_req;			// reads the output data from the output fifo's
output data_out_async_clr;		// clears the output data fifo

output done;					// done signal with reference to s_clk
output fast_ena_out;


reg [9:0] num_prods_ff;			//  num_prods MUST REMAIN STABLE IN THIS DESIGN
reg [9:0] num_batches_ff;		// num_batches MUST REMAIN STABLE IN THIS DESIGN
reg start_ff;

reg [9:0] data_lut_adr_ff;
reg datavalid_in_ff;

reg data_in_async_clr_ff;
reg data_out_rd_req_ff;
reg data_out_async_clr_ff;

reg done_ff;

reg [8:0] loop_cnt_ff;		// loop counter must support up to 512


assign data_lut_adr = data_lut_adr_ff;

assign datavalid_in = datavalid_in_ff;

assign data_in_async_clr = data_in_async_clr_ff;
assign data_out_rd_req = data_out_rd_req_ff;
assign data_out_async_clr = data_out_async_clr_ff;
assign done = done_ff;

reg [5:0] cntrl_cnt_ff;		// up top 64 states for the controller

reg start_sync_ff;

wire slow_restart;



always @(posedge s_clk or posedge aclr) begin


	if(aclr == 1) begin
	
		start_sync_ff <= 0;		// async clear of the critical start_sync control signal
		start_ff <= 0;
		done_ff <= 0;		// clear to ensure loop circuit will work
	
	end 
	else if (start == 1) begin
	
		start_ff <= 1;
		num_prods_ff <= num_prods-1;			// load one less for loop counter logic
		num_batches_ff <= num_batches;
		
		data_lut_adr_ff <= 0;
		datavalid_in_ff <= 0;
		
		data_in_async_clr_ff <= 1;
		data_out_rd_req_ff <= 0;
		data_out_async_clr_ff <= 1;
		
		cntrl_cnt_ff <= 0;
		start_sync_ff <= 0;
		
		done_ff <= 0;			// clear this out for looping
		
	end
	else if(slow_restart == 1) begin
	
		start_ff <= 1;
		cntrl_cnt_ff <= 7;		// shouldn't need this, but is shouldn't hurt
	
	end
	else begin
	
		if(start_ff == 1) begin
		
			
			case(cntrl_cnt_ff)
				6'h0 : begin				// first cnt we clear the async clear signals
				
						data_in_async_clr_ff <= 0;
						data_out_async_clr_ff <= 0;
						
						cntrl_cnt_ff <= 1;		// don't clear this in start section, since we need it saved for re-entry
				
					end
				6'h1 : begin
				
						cntrl_cnt_ff <= cntrl_cnt_ff + 1;	// burn off a extra clock for clear of accumulator
				
					end
				6'h2 : begin
						
						cntrl_cnt_ff <= cntrl_cnt_ff + 1;	// burn off a extra clock for clear of accumulator
				
					end
				6'h3 : begin
				
						data_lut_adr_ff <= 1;		// prime the lut address since it takes two clocks to get the LUT results
						
						cntrl_cnt_ff <= cntrl_cnt_ff + 1;	// burn off a extra clock for clear of accumulator
				
					end
				6'h4 : begin			// push all the lut datga in this step
				
						if(num_batches_ff) begin
						
							if(num_prods_ff) begin
							
								num_prods_ff <= num_prods_ff - 1;
							
							end
							else begin
							
								num_batches_ff <= num_batches_ff - 1;
								num_prods_ff <= num_prods - 1;			// load one less for loop counter logic
							
							end
							
							// main inner loop is actually here
							
							datavalid_in_ff <= 1;
							
							data_lut_adr_ff <= data_lut_adr_ff + 1;			// inc the LUT address each time through the loops
						
						end
						else begin		// done with the outer loop
						
							datavalid_in_ff <= 0;
							cntrl_cnt_ff <= cntrl_cnt_ff + 1;	// get to next case statement
							loop_cnt_ff <= 22;			// get ready for next case statement
						
						end
				
					end
					
				6'h5 : begin
				
						if(loop_cnt_ff) begin			// loop to push the remaining lut data through the forward converter and into the input fifo
						
							data_out_async_clr_ff <= 1;		// keep clearing the data out fifo
							
							loop_cnt_ff <= loop_cnt_ff - 1;
						
						end
						else begin
						
							start_sync_ff <= 1;						// kick off the fast clock control section
							data_out_async_clr_ff <= 0;				// STOP clearing the data out fifo
							cntrl_cnt_ff <= cntrl_cnt_ff + 1;	// get to next case statement
						
						end
					
				
					end
					
				6'h6 : begin
				
						cntrl_cnt_ff <= cntrl_cnt_ff + 1;	// get to next case statement once the fast section is done
						start_sync_ff <= 0;		// reset the start sync signal for next time around
						start_ff <= 0;				// stop this section of the slow controller
				
					end
					
				6'h7 : begin			// beginning of the second phase of the slow clock controller
					
						loop_cnt_ff <= 0;		// load the loop counter in this step
						cntrl_cnt_ff <= cntrl_cnt_ff + 1;
						
					
					end
					
				6'h8 : begin	
			
						if(loop_cnt_ff < (255+num_batches)) begin
						
							loop_cnt_ff <= loop_cnt_ff + 1;
							
							if(loop_cnt_ff == 8) begin
							
								data_out_rd_req_ff <= 1;
							
							end
							else if(loop_cnt_ff == (8+num_batches))  begin
							
								data_out_rd_req_ff <= 0;
							
							end
						
						end
						else begin
						
							done_ff <= 1;
							start_ff <= 0;
						
						end
		
					end	
					
					
				default : begin
				
				
					end
			endcase		// end of case statement
		
		
		end		//  end of if(start_ff == 1) begin statement
	
	
	end		// end of else of first if statement


end		// end of slow clock always statement


// -----------------------------------  FAST CLOCK CONTROLLER SECTION -----------------------------------------------


reg fast_ena_ff;
reg [3:0] fast_cntrl_cnt_ff;

reg trunc_ena_ff;
reg clear_ena_ff;
reg data_in_rd_req_ff;

assign trunc_ena = trunc_ena_ff;
assign clear_ena = clear_ena_ff;
assign data_in_rd_req = data_in_rd_req_ff;
assign fast_ena_out = fast_ena_ff;				// used to monitor fast timing

reg [6:0] fast_num_prods_ff;			//  num_prods MUST REMAIN STABLE IN THIS DESIGN  (128 max)
reg [6:0] fast_num_batches_ff;		// num_batches MUST REMAIN STABLE IN THIS DESIGN

reg [7:0] cycle_ff;			// 256 max batch size

reg [4:0] fast_loop_cnt_ff;

reg fast_done_ff;


// first, the clock sync circuits ....

wire fast_start;
assign fast_start = start_sync_ff;

wire fast_ena;
wire fast_done;

assign fast_done = fast_done_ff;

twoclksync s2f_sync1 (.a_clk(s_clk), .b_clk(f_clk), .glb_arst(aclr), .a_trig(fast_start), .b_ena_out(fast_ena));

twoclksync f2s_sync1 (.a_clk(f_clk), .b_clk(s_clk), .glb_arst(aclr), .a_trig(fast_done), .b_ena_out(slow_restart));

//wire fast_aclr;
//assign fast_aclr = (aclr | done_ff);		// modify aclr for fast circuit for looping to satisfy simulation (clearing of prod_sum unit)


// ---------- next, the registers tied to the fast clock  -------------------


always @(posedge f_clk or posedge aclr) begin

	if(aclr == 1) begin
	
		fast_ena_ff <= 0;
		fast_done_ff <= 0;
		
		fast_loop_cnt_ff <= 4;
	
	end
	else if(fast_ena) begin
	
		fast_ena_ff <= 1;				// enable the fast section controller
		fast_cntrl_cnt_ff <= 0;  	// clear the fast controller counter
		
		data_in_rd_req_ff <= 0;
		trunc_ena_ff <= 0;
		clear_ena_ff <= 0;
		
		fast_num_prods_ff <= num_prods;		// cycle counter one plus number of products, minus one for loop counter logic
		fast_num_batches_ff <= num_batches;
		cycle_ff <= 0;
		
		fast_done_ff <= 0;
		
	
	end
	else begin
	
		if(fast_ena_ff) begin
		
			case(fast_cntrl_cnt_ff)
				5'h0 : begin
				
					data_in_rd_req_ff <= 1;
					fast_cntrl_cnt_ff <= fast_cntrl_cnt_ff + 1;
				
					end
				5'h1 : begin
				
						if(fast_num_batches_ff) begin
							
							if(fast_num_prods_ff) begin

								
								fast_num_prods_ff <= fast_num_prods_ff - 1;
								cycle_ff <= cycle_ff + 1;
								
							end
							else begin
								
								fast_num_batches_ff <= fast_num_batches_ff - 1;
								fast_num_prods_ff <= num_prods+1-1;					// one less for loop counter logic
								cycle_ff <= 0;
								
							end			// end of if(fast_num_prods_ff) begin
								// main inner loop is here						
								
							if(cycle_ff < num_prods) begin
								
								data_in_rd_req_ff <= 1;
								
							end
							else begin
								
								data_in_rd_req_ff <= 0;
								
							end
					
							case(cycle_ff)
								8'h0 : clear_ena_ff <= 0;
								8'h2 : trunc_ena_ff <= 1;
								(num_prods-3) : trunc_ena_ff <= 0;
								(num_prods-1) : begin
								
									clear_ena_ff <= 1;
									trunc_ena_ff <= 0;
									
									end
								(num_prods) : begin
								
									clear_ena_ff <= 0;
									
									end
									
								default: begin
								
									end
								
							endcase	
						end				// end of if(fast_num_batches_ff) begin
						else begin
						
							fast_cntrl_cnt_ff <= fast_cntrl_cnt_ff + 1;
							fast_loop_cnt_ff <= 5;
						
						end
				
					end
				5'h2 : begin
				
						if(fast_loop_cnt_ff) begin
						
							fast_loop_cnt_ff <= fast_loop_cnt_ff - 1;
						
						end
						else begin
						
							fast_cntrl_cnt_ff <= fast_cntrl_cnt_ff + 1;		// go to next case step
							fast_done_ff <= 1;										// send clock sync pulse to the slow controller section
							
						
						end
				
					end
					
				5'h3 : begin	

						fast_done_ff <= 0;
						fast_ena_ff <= 0;		// disable the fast controller section
				
					end
					
				default: begin
			
					end
			
			endcase
		
		
		end
		else begin
		
			if(fast_loop_cnt_ff) begin
		
				trunc_ena_ff <= 1;		// clear the MAC at the beginning of operation
				clear_ena_ff <= 1;
				fast_loop_cnt_ff <= fast_loop_cnt_ff - 1;
			end
			else begin
				trunc_ena_ff <= 0;		// just keep clearing the MAC until they are needed
				clear_ena_ff <= 0;
			
			end
		
		end
	
	
	end
	

end		// end of the fast controller always statement


endmodule
