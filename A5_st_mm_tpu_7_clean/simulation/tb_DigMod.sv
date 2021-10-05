`timescale 1 ns/ 1 ns 

module tb_DigMod();

parameter TEST_MODULUS=177147;


logic clk;
logic [20:0] OPA;

logic [17:0] result;
logic [17:0] tb_result;
logic [17:0] tb_result_dly1;
logic [17:0] tb_result_dly2;
logic [17:0] tb_result_dly3;

int i, j, a, b, chks, test_val;

//ModSub_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
//ModSub_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 
//ModSub_1R_2C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 

digmod18_21 //#(.DATA_WIDTH(18), .LUT_WIDTH(5), .TRUNC_WIDTH(16), .MODULUS(TEST_MODULUS), .FILE("partmod_lut_d2_s16_r32.hex")) Dut1
Dut1 (
	.clk(clk),
	.dig_in_(OPA),
	.dig_out_(result)
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
	 
	 #2	 OPA = 0;
	 
	 @(posedge clk); 
	 
	 #2 OPA = 0;
		 
	 @(posedge clk); 

	 #2 OPA = 2;
		 
	 @(posedge clk); 

	 #2 OPA = 2;

		 
	 @(posedge clk); 

	 #2 OPA = 177146;
	    test_val = 177146;

		 
	 @(posedge clk); 

    chks = 0;
	 
    for (i = 3*177145; i < 3*177145+TEST_MODULUS; i++) begin

 //  	if( !(test_val % 100)) $display("OPA:%d\n", test_val);

	for (j=0; j < TEST_MODULUS; j++) begin

	   #2	 OPA = i+j;

//		test_val = (i+j) % TEST_MODULUS;

		tb_result_dly3 = tb_result_dly2;
		tb_result_dly2 = tb_result_dly1;
		tb_result_dly1 = test_val;

		test_val = (i+j) % TEST_MODULUS;

		$display("dly1=%d, result=%d\n", tb_result_dly3, result);

//		test_val = (i+j) % TEST_MODULUS;

		if(result != tb_result_dly3) begin
			$display("error at i=%d, j=%d\n", i, j);
		end
		else begin
			chks += 1;
		end

	 	@(posedge clk); 
		
	end

    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
