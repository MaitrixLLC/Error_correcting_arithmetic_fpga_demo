`timescale 1 ns/ 1 ns 

module tb_test_Decomp_pipe();

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

logic [17:0] tb_result;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;

//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
 
//InvModMult_LB_18 #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 

Test_Recomp_pipe_mlab Dut1  (
   .clk(clk),
	.mr_dig_2_(Dig_in_2),
	.mr_dig_3_(Dig_in_3),
	.mr_dig_4_(Dig_in_4),
	.mr_dig_5_(Dig_in_5),
	.mr_dig_6_(Dig_in_6),
	.mr_dig_7_(Dig_in_7),
	.norm_dig_0_(Dig_out_0),
	.norm_dig_1_(Dig_out_1),
	.norm_dig_2_(Dig_out_2),
	.norm_dig_3_(Dig_out_3),
	.norm_dig_4_(Dig_out_4),
	.norm_dig_5_(Dig_out_5),
	.norm_dig_6_(Dig_out_6),
	.norm_dig_7_(Dig_out_7));

/*
Test_MRC_pipe_mlab DUT1 (.clk(clk), 
				
			.Dig_in_0(Dig_in_0), .Dig_in_1(Dig_in_1), 
			.Dig_in_2(Dig_in_2), .Dig_in_3(Dig_in_3),
			.Dig_in_4(Dig_in_4), .Dig_in_5(Dig_in_5),
			.Dig_in_6(Dig_in_6), .Dig_in_7(Dig_in_7),
				
			.Dig_out_1(Dig_out_1), .Dig_out_2(Dig_out_2),
			.Dig_out_3(Dig_out_3), .Dig_out_4(Dig_out_4),
			.Dig_out_5(Dig_out_5), .Dig_out_6(Dig_out_6),
			.Dig_out_7(Dig_out_7));
*/

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
	 
#2  Dig_in_0 = 0;
    Dig_in_1 = 0;
    Dig_in_2 = 0;
    Dig_in_3 = 0;
    Dig_in_4 = 0;
    Dig_in_5 = 0;
    Dig_in_6 = 0;
    Dig_in_7 = 0;

    @(posedge clk); 

// big MR number from 123456789.123456789 squared. = bf19 e276 2a653 20617 1d387 a049 cc0c
#2  Dig_in_0 = 18'hcc0c;
    Dig_in_1 = 18'ha049;
    Dig_in_2 = 18'h1d387;		// conversion starts with this digit
    Dig_in_3 = 18'h20617;
    Dig_in_4 = 18'h2a653;
    Dig_in_5 = 18'he276;
    Dig_in_6 = 18'hbf19;
    Dig_in_7 = 18'h0;

    @(posedge clk); 
	  
#2  Dig_in_0 = 18'hcc0c;
    Dig_in_1 = 18'ha049;
    Dig_in_2 = 18'h1d387;
    Dig_in_3 = 18'h20617;
    Dig_in_4 = 18'h2a653;
    Dig_in_5 = 18'he276;
    Dig_in_6 = 18'hbf19;
    Dig_in_7 = 18'h0;


	  @(posedge clk); 
// another big number, all digits converting
#2  Dig_in_0 = 18'h0;
    Dig_in_1 = 18'h0;
    Dig_in_2 = 18'hc3ae;
    Dig_in_3 = 18'h12397;
    Dig_in_4 = 18'hd21;
    Dig_in_5 = 18'h0;
    Dig_in_6 = 18'h0;
    Dig_in_7 = 18'h0;

	  @(posedge clk); 

	  @(posedge clk); 

	  @(posedge clk); 

	  @(posedge clk); 

	  @(posedge clk); 

	for (i=0; i<(7*8); i++) begin

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
