`timescale 1 ns/ 1 ns 

module tb_InvModMult();

parameter TEST_MODULUS=131072;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
parameter TEST_FILE_HI="invmult_lut1_1_0.hex";


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic [17:0] result;
logic [17:0] tb_result;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;

//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
 
//InvModMult_LB_18 #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 
			 
//InvModMult_2L_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 

InvModMult_2L_4C Dut1 (.addr(OPA), .clk(clk), .data(result)); 
 
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
    @(posedge clk); 
	 
    addr_lo = 9'h01;
    addr_hi = 9'h01;
#2  OPA = (addr_lo | (addr_hi<<9));
    @(posedge clk); 

#2  OPA = 19996;			// individual test area, should result in 12
    @(posedge clk); 

#2  OPA = 19996;			// individual test area, should result in 12
    @(posedge clk); 

#2  OPA = 19996;			// individual test area, should result in 12
    @(posedge clk); 

    chks = 0;
	 
    for (i = (TEST_OPA_MODULUS-1); i >= 0; i--) begin

	#2	 OPA = i;
	@(posedge clk); 
	
	tb_result = (i * TEST_INVERSE) % TEST_MODULUS;
	
	#2
	if(tb_result == result) begin				// I guess delay is important for check of result?

		chks += 1;
	end
	else begin
		$display("error at i=%d\n", i);
	end



    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
