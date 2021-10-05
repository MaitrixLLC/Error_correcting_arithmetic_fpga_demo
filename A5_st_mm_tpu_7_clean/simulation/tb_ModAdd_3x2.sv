`timescale 1 ns/ 1 ns 

module tb_ModAdd_3x2();

parameter FILE="partmod_lut_d2_s16_r16.hex";		// this should be file for modulus 177147

// NOTE: IF YOU WANT THE OVERRIDE FILE TO WORK, IT NEEDS TO BE IN THE MODELSIM DIRECTORY


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic [17:0] OPC;

logic [17:0] lut_sum;			// from lut
logic [15:0] trunc_sum;			// 16 bits wide

int i, j, a, b, chks;

//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
ModAdd_3x2_2L #(.DATA_WIDTH(18), .FILE(FILE)) Dut1 (.clk(clk), .in_a(OPA), .in_b(OPB), .in_c(OPC), .lut_sum(lut_sum), .trunc_sum(trunc_sum)); 

 
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
	 
#2  OPA = 18'h21234;
    OPB = 18'h23456;
    OPC = 18'h19999;
    @(posedge clk); 

#2  OPA = 18'h21235;
    OPB = 18'h23456;
    OPC = 18'h19999;
   @(posedge clk); 


#2  OPA = 18'h3ffff;
    OPB = 18'h3ffff;
    OPC = 18'h3ffff;		 
    @(posedge clk); 
		 
#2  for (i=0; i < 100; i++) begin
		 
    @(posedge clk); 
	 
	 end

    chks = 0;
	 
 

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
