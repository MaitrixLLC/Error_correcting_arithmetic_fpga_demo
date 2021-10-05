`timescale 1 ns/ 1 ns 

module tb_SubCorStage_4L();

parameter TEST_MODULUS=177147;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_CONSTANT=33343;


logic clk;
logic [17:0] dig_0_in;
logic [17:0] dig_1_in;
logic [17:0] dig_2_in;
logic [17:0] dig_3_in;
logic [17:0] dig_4_in;
logic [17:0] dig_5_in;
logic [17:0] dig_6_in;
logic [17:0] dig_7_in;

logic [1:0] sign_in;

logic [17:0] result_0_;
logic [17:0] result_1_;
logic [17:0] result_2_;
logic [17:0] result_3_;
logic [17:0] result_4_;
logic [17:0] result_5_;
logic [17:0] result_6_;
logic [17:0] result_7_;

logic [17:0] tb_result;

int i, j, a, b, chks;

//ModSub_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
//ModSub_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 

  
SubCorStage_4L  Dut1
(
	.clk(clk),
	.Dig_in_0_(dig_0_in),
	.Dig_in_1_(dig_1_in),
	.Dig_in_2_(dig_2_in),
	.Dig_in_3_(dig_3_in),
	.Dig_in_4_(dig_4_in),
	.Dig_in_5_(dig_5_in),
	.Dig_in_6_(dig_6_in),
	.Dig_in_7_(dig_7_in),
	.sign_in(sign_in),
	.result_0_(result_0_),
	.result_1_(result_1_),
	.result_2_(result_2_),
	.result_3_(result_3_),
	.result_4_(result_4_),
	.result_5_(result_5_),
	.result_6_(result_6_),
	.result_7_(result_7_)
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
	 
	#2	dig_0_in = 18'h12345;
		dig_1_in = 18'h12345;
		dig_2_in = 18'h12345;
		dig_3_in = 18'h12345;
		dig_4_in = 18'h12345;
		dig_5_in = 18'h12345;
		dig_6_in = 18'h12345;
		dig_7_in = 18'h12345;
		sign_in = 0;
	 
	 @(posedge clk); 
	 
	#2	dig_0_in = 18'h12345;
		dig_1_in = 18'h12345;
		dig_2_in = 18'h12345;
		dig_3_in = 18'h12345;
		dig_4_in = 18'h12345;
		dig_5_in = 18'h12345;
		dig_6_in = 18'h12345;
		dig_7_in = 18'h12345;
		sign_in = 1;
		 
	 @(posedge clk); 

	#2	dig_0_in = 18'h12345;
		dig_1_in = 18'h12345;
		dig_2_in = 18'h12345;
		dig_3_in = 18'h12345;
		dig_4_in = 18'h12345;
		dig_5_in = 18'h12345;
		dig_6_in = 18'h12345;
		dig_7_in = 18'h12345;
		sign_in = 2;
		 
	 @(posedge clk); 

	#2	dig_0_in = 18'h12345;
		dig_1_in = 18'h12346;
		dig_2_in = 18'h12347;
		dig_3_in = 18'h12348;
		dig_4_in = 18'h12349;
		dig_5_in = 18'h1234A;
		dig_6_in = 18'h1234B;
		dig_7_in = 18'h1234C;
		sign_in = 0;
		 
	 @(posedge clk); 

	#2	dig_0_in = 18'h12345;
		dig_1_in = 18'h12346;
		dig_2_in = 18'h12347;
		dig_3_in = 18'h12348;
		dig_4_in = 18'h12349;
		dig_5_in = 18'h1234A;
		dig_6_in = 18'h1234B;
		dig_7_in = 18'h1234C;
		sign_in = 1;
		 
	 @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

		@(posedge clk); 
		
    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
