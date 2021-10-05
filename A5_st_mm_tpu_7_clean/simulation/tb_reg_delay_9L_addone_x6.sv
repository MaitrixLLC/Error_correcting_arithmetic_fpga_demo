`timescale 1 ns/ 1 ns 

module tb_reg_delay_9L_addone_x6();

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

logic [1:0] carry_in;

logic [17:0] tb_result;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;

//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
 
//InvModMult_LB_18 #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 

reg_delay_addone_9L_x6 DUT1 (
	.clk(clk),
	.carry_in(carry_in),
	.reg2_in(Dig_in_2),
	.reg3_in(Dig_in_3),
	.reg4_in(Dig_in_4),
	.reg5_in(Dig_in_5),
	.reg6_in(Dig_in_6),
	.reg7_in(Dig_in_7),
	.reg2_out(Dig_out_2),
	.reg3_out(Dig_out_3),
	.reg4_out(Dig_out_4),
	.reg5_out(Dig_out_5),
	.reg6_out(Dig_out_6),
	.reg7_out(Dig_out_7)
);

/*
Test_Full_Norm_pipe_v2 DUT1 (

	.clk(clk),
	.Dig_0_(Dig_in_0),
	.Dig_1_(Dig_in_1),
	.Dig_2_(Dig_in_2),
	.Dig_3_(Dig_in_3),
	.Dig_4_(Dig_in_4),
	.Dig_5_(Dig_in_5),
	.Dig_6_(Dig_in_6),
	.Dig_7_(Dig_in_7),
	.mr_dig1_(MR_dig_1),
	.mr_dig2_(MR_dig_2),
	.mr_dig3_(MR_dig_3),
	.mr_dig4_(MR_dig_4),
	.mr_dig5_(MR_dig_5),
	.mr_dig6_(MR_dig_6),
	.mr_dig7_(MR_dig_7),
	.norm_d0_(Dig_out_0),
	.norm_d1_(Dig_out_1),
	.norm_d2_(Dig_out_2),
	.norm_d3_(Dig_out_3),
	.norm_d4_(Dig_out_4),
	.norm_d5_(Dig_out_5),
	.norm_d6_(Dig_out_6),
	.norm_d7_(Dig_out_7),
	.sign_out(sign));
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
	 carry_in = 0;

    @(posedge clk); 
	 
#2  Dig_in_0 = 0;
    Dig_in_1 = 0;
    Dig_in_2 = 0;
    Dig_in_3 = 0;
    Dig_in_4 = 0;
    Dig_in_5 = 0;
    Dig_in_6 = 0;
    Dig_in_7 = 0;
    carry_in = 1;

    @(posedge clk); 
	 
	 
#2  Dig_in_0 = 18'd78124;
    Dig_in_1 = 18'd131071;
    Dig_in_2 = 18'd177146;
    Dig_in_3 = 18'd262110;
    Dig_in_4 = 18'd262120;
    Dig_in_5 = 18'd262126;
    Dig_in_6 = 18'd262132;
    Dig_in_7 = 18'd262138;
    carry_in = 0;
	 
	 @(posedge clk); 
	 
#2  Dig_in_0 = 18'd78124;
    Dig_in_1 = 18'd131071;
    Dig_in_2 = 18'd177146;
    Dig_in_3 = 18'd262110;
    Dig_in_4 = 18'd262120;
    Dig_in_5 = 18'd262126;
    Dig_in_6 = 18'd262132;
    Dig_in_7 = 18'd262138;
	 carry_in = 1;
	 
	 @(posedge clk); 	 

// big non-normalized number 123456789.123456789
#2  Dig_in_0 = 18'hcc0c;
    Dig_in_1 = 18'h1f1e1;
    Dig_in_2 = 18'h1e6f3;
    Dig_in_3 = 18'h29735;
    Dig_in_4 = 18'h2804f;
    Dig_in_5 = 18'h32965;
    Dig_in_6 = 18'h3778f;
    Dig_in_7 = 18'h232ac;
	 carry_in = 0;

	  @(posedge clk); 
	  
#2  Dig_in_0 = 18'hcc0c;
    Dig_in_1 = 18'h1f1e1;
    Dig_in_2 = 18'h1e6f3;
    Dig_in_3 = 18'h29735;
    Dig_in_4 = 18'h2804f;
    Dig_in_5 = 18'h32965;
    Dig_in_6 = 18'h3778f;
    Dig_in_7 = 18'h232ac;
	 carry_in = 1;

	  @(posedge clk); 

#2  Dig_in_0 = 0;
    Dig_in_1 = 0;
    Dig_in_2 = 0;
    Dig_in_3 = 0;
    Dig_in_4 = 0;
    Dig_in_5 = 0;
    Dig_in_6 = 0;
    Dig_in_7 = 0;

    @(posedge clk); 
 
#2  Dig_in_0 = 18'h4b59;			// integer value: 1234567890123456789
    Dig_in_1 = 18'h18115;
    Dig_in_2 = 18'h3ac8;
    Dig_in_3 = 18'h2c778;
    Dig_in_4 = 18'h25f0b;
    Dig_in_5 = 18'h10dc2;
    Dig_in_6 = 18'hdfe2;
    Dig_in_7 = 18'h7a6d;

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

#2  Dig_in_0 = 18'h6521;	// negative value, for sign test
    Dig_in_1 = 18'he1f;
    Dig_in_2 = 18'hcd08;
    Dig_in_3 = 18'h168aa;
    Dig_in_4 = 18'h17f9a;
    Dig_in_5 = 18'hd68a;
    Dig_in_6 = 18'h8866;
    Dig_in_7 = 18'h1cd4f;

    @(posedge clk); 

#2  Dig_in_0 = 18'h1312c;	// largest value
    Dig_in_1 = 18'h1ffff;
    Dig_in_2 = 18'h2b3fa;
    Dig_in_3 = 18'h3ffde;
    Dig_in_4 = 18'h3ffe8;
    Dig_in_5 = 18'h3ffee;
    Dig_in_6 = 18'h3fff4;
    Dig_in_7 = 18'h3fffa;
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

#2  Dig_in_0 = 18'h0;			// half value
    Dig_in_1 = 18'h10000;
    Dig_in_2 = 18'h159fd;
    Dig_in_3 = 18'h1ffef;
    Dig_in_4 = 18'h1fff4;
    Dig_in_5 = 18'h1fff7;
    Dig_in_6 = 18'h1fffa;
    Dig_in_7 = 18'h1fffd;
    @(posedge clk); 

#2  Dig_in_0 = 18'h0;			// half value
    Dig_in_1 = 18'h10000;
    Dig_in_2 = 18'h159fd;
    Dig_in_3 = 18'h1ffef;
    Dig_in_4 = 18'h1fff4;
    Dig_in_5 = 18'h1fff7;
    Dig_in_6 = 18'h1fffa;
    Dig_in_7 = 18'h1fffd;
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

#2  Dig_in_0 = 18'h1312c;			// largest positive value
    Dig_in_1 = 18'hffff;
    Dig_in_2 = 18'h2b3fa;
    Dig_in_3 = 18'h3ffde;
    Dig_in_4 = 18'h3ffe8;
    Dig_in_5 = 18'h3ffee;
    Dig_in_6 = 18'h3fff4;
    Dig_in_7 = 18'h3fffa;
    @(posedge clk); 
/*
// another big number, all digits converting
#2  Dig_in_0 = 18'h8f21;
    Dig_in_1 = 18'h138d3;
    Dig_in_2 = 18'h126a6;
    Dig_in_3 = 18'hfe4b;
    Dig_in_4 = 18'h50da;
    Dig_in_5 = 18'h9274;
    Dig_in_6 = 18'hf233;
    Dig_in_7 = 18'h11ebd;
*/
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
