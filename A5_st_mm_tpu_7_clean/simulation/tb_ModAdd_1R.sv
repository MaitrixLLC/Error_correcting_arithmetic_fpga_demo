`timescale 1 ns/ 1 ns 

module tb_ModAdd_1R();

parameter TEST_MODULUS=177147;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic [17:0] result;
logic [17:0] tb_result;

int i, j, a, b, chks;

//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
ModAdd_1R_2C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 

 
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
	 
#2  OPA = 0;
    OPB = 1;
	 
    @(posedge clk); 
	 
#2  OPA = 0;
    OPB = 2;
		 
    @(posedge clk); 

#2  OPA = 100000;
    OPB = 100001;
		 
    @(posedge clk); 

    chks = 0;
	 
    for (i = (TEST_OPA_MODULUS-1)/2+10; i >= 0; i--) begin

   	if( !(i % 100)) $display("OPA:%d\n", i);

	for (j=(TEST_OPA_MODULUS-1)/2+10; j >= 0; j--) begin

		#2	 OPA = i;
		 OPB = j;

		if((i + j) >= TEST_MODULUS) begin
			tb_result = (i + j) - TEST_MODULUS;
		end
		else begin
			tb_result = (i + j);
		end

		@(posedge clk); 
		if(result != tb_result) begin
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
