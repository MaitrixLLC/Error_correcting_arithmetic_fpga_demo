`timescale 1 ns/ 1 ns 

module tb_ModCmpl_1R();

parameter TEST_MODULUS=177147;


logic clk;
logic [17:0] OPA;
logic [17:0] cmpl_ena;
logic [17:0] result;
logic [17:0] tb_result;
logic [17:0] tb_result_dly1;

int i, j, a, b, chks;

//ModSub_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
//ModSub_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 
ModCmpl_1R_2C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .cmpl_ena(cmpl_ena), .A(OPA), .result(result)); 
  
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
		 cmpl_ena = 0;
	 
	 @(posedge clk); 
	 
	 #2 OPA = 2;
	    cmpl_ena = 1;
		 
	 @(posedge clk); 

	 #2 OPA = 2;
	    cmpl_ena = 0;
		 
	 @(posedge clk); 

	 #2 OPA = 1234;
	    cmpl_ena = 1;
		 
	 @(posedge clk); 

	 #2 OPA = 1234;
	    cmpl_ena = 0;
		 
	 @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < TEST_MODULUS; i++) begin

   	if( !(i % 100)) $display("OPA:%d\n", i);

	for (j=0; j < 2; j++) begin

	   #2	 OPA = i;
		 cmpl_ena = j % 2;

		tb_result_dly1 = result;
		$display("dly1=%d, result=%d\n", tb_result_dly1, result);

		if(i < j) begin
		   tb_result = (i - j) + TEST_MODULUS;
		end
		else begin
		   tb_result = (i - j);
		end

	 	@(posedge clk); 
		if(tb_result != tb_result_dly1) begin
			$display("error at i=%d, j=%d\n", i, j);
		end
		else begin
			chks += 1;
		end

	end

    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
