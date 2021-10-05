`timescale 1 ns/ 1 ns 

module tb_ModAddOne_4L();

//parameter TEST_MODULUS=177147;
parameter TEST_MODULUS=262144;
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
ModAddOne_4L #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 
(	
	.digit_in_(OPA),
	.rnd_in(OPB),
	.clk(clk),
	.result(result)
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
	 
#2  OPA = 0;
    OPB = 0;
	 
    @(posedge clk); 
	 
#2  OPA = 177140;
    OPB = 1;
		 
    @(posedge clk); 

#2  OPA = 261143;
    OPB = 0;
		 
    @(posedge clk); 
	 
#2  OPA = 262143;
    OPB = 1;
		 
    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 1000; i+=10) begin
	 
	 #2  OPA = i * i;
             OPB = i % 2;

    @(posedge clk); 

    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule