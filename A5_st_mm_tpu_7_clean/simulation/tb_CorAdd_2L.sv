`timescale 1 ns/ 1 ns 

module tb_CorAdd_2L();

parameter MODULUS='h3ffe9;
parameter CONST='h2242c;
parameter DATA_WIDTH=18;


logic clk;
logic ena;
logic [17:0] OPA;

logic [17:0] result;
logic [17:0] tb_result;

int i, j, a, b, chks;

//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
//ModAdd_1R_2C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 

CorAdd_2L #(.DATA_WIDTH(18), .MODULUS(MODULUS), .CONST(CONST)) Dut1
(
	.clk(clk),
	.ena(ena),
	.OP_A_(OPA),
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
	 ena = 0;
	 
    @(posedge clk); 
	 
#2  OPA = 'h34dca;
    ena = 0;
		 
    @(posedge clk); 

#2  OPA = 'h34dca;
	 ena = 1;
		 
    @(posedge clk); 


	 for(i=0; i<100; i++)
	 begin
	 
	 
	 
	    @(posedge clk); 
	 
	 
	 end
 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
