`timescale 1 ns/ 1 ns 

module tb_test_Full_Norm_pipe();

parameter TEST_MODULUS=131072;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
parameter TEST_FILE_HI="invmult_lut1_1_0.hex";


logic clk;
logic [17:0] Dig_in_0;
logic [17:0] Dig_in_1;
logic [17:0] Dig_in_2;
logic [17:0] Dig_in_3;
logic [17:0] Dig_in_4;
logic [17:0] Dig_in_5;
logic [17:0] Dig_in_6;
logic [17:0] Dig_in_7;

logic [17:0] Dig_out_0;
logic [17:0] Dig_out_1;
logic [17:0] Dig_out_2;
logic [17:0] Dig_out_3;
logic [17:0] Dig_out_4;
logic [17:0] Dig_out_5;
logic [17:0] Dig_out_6;
logic [17:0] Dig_out_7;

//logic [17:0] MR_dig_1;
//logic [17:0] MR_dig_2;
//logic [17:0] MR_dig_3;
//logic [17:0] MR_dig_4;
//logic [17:0] MR_dig_5;
//logic [17:0] MR_dig_6;
//logic [17:0] MR_dig_7;

logic [1:0] sign;

logic [17:0] tb_result;
int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;


/*

module Test_Full_Norm_pipe_v4(
	clk,
	Dig_0_,
	Dig_1_,
	Dig_2_,
	Dig_3_,
	Dig_4_,
	Dig_5_,
	Dig_6_,
	Dig_7_,
	sign_norm_d0_,
	sign_norm_d1_,
	sign_norm_d2_,
	sign_norm_d3_,
	sign_norm_d4_,
	sign_norm_d5_,
	sign_norm_d6_,
	sign_norm_d7_,
	sign_out
);

*/

Test_Full_Norm_pipe_v5 DUT1 (

	.clk(clk),
	.Dig_0_(Dig_in_0),
	.Dig_1_(Dig_in_1),
	.Dig_2_(Dig_in_2),
	.Dig_3_(Dig_in_3),
	.Dig_4_(Dig_in_4),
	.Dig_5_(Dig_in_5),
	.Dig_6_(Dig_in_6),
	.Dig_7_(Dig_in_7),
	
	.sign_norm_d0_(Dig_out_0),
	.sign_norm_d1_(Dig_out_1),
	.sign_norm_d2_(Dig_out_2),
	.sign_norm_d3_(Dig_out_3),
	.sign_norm_d4_(Dig_out_4),
	.sign_norm_d5_(Dig_out_5),
	.sign_norm_d6_(Dig_out_6),
	.sign_norm_d7_(Dig_out_7),
	.sign_out(sign));
 
 
 // clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end


// {'he000, 'h186a, 'hd57e, 'hf36, '3a77, 'h13bd1, 'h98ed, '2dceb}		   // -12.345
// {'h3400, 'h38c7, 'h27e0, '4b1d, '1b96e, 'c7fb, 'h28377, 'h21d67}		   // 10.506793
// {'h0, 'hf424, 'h405a, 'h1db5c, 'h3a3d0, 'h258, 'h14928, 'h1108c}		   // intermediate product
// {'ha84d, '591, 'ha985, 'h148ac, 'h1f156, 'h10d73, 'h26b26, 'h2a9f6}	   	// -129.70635958+

// {'h2000, 'h118c3, 'hf613, 'h2a4c5, 'h3c514, 'h2c3d0, 'h366b6, 'h122ca}	// 12.345
// {'h3400, 'h38c7, 'h27e0, '4b1d, '1b96e, 'c7fb, 'h28377, 'h21d67}			// 10.506793
// {'h0, 'h3d09, 'h18b37, 'hd89f, 'h5bbb, 'h3fd49, 'h2b67b, 'h2ef29}			// intermediate product
// {'h57b3, 'h12b9c, '1220c, 'h16b4f, 'h20e35, 'h2f22e, 'h1947d, '155bf}	// 129.70635958+

// main testbench
initial
begin

    @(posedge clk) i = 0;
#2  Dig_in_0 = 0;
    Dig_in_1 = 0;
    Dig_in_2 = 0;
    Dig_in_3 = 0;
    Dig_in_4 = 0;
    Dig_in_5 = 0;
    Dig_in_6 = 0;
    Dig_in_7 = 0;	 
	 
    for (i = 0; i < 30; i = i + 1) @(posedge clk);	// burn off 30 clocks

// {'he000, 'h186a, 'hd57e, 'hf36, '3a77, 'h13bd1, 'h98ed, '2dceb}		   // -12.345
// {'h3400, 'h38c7, 'h27e0, '4b1d, '1b96e, 'c7fb, 'h28377, 'h21d67}		   // 10.506793
// {'h0, 'hf424, 'h405a, 'h1db5c, 'h3a3d0, 'h258, 'h14928, 'h1108c}		   // intermediate product
// {'ha84d, '591, 'ha985, 'h148ac, 'h1f156, 'h10d73, 'h26b26, 'h2a9f6}	   	// -129.70635958+
// non-normalized number for the normalized value -129.70635958+
#2  Dig_in_0 = 18'h0;
    Dig_in_1 = 18'hf424;
    Dig_in_2 = 18'h405a;
    Dig_in_3 = 18'h1db5c;
    Dig_in_4 = 18'h3a3d0;
    Dig_in_5 = 18'h258;
    Dig_in_6 = 18'h14928;
    Dig_in_7 = 18'h1108c;

	  @(posedge clk); 

// {'h2000, 'h118c3, 'hf613, 'h2a4c5, 'h3c514, 'h2c3d0, 'h366b6, 'h122ca}	// 12.345
// {'h3400, 'h38c7, 'h27e0, '4b1d, '1b96e, 'c7fb, 'h28377, 'h21d67}			// 10.506793
// {'h0, 'h3d09, 'h18b37, 'hd89f, 'h5bbb, 'h3fd49, 'h2b67b, 'h2ef29}			// intermediate product
// {'h57b3, 'h12b9c, '1220c, 'h16b4f, 'h20e35, 'h2f22e, 'h1947d, '155bf}	// 129.70635958+
// non-normalized number for the normalized value +129.70635958+

#2  Dig_in_0 = 18'h0;
    Dig_in_1 = 18'h3d09;
    Dig_in_2 = 18'h18b37;
    Dig_in_3 = 18'hd89f;
    Dig_in_4 = 18'h5bbb;
    Dig_in_5 = 18'h3fd49;
    Dig_in_6 = 18'h2b67b;
    Dig_in_7 = 18'h2ef29;

    @(posedge clk); 
 
#2  Dig_in_0 = 18'h8115;			// integer value: 1234567890123456789
    Dig_in_1 = 18'h4b59;
    Dig_in_2 = 18'h13d2e;
    Dig_in_3 = 18'h3ac8;
    Dig_in_4 = 18'h243e4;
    Dig_in_5 = 18'h9147;
    Dig_in_6 = 18'h24bca;
    Dig_in_7 = 18'h36c7d;

    @(posedge clk); 

#2  Dig_in_0 = 18'h0;			// 
    Dig_in_1 = 18'h0;
    Dig_in_2 = 18'h0;
    Dig_in_3 = 18'h0;
    Dig_in_4 = 18'h0;
    Dig_in_5 = 18'h0;
    Dig_in_6 = 18'h0;
    Dig_in_7 = 18'h0;

    @(posedge clk); 

#2  Dig_in_0 = 18'hffff;	// largest 8 digit magnitude value
    Dig_in_1 = 18'h1312c;
    Dig_in_2 = 18'h1cb90;
    Dig_in_3 = 18'h2b3fa;
    Dig_in_4 = 18'h3ff8a;
    Dig_in_5 = 18'h3ffa0;
    Dig_in_6 = 18'h3ffa2;
    Dig_in_7 = 18'h3ffb4;
	 
    @(posedge clk); 

#2  Dig_in_0 = 18'h0;			// 
    Dig_in_1 = 18'h0;
    Dig_in_2 = 18'h0;
    Dig_in_3 = 18'h0;
    Dig_in_4 = 18'h0;
    Dig_in_5 = 18'h0;
    Dig_in_6 = 18'h0;
    Dig_in_7 = 18'h0;
    @(posedge clk); 

#2  Dig_in_0 = 18'h7fff;			// half value - 1  (largest positive value)
    Dig_in_1 = 18'h1312c;
    Dig_in_2 = 18'h1cb90;
    Dig_in_3 = 18'h2b3fa;
    Dig_in_4 = 18'h3ff8a;
    Dig_in_5 = 18'h3ffa0;
    Dig_in_6 = 18'h3ffa2;
    Dig_in_7 = 18'h3ffb4;
    @(posedge clk); 

#2  Dig_in_0 = 18'h8000;			// half value. nan
    Dig_in_1 = 18'h0;
    Dig_in_2 = 18'h0;
    Dig_in_3 = 18'h0;
    Dig_in_4 = 18'h0;
    Dig_in_5 = 18'h0;
    Dig_in_6 = 18'h0;
    Dig_in_7 = 18'h0;
    @(posedge clk); 



#2  Dig_in_0 = 18'h0;			// 
    Dig_in_1 = 18'h0;
    Dig_in_2 = 18'h0;
    Dig_in_3 = 18'h0;
    Dig_in_4 = 18'h0;
    Dig_in_5 = 18'h0;
    Dig_in_6 = 18'h0;
    Dig_in_7 = 18'h0;
    @(posedge clk); 


	 @(posedge clk); 

    @(posedge clk); 

    @(posedge clk); 

    @(posedge clk); 

    @(posedge clk); 

   for (i=0; i<1000; i++) begin

		@(posedge clk); 

   end

	$display("done with clocks\n");
	 
/*
    chks = 0;
	 
    for (i = (TEST_OPA_MODULUS-1); i >= 0; i--) begin

	#2	
	@(posedge clk); 
	
	tb_result = (i * TEST_INVERSE) % TEST_MODULUS;
	
	#2
	if(tb_result == result) begin				// delay is important for check of result?

		chks += 1;
	end
	else begin
		$display("error at i=%d\n", i);
	end



    end
*/
 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule