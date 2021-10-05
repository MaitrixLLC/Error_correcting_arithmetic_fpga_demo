`timescale 1 ns/ 1 ns 

module tb_ec_prod_sum_test6();

parameter NUM_PRODS=16;
parameter NUM_BATCHES = 3;
parameter NUM_DIGITS=10;

int modulus[NUM_DIGITS] = {65536, 78125, 117649, 177147, 262027, 262049, 262051, 262069, 262079, 262103};


int j, k, chks, cycle;
longint i;
longint prod_sum;

//logic [9:0] data_in_wr_req;
logic data_in_rd_req;

//logic [9:0] data_out_wr_req;
logic data_out_rd_req;

logic s_clk;
logic f_clk;

logic trunc;
logic clear;
logic datavalid_in;
logic data_in_async_clr;
logic data_out_async_clr;

logic [9:0] data_lut_adr;
	
//logic binvalA_sign;
//logic [15:0] binvalA_1_;
//logic [15:0] binvalA_2_;
//logic [15:0] binvalA_3_;
//logic [15:0] binvalA_4_;
	
//logic binvalB_sign;
//logic [15:0] binvalB_1_;
//logic [15:0] binvalB_2_;
//logic [15:0] binvalB_3_;
//logic [15:0] binvalB_4_;
	
wire sign_out;
wire [15:0] bin_out_1_;
wire [15:0] bin_out_2_;
wire [15:0] bin_out_3_;
wire [15:0] bin_out_4_;

wire [9:0] data_A_rd_full_;
wire [9:0] data_A_wr_full_;
wire [9:0] data_B_rd_full_;
wire [9:0] data_B_wr_full_;
wire [9:0] result_rd_full_;
wire [9:0] result_wr_full_;

wire [8:0] data_A_rd_used;
wire [8:0] data_A_wr_used;
wire [8:0] data_B_rd_used;
wire [8:0] data_B_wr_used;
wire [8:0] result_rd_used;
wire [8:0] result_wr_used;



/*

module ec_prod_sum_test4(
	datavalid_in,
	trunc_ena,
	clear_ena,
	data_in_rd_req,
	s_clk,
	data_out_rd_req,
	f_clk,
	data_out_async_clr,
	data_in_async_clr,
	data_lut_adr,
	sign_out,
	bin_out_1_,
	bin_out_2_,
	bin_out_3_,
	bin_out_4_,
	data_A_rd_used,
	data_A_wr_used,
	data_B_rd_used,
	data_B_wr_used,
	result_rd_used,
	result_wr_used
);


*/

ec_prod_sum_test6 dut1 (

	.s_clk(s_clk),
	.f_clk(f_clk),
	.trunc_ena(trunc),
	.clear_ena(clear),
	.datavalid_in(datavalid_in),
	.data_in_rd_req(data_in_rd_req),
	.data_out_rd_req(data_out_rd_req),
	.data_in_async_clr(data_in_async_clr),
	.data_out_async_clr(data_out_async_clr),
	
	.data_lut_adr(data_lut_adr),
	
	.sign_out(sign_out),
	.bin_out_1_(bin_out_1_),
	.bin_out_2_(bin_out_2_),
	.bin_out_3_(bin_out_3_),
	.bin_out_4_(bin_out_4_),
	
	.data_A_rd_used(data_A_rd_used),
	.data_A_wr_used(data_A_wr_used),
	.data_B_rd_used(data_B_rd_used),
	.data_B_wr_used(data_B_wr_used),
	.result_rd_used(result_rd_used),
	.result_wr_used(result_wr_used)
	
);


 // clock generator
always begin
    #10;
    s_clk = 1'b1;
    #10
    s_clk = 1'b0;
end


always begin
    #7;
    f_clk = 1'b1;
    #7
    f_clk = 1'b0;
end


// main testbench
initial
begin


	 
	 for(k=0; k<2; k++) begin
		$write("product sum #%d in hexadecimal ", k);
	 
		 for (i=0; i<NUM_DIGITS; i++) begin

			  prod_sum = 0;
			  
			  for(j=0; j<NUM_PRODS; j++) begin
			  
				  if(k == 0) begin
			
//						prod_sum += (mod_opA_1[j][i] * mod_opB_1[j][i]);	

				  end
				  else if(k == 1) begin
				  
//						prod_sum += (mod_opA_2[j][i] * mod_opB_2[j][i]);	
				  
				  end
				  
				  prod_sum = prod_sum % modulus[i];	
			  
			  end

			  $write("%5x ", prod_sum);

		 end
		 
		 $display("\n");
	 
	 end

	 $display("\n");

	 $display("\n");


	 
	 

    @(posedge s_clk) 
	 
	 #2
	 
	 i = 0;
	 cycle = 0;
	 trunc = 1;
	 clear = 1;
	 datavalid_in = 0;	
	 data_in_async_clr = 0; 
	 data_out_async_clr = 0;
	 
	 data_in_rd_req = 0;
	 data_out_rd_req = 0;
	
	 data_lut_adr = 0;			// last address should ahve a zero stored for clearing the pipeline
	 
	 @(posedge s_clk); 
	 
	 @(posedge s_clk);

	#2
	data_in_async_clr = 1;
	data_out_async_clr = 1;
	datavalid_in = 0;
	data_in_rd_req = 0;
	
	trunc = 0;
	clear = 0;

	data_lut_adr = 0;	// prime the lut's address input

   @(posedge s_clk); 	// first clock latches the lut address


	#2
	data_in_async_clr = 0;
	data_out_async_clr = 0;
	data_lut_adr = 1;		

 
	@(posedge s_clk);	// second clock latches the lut data out
	
    
	 
	 for(k=0; k<NUM_BATCHES; k++) begin				// Read data from LUT and push to the forward converters
		 for(i=0; i<NUM_PRODS; i++)  begin			// 8 clocks, 44 total clocks to exit
		 
		 #2
		 
			trunc = 0;
			clear = 0;
			data_in_rd_req = 0;
		 
			datavalid_in = 1;
			
			data_lut_adr += 1;


		 @(posedge s_clk);	 
		 
		 end
	 end
	 

	#2
	datavalid_in = 0;

	@(posedge s_clk);
	 

// push remaining input data thru forward converter to fifo's using slow clock

	for(i=0; i<22; i++) begin

	#2
	datavalid_in = 0;

	data_out_async_clr = 1;
		
	@(posedge s_clk);
	end

	 
// ---------- fast clock section --------------------------


// read data from data input fifo's

	#2
	data_in_rd_req = 1;
	data_in_async_clr = 0;
	data_out_async_clr = 0;

	@(posedge f_clk);	 // start off with a single f_clk sync

	
	for(i=0; i<(NUM_PRODS+1)*NUM_BATCHES; i++) begin		// outer loop of clocking
	
	   
		#2	 
		
		if(cycle < NUM_PRODS) begin
			data_in_rd_req = 1;		// assert the data valid in, read from FIFO
		end 
		else begin
			data_in_rd_req = 0;
		end
		

			if (cycle == 0) begin
				  clear = 0;

			 end
			 else if(cycle == 2) begin
				trunc = 1;
			 end

			 if (cycle == (NUM_PRODS-3)) begin
				  trunc = 0;
			 end
			 else if (cycle == (NUM_PRODS-1)) begin
				  clear = 1;
				  trunc = 0;
			 end 
			 else if (cycle == NUM_PRODS) begin
				  clear = 0;
			 end 

			 @(posedge f_clk); 
			 
	// --------------------------------------------
		
			if(cycle == NUM_PRODS) begin
				 cycle = 0;
			end
			else begin
				cycle += 1;
			end
		

	end		// end of outer loop
	
	
// fast clock push to result fifo's
	
	
	
// ----------------- slow clock read out of result fifo's



	@(posedge s_clk); 		// sync first slow clock after fast clock
	
	#2
	
	@(posedge s_clk); 		// knock out three clocks delay for FIFO read out counter
	@(posedge s_clk); 		
	@(posedge s_clk); 
//
	
	for(i=0; i<((167+86)+NUM_BATCHES); i++) begin	// outer loop of clocking
	
	#2
	if(i == 8) begin		// set the read out request signal to empty the result FIFO  (COULD BE ADJUSTED TO BE LONGER FOR SAFETY)
		data_out_rd_req = 1;
	end
	else if(i == (8+NUM_BATCHES)) begin
		data_out_rd_req = 0;
	end


	@(posedge s_clk); 

	
	end

 

	 
    $display("End of test bench!\n");
    
    $stop;
	 
end

endmodule