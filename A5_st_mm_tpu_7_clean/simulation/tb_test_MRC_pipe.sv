`timescale 1 ns/ 1 ns 

module tb_test_MRC_pipe();

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

//Test_MRC_pipe_mlab DUT1 (.clk(clk), 
MRC_pipe_mlab_ec_test1 DUT1 (.clk(clk),
				
			.Dig_in_0_(Dig_in_0), .Dig_in_1_(Dig_in_1), 
			.Dig_in_2_(Dig_in_2), .Dig_in_3_(Dig_in_3),
			.Dig_in_4_(Dig_in_4), .Dig_in_5_(Dig_in_5),
			.Dig_in_6_(Dig_in_6), .Dig_in_7_(Dig_in_7),
				
			.Dig_out_0_(Dig_out_0), .Dig_out_1_(Dig_out_1), 
			.Dig_out_2_(Dig_out_2), .Dig_out_3_(Dig_out_3), 
			.Dig_out_4_(Dig_out_4), .Dig_out_5_(Dig_out_5), 
			.Dig_out_6_(Dig_out_6), .Dig_out_7_(Dig_out_7));
 
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
    @(posedge clk); 

// big random number 209475923847590237
#2  Dig_in_0 = 18'h2f50;
    Dig_in_1 = 18'hb15d;
    Dig_in_2 = 18'he5df;
    Dig_in_3 = 18'h2b4a1;
    Dig_in_4 = 18'h3c271;
    Dig_in_5 = 18'h2156b;
    Dig_in_6 = 18'h1fec4;
    Dig_in_7 = 18'h343a2;

	  @(posedge clk); 
	  
#2  Dig_in_0 = 78124;			// max value check
    Dig_in_1 = 131071;
    Dig_in_2 = 177146;
    Dig_in_3 = 262110;
    Dig_in_4 = 262120;
    Dig_in_5 = 262126;
    Dig_in_6 = 262132;
    Dig_in_7 = 262138;


	  @(posedge clk); 
// another big number, all digits converting
#2  Dig_in_0 = 18'h8f21;
    Dig_in_1 = 18'h138d3;
    Dig_in_2 = 18'h126a6;
    Dig_in_3 = 18'hfe4b;
    Dig_in_4 = 18'h50da;
    Dig_in_5 = 18'h9274;
    Dig_in_6 = 18'hf233;
    Dig_in_7 = 18'h11ebd;

	  @(posedge clk); 

	  @(posedge clk); 

	  @(posedge clk); 

	  @(posedge clk); 

	  @(posedge clk); 

	for (i=0; i<(10*8); i++) begin

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
