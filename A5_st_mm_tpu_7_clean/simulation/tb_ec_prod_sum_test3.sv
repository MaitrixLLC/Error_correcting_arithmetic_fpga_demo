`timescale 1 ns/ 1 ns 

module tb_ec_prod_sum_test3();

parameter NUM_PRODS=8;
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
	
logic binvalA_sign;
logic [15:0] binvalA_1_;
logic [15:0] binvalA_2_;
logic [15:0] binvalA_3_;
logic [15:0] binvalA_4_;
	
logic binvalB_sign;
logic [15:0] binvalB_1_;
logic [15:0] binvalB_2_;
logic [15:0] binvalB_3_;
logic [15:0] binvalB_4_;
	
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

module ec_prod_sum_test3(
	datavalid_in,
	binvalA_sign,
	binvalB_sign,
	trunc_ena,
	clear_ena,
	data_in_rd_req,
	s_clk,
	data_out_rd_req,
	f_clk,
	data_out_async_clr,
	data_in_async_clr,
	binvalA_1_,
	binvalA_2_,
	binvalA_3_,
	binvalA_4_,
	binvalB_1_,
	binvalB_2_,
	binvalB_3_,
	binvalB_4_,
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

ec_prod_sum_test3 dut1 (

	.s_clk(s_clk),
	.f_clk(f_clk),
	.trunc_ena(trunc),
	.clear_ena(clear),
	.datavalid_in(datavalid_in),
	.data_in_rd_req(data_in_rd_req),
	.data_out_rd_req(data_out_rd_req),
	.data_in_async_clr(data_in_async_clr),
	.data_out_async_clr(data_out_async_clr),
	
	.binvalA_sign(binvalA_sign),
	.binvalA_1_(binvalA_1_),
	.binvalA_2_(binvalA_2_),
	.binvalA_3_(binvalA_3_),
	.binvalA_4_(binvalA_4_),
	
	.binvalB_sign(binvalB_sign),	
	.binvalB_1_(binvalB_1_),
	.binvalB_2_(binvalB_2_),
	.binvalB_3_(binvalB_3_),
	.binvalB_4_(binvalB_4_),
	
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

// vector contains digit values for each value that will be multiplied and summed
int mod_opA_1[NUM_PRODS][NUM_DIGITS] = {
{ 'h2a00, 'h7dda, 'h2515, 'h19f29, 'hd57a, 'h3d2a3, 'h75cc, 'h23099, 'h160a2, 'h109ec },    		// 12.3456789 
{ 'h729a, 'h8864, 'h540, 'h1c519, 'h3dc3f, 'h3fa6, 'h102be, 'h3dee1, 'h3ae90, 'hd3fb },    		// -1.27809987
{ 'hd800, 'h1252a, 'h1a335, 'h11107, 'h39b42, 'h30543, 'h12721, 'h5c63, 'h30c9e, 'hc1a1 },    	// 56.78099
{ 'h1, 'h1, 'h530a, 'h15af7, 'h12819, 'h2c639, 'hbd63, 'h26afe, 'h3ca0, 'h3ca71 },    				// -10
{ 'h8000, 'h83d6, 'h18b8d, 'h1f00c, 'h293db, 'h370d2, 'hfae0, 'h2dd74, 'h29c53, 'h14a84 },    	// 98.012
{ 'he800, 'hbe, 'h17ba1, 'h21853, 'h75e1, 'h34f71, 'h27ab6, 'h30041, 'h2d95d, 'he467 },    		// 8.099762
{ 'he38a, 'h879e, 'h18ec9, 'h1eb1c, 'h1fa8f, 'h1d1a9, 'h3fc6d, 'h38030, 'h25875, 'h61b4 },    	// 9.777777777
{ 'h3800, 'h1011, 'h1184a, 'h13044, 'hdcd7, 'h19350, 'h146aa, 'h29321, 'h1120d, 'h17284 }    	// -12.9099876
};

int mod_opB_1[NUM_PRODS][NUM_DIGITS] = {
{ 'h4400, 'hfb2c, 'hb15c, 'hde18, 'h10854, 'h3f776, 'h32511, 'h3c272, 'h3aafc, 'h1e16e },    	// 34.908765
{ 'h6bbd, 'h1236b, 'h1af6e, 'h25841, 'h36504, 'h20b75, 'hd4e5, 'h1e8f4, 'h3d7c0, 'h148fd },    	// 2.034590987
{ 'h9400, 'h1fd4, 'h18093, 'hcd0f, 'h2b7ed, 'h23eb3, 'h2eeb7, 'h12679, 'ha01a, 'h106c4 },    	// 65.9076554
{ 'h6300, 'h11a2c, 'ha1d4, 'hdb90, 'h26d08, 'h18a9f, 'h347a9, 'h2f0ff, 'h3a64b, 'h9289 },    	// 23.90876655
{ 'h5800, 'h49ea, 'h121ca, 'h26c88, 'h19cc7, 'h12bd5, 'h296e3, 'h363b2, 'h2869c, 'h3b990 },    	// 78.0944556
{ 'h5200, 'hf3b, 'hedad, 'h24087, 'h18e0c, 'h1e22d, 'hd15d, 'h32f54, 'h1ce01, 'hce56 },    		// -92.0977623
{ 'h2700, 'hfe11, 'h147ca, 'h57b1, 'h36300, 'h3d335, 'h3b02, 'h3df48, 'h1e68f, 'h2c778 },    	// 12.73455555
{ 'hd466, 'h35c6, 'he30, 'h16bd1, 'h3e807, 'h2dafe, 'h9575, 'h2b51, 'hdb43, 'h1ca70 }    			// 90.98877222
};


int fix_opA_1[NUM_PRODS][5] = {

{ 0, 'h0, 'hc, 'h587e, 'h6992 },    // 12.3456789
{ 1, 'h0, 'h1, 'h4731, 'h8d97 },    // -1.27809987
{ 0, 'h0, 'h38, 'hc7ee, 'hf5ed },    // 56.78099
{ 1, 'h0, 'h9, 'hffff, 'hffff },    // -10
{ 0, 'h0, 'h62, 'h312, 'h6e98 },    // 98.012
{ 0, 'h0, 'h8, 'h198a, 'h9f },    // 8.099762
{ 0, 'h0, 'h9, 'hc71c, 'h71c4 },    // 9.777777777
{ 1, 'h0, 'hc, 'he8f4, 'hf286 }    // -12.9099876
};

int fix_opB_1[NUM_PRODS][5] = {

{ 0, 'h0, 'h22, 'he8a4, 'hd2b3 },    // 34.908765
{ 0, 'h0, 'h2, 'h8da, 'hf476 },    	// 2.034590987
{ 0, 'h0, 'h41, 'he85c, 'h1ab3 },    // 65.9076554
{ 0, 'h0, 'h17, 'he8a4, 'hecb4 },    // 23.90876655
{ 0, 'h0, 'h4e, 'h182e, 'h3e01 },    // 78.0944556
{ 1, 'h0, 'h5c, 'h1906, 'hf339 },    // -92.0977623
{ 0, 'h0, 'hc, 'hbc0b, 'hd520 },    // 12.73455555
{ 0, 'h0, 'h5a, 'hfd20, 'h2d1c }    // 90.98877222
};

int intermediate_sum[NUM_DIGITS] = { 'hb2b2, 'h126b0, 'h1022c, 'h1e357, 'h3d3fb, 'h34c1f, 'h95bd, 'h1d76b, 'h11f85, 'h1ba84}; 

int result_1[NUM_DIGITS] = { 'he35b, 'h6f5f, 'h918f, 'h18817, 'h241b7, 'h4b0a, 'h10344, 'h38074, 'h7305, 'h30244}; 
int fix_result_1[5] = { 0, 'h0, 'h263d, 'ha96c, 'h5d6d};    // 9789.66181


// main testbench
initial
begin

    $write("in hexadecimal ");

    for (i=0; i<NUM_DIGITS; i++) begin

		  prod_sum = 0;
		  
		  for(j=0; j<NUM_PRODS; j++) begin
		
			  prod_sum += (mod_opA_1[j][i] * mod_opB_1[j][i]);	
			  prod_sum = prod_sum % modulus[i];	

	     	  end

        $write("%5x ", prod_sum);

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
	
	 binvalA_sign = 0;
	 binvalA_1_ = 0;
    binvalA_2_ = 0;
    binvalA_3_ = 0;
    binvalA_4_ = 0;
	
	 binvalB_sign = 0;
	 binvalB_1_ = 0;
	 binvalB_2_ = 0;
	 binvalB_3_ = 0;
    binvalB_4_ = 0;
	 
	 @(posedge s_clk) 
	 
	 // (22+17+76+82) = 197
    for (i = 0; i < 250; i = i + 1) begin    //@(posedge s_clk);	// init all circuits to zero, burn off a bunch of clocks
	 #2  
//		datavalid_in = 0;
		
		if(i < 200) begin
			datavalid_in = 1;
			data_in_rd_req = 1;

		end
		else begin
			datavalid_in = 0;	// stop pumping zeros so the data_valid goes to zero	
//			trunc = 0;
//	 		clear = 0;
			data_in_rd_req = 0;
		end

		binvalA_sign = 0;
		binvalA_1_ = 0;
		binvalA_2_ = 0;
		binvalA_3_ = 0;
		binvalA_4_ = 0;
	
		binvalB_sign = 0;
		binvalB_1_ = 0;
		binvalB_2_ = 0;
		binvalB_3_ = 0;
		binvalB_4_ = 0;

	
      @(posedge s_clk); 
	 
	 end
	 
//	for (i = 0; i < 50; i = i + 1) begin  // empty fifo
//    	#2
	 
//	 datavalid_in = 0;
//	 data_in_rd_req = 1;
	
//	 @(posedge f_clk); 
 
//	 end

	#2
	data_in_async_clr = 1;
	data_out_async_clr = 1;
	datavalid_in = 0;
	data_in_rd_req = 0;
	
	trunc = 0;
	clear = 0;

      @(posedge s_clk); 


	#2
	data_in_async_clr = 0;
	data_out_async_clr = 0;

      @(posedge s_clk); 
	
    
	 
	 for(i=0; i<NUM_PRODS; i++)  begin			// 8 clocks, 44 total clocks to exit
	 
	 #2
	 
		trunc = 0;
		clear = 0;
		data_in_rd_req = 0;
	 
		datavalid_in = 1;

		binvalA_sign = fix_opA_1[i][0];
		binvalA_1_ = fix_opA_1[i][4];
		binvalA_2_ = fix_opA_1[i][3];
		binvalA_3_ = fix_opA_1[i][2];
		binvalA_4_ = fix_opA_1[i][1];
	
		binvalB_sign = fix_opB_1[i][0];
		binvalB_1_ = fix_opB_1[i][4];
		binvalB_2_ = fix_opB_1[i][3];
		binvalB_3_ = fix_opB_1[i][2];
		binvalB_4_ = fix_opB_1[i][1];


	 @(posedge s_clk);	 
	 
	 end
	 

	#2
	datavalid_in = 0;

	@(posedge s_clk);
	 
// push input data thru forward converter to fifo's using slow clock

	
	for(i=0; i<25; i++) begin

	#2
	datavalid_in = 0;
	
//		if(i > 14) begin		
//			async_clr = 1;		
//		end

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

	
	for(i=0; i<25; i++) begin		// outer loop of clocking
	
	   
		#2	 
		
		if(i < 8) begin
			data_in_rd_req = 1;		// assert the data valid in, read from FIFO
		end 
		else begin
			data_in_rd_req = 0;
		end
		
//		if(i > 14) begin			// conversion delay gate
		
//			if(cycle < 8) begin					// don't need to feed data to modmultaccum since its already connected now
//				 OPA = mod_opA_1[cycle][9];			
//				 OPB = mod_opB_1[cycle][9];
//			end

			if (cycle == 0) begin
				  clear = 0;
				  trunc = 1;

			 end

			 if (cycle == 5) begin
				  trunc = 0;
			 end
			 else if (cycle == 7) begin
				  clear = 1;
				  trunc = 0;
			 end 
			 else if (cycle == 8) begin
				  clear = 0;
			 end 

			 @(posedge f_clk); 
			 
	// --------------------------------------------
		
			if(cycle == 8) begin
				 cycle = 0;
			end
			else begin
				cycle += 1;
			end
		
//		end		// end of conversion gate
//		else begin

//			@(posedge f_clk); 

//		end

	end		// end of outer loop
	
	
// fast clock push to result fifo's
	
	
	
// ----------------- slow clock read out of result fifo's



	@(posedge s_clk); 
	
	#2
	data_out_rd_req = 1;		// single enable for single read out fo result fifo  ??
	
	@(posedge s_clk); 

//
	
	for(i=0; i<200; i++) begin		// outer loop of clocking
	
	#2
	data_out_rd_req = 0;
	
	@(posedge s_clk); 

	
	end

 

	 
    $display("End of test bench!\n");
    
    $stop;
	 
end

endmodule
