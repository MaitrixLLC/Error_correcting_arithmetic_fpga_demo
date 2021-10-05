`timescale 1 ns/ 1 ns 

module tb_ec_correct_pipe18x10();

//parameter TEST_MODULUS=131072;
int i;


logic clk;
logic [17:0] Dig_in_0_;
logic [17:0] Dig_in_1_;
logic [17:0] Dig_in_2_;
logic [17:0] Dig_in_3_;
logic [17:0] Dig_in_4_;
logic [17:0] Dig_in_5_;
logic [17:0] Dig_in_6_;
logic [17:0] Dig_in_7_;
logic [17:0] Dig_in_8_;
logic [17:0] Dig_in_9_;

logic [1:0] error_0_;
logic [1:0] error_1_;
logic [1:0] error_2_;
logic [1:0] error_3_;
logic [1:0] error_4_;
logic [1:0] error_5_;
logic [1:0] error_6_;
logic [1:0] error_7_;
logic [1:0] error_8_;
logic [1:0] error_9_;

logic [17:0] out_0_;
logic [17:0] out_1_;
logic [17:0] out_2_;
logic [17:0] out_3_;
logic [17:0] out_4_;
logic [17:0] out_5_;
logic [17:0] out_6_;
logic [17:0] out_7_;
logic [17:0] out_8_;
logic [17:0] out_9_;

logic cor_error;
logic non_cor_error;
logic	mal_error;
	


//  65536, 78125, 117649, 177147, 262027, 262049, 262051, 262069, 262079, 262103

//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
 
//InvModMult_LB_18 #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 

//Test_MRC_pipe_mlab DUT1 (.clk(clk), 


/*

module ec_correct_pipe18x10(
	clk,
	Dig_in_0_,
	Dig_in_1_,
	Dig_in_2_,
	Dig_in_3_,
	Dig_in_4_,
	Dig_in_5_,
	Dig_in_6_,
	Dig_in_7_,
	Dig_in_8_,
	Dig_in_9_,
	cor_error,
	non_cor_error,
	mal_error,
	out_0_,
	out_1_,
	out_2_,
	out_3_,
	out_4_,
	out_5_,
	out_6_,
	out_7_,
	out_8_,
	out_9_
);


			.error_0_(error_0_),
			.error_1_(error_1_),
			.error_2_(error_2_),
			.error_3_(error_3_),
			.error_4_(error_4_),
			.error_5_(error_5_),
			.error_6_(error_6_),
			.error_7_(error_7_),
			.error_8_(error_8_),
			.error_9_(error_9_),

*/


ec_correct_pipe18x10 DUT1 (

			.clk(clk),
				
			.Dig_in_0_(Dig_in_0_), .Dig_in_1_(Dig_in_1_), 
			.Dig_in_2_(Dig_in_2_), .Dig_in_3_(Dig_in_3_),
			.Dig_in_4_(Dig_in_4_), .Dig_in_5_(Dig_in_5_),
			.Dig_in_6_(Dig_in_6_), .Dig_in_7_(Dig_in_7_),
			.Dig_in_8_(Dig_in_8_), .Dig_in_9_(Dig_in_9_),
			
			.out_0_(out_0_),
			.out_1_(out_1_),
			.out_2_(out_2_),
			.out_3_(out_3_),
			.out_4_(out_4_),
			.out_5_(out_5_),
			.out_6_(out_6_),
			.out_7_(out_7_),
			.out_8_(out_8_),
			.out_9_(out_9_),
			
			.cor_error(cor_error),
			.non_cor_error(non_cor_error),
			.mal_error(mal_error)			
			
			);
			
 
 // clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end


// main testbench
initial
begin


    @(posedge clk) i = 0;
    for (i = 0; i < 2; i = i + 1) @(posedge clk);	// burn off three clocks
	 
#2  Dig_in_0_ = 0;
    Dig_in_1_ = 0;
    Dig_in_2_ = 0;
	 Dig_in_3_ = 0;
    Dig_in_4_ = 0;
    Dig_in_5_ = 0;
	 Dig_in_6_ = 0;
    Dig_in_7_ = 0;
    Dig_in_8_ = 0;
	 Dig_in_9_ = 0;
	 
    @(posedge clk); 
	 for (i = 0; i < 10; i = i + 1) @(posedge clk);	// burn off ten clocks
	 
/* 
#2  Dig_in_0_ = 65535;			// max value check
    Dig_in_1_ = 78124;
    Dig_in_2_ = 117648;
    Dig_in_3_ = 177146;
    Dig_in_4_ = 262026;
    Dig_in_5_ = 262048;
    Dig_in_6_ = 262050;
    Dig_in_7_ = 262068;
	 Dig_in_8_ = 262078;
	 Dig_in_9_ = 262102;


	  @(posedge clk); 
	  
*/
	  
// another big number, all digits converting
#2  Dig_in_0_ = 18'h0ad2;			// 12345678901234567890
    Dig_in_1_ = 18'h08f20;
    Dig_in_2_ = 18'h19e66;
    Dig_in_3_ = 18'h24bd0;
    Dig_in_4_ = 18'h2a931;
    Dig_in_5_ = 18'h1ad25;
    Dig_in_6_ = 18'h2f7b5;
    Dig_in_7_ = 18'h23f3a;
	 Dig_in_8_ = 18'h1a075;
	 Dig_in_9_ = 18'h31f62;

	  @(posedge clk); 
	  


#2  Dig_in_0_ = 18'hf52e;			// -12345678901234567890
    Dig_in_1_ = 18'ha20d;
    Dig_in_2_ = 18'h2d2b;
	 Dig_in_3_ = 18'h682b;			// correct value
//	 Dig_in_3_ = 18'h682c;			// error value
    Dig_in_4_ = 18'h1565a;
    Dig_in_5_ = 18'h2527c;		// correct value
//	 Dig_in_5_ = 18'h0;			// error value
	 Dig_in_6_ = 18'h107ee;
    Dig_in_7_ = 18'h1c07b;
    Dig_in_8_ = 18'h25f4a;	   // correct value
//	 Dig_in_8_ = 18'h2555a;		// error value
	 Dig_in_9_ = 18'he075;		// correct value
//	 Dig_in_9_ = 18'h1ffff;		// error value
	 
    @(posedge clk); 
	 
 
	  
	 Dig_in_0_ = 18'h07fff;		// M/2 - 1  (8 redundant digits, 10 total)  correct value
//	 Dig_in_0_ = 18'h07f;		// error value for testing 
    Dig_in_1_ = 18'h1312c;
    Dig_in_2_ = 18'h1cb90;
    Dig_in_3_ = 18'h2b3fa;
    Dig_in_4_ = 18'h3ff8a;		// correct value
//	    Dig_in_4_ = 18'h3ff8f;		// error value
    Dig_in_5_ = 18'h3ffa0;
    Dig_in_6_ = 18'h3ffa2;
    Dig_in_7_ = 18'h3ffb4;
	 Dig_in_8_ = 18'h367bc;
	 Dig_in_9_ = 18'h2de79;
	  
	  @(posedge clk); 
	  

	  
	 Dig_in_0_ = 18'had2;		// test value
    Dig_in_1_ = 18'h8f20;
    Dig_in_2_ = 18'h19e66;
    Dig_in_3_ = 18'h24bd0;
    Dig_in_4_ = 18'h2a931;
    Dig_in_5_ = 18'h1ad25;
    Dig_in_6_ = 18'h2f7b5;
    Dig_in_7_ = 18'h23f3a;
	 Dig_in_8_ = 18'h1a075;
	 Dig_in_9_ = 18'h31f62;
	  
	  @(posedge clk); 

	  /*
	  
	 Dig_in_0_ = 18'h08001;		//  M/2 + 1
    Dig_in_1_ = 18'h00001;
    Dig_in_2_ = 18'h00001;
    Dig_in_3_ = 18'h00001;
    Dig_in_4_ = 18'h00001;
    Dig_in_5_ = 18'h00001;
    Dig_in_6_ = 18'h00001;
    Dig_in_7_ = 18'h00001;
	 Dig_in_8_ = 18'h367be;
	 Dig_in_9_ = 18'h2de7b;	  
	 
	  @(posedge clk); 
	  
	 */
	  
	 Dig_in_0_ = 18'h0;
    Dig_in_1_ = 18'h0;
    Dig_in_2_ = 18'h0;
    Dig_in_3_ = 18'h0;
    Dig_in_4_ = 18'h0;
    Dig_in_5_ = 18'h0;
    Dig_in_6_ = 18'h0;
    Dig_in_7_ = 18'h0;
	 Dig_in_8_ = 18'h0;
	 Dig_in_9_ = 18'h0;
	  

	  @(posedge clk); 

	  @(posedge clk); 

	  @(posedge clk); 

	  @(posedge clk); 
	  

	for (i=0; i<(10*9); i++) begin

		  @(posedge clk); 

	end

	$display("done with clocks\n");
	 

 
//    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
