`timescale 1 ns/ 1 ns 

module tb_CorSel_2L();

parameter TEST_MODULUS=177147;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_CONSTANT=33343;


logic clk;
logic [17:0] OPA;
logic [1:0] sign_in;
logic [17:0] A_out;
logic [17:0] result;
logic [17:0] tb_result;

int i, j, a, b, chks;

//ModSub_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
//ModSub_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 
CorSel_2L #(.DATA_WIDTH(18), .DIGIT_CORRECT(TEST_CONSTANT)) Dut1 
(
 .clk(clk), 
 .A(OPA), 
 .sign_in(sign_in), 
 .A_out(A_out), 
 .cor_result(result)
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
	 
	#2	 OPA = 18'h12345;
		 sign_in = 0;
	 
	 @(posedge clk); 
	 
	#2	 OPA = 18'h12345;
		 sign_in = 1;
		 
	 @(posedge clk); 

	#2	 OPA = 18'h12345;
		 sign_in = 2;
		 
	 @(posedge clk); 

	#2	 OPA = 18'h12345;
		 sign_in = 0;
		 
	 @(posedge clk); 

	#2	 OPA = 18'h26543;
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
