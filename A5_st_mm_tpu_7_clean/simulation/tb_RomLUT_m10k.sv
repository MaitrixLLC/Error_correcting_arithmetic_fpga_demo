
`timescale 1 ns/ 100 ps 

module tb_RomLUT_m10k();

parameter TEST_ADDR_WIDTH=10;
parameter TEST_DATA_WIDTH=64;
parameter TEST_FILE="partmod_lut_d3_s26.hex";

logic clk;
logic [TEST_ADDR_WIDTH-1:0] test_addr;
logic [TEST_DATA_WIDTH-1:0] read_data;
//reg [17:0] data_ff;
logic [TEST_DATA_WIDTH-1:0] lutram_tb[0:2**TEST_ADDR_WIDTH-1]; 		// for result testing, testbench only

int m, chks;

//mem_test lut1(.addr(test_addr), .clk(clk), .data(read_data));
//TestMemLUT lut1(.addr(test_addr), .clk(clk), .data(read_data));
//RomLUT_mlab #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
RomLUT_m10k #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.clk(clk), .addr(test_addr), .data(read_data));
 
 // clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end

initial begin
//	$readmemh("data2.hex", memory);		// this works for simulation, and works for synthesis also
$readmemh(TEST_FILE, lutram_tb);		// read initialization file into the tb_ram
end

// main testbench
initial
begin


    @(posedge clk) test_addr = 0;
    for (m = 0; m < 2; m = m + 1) @(posedge clk);	// burn off three clocks
	 
	 
	 #2 test_addr = 0;		// kick off address one clock ahead since this ROM takes two clocks
	 @(posedge clk); 
	 
	 chks = 0;
	 for (m=1; m <=2**TEST_ADDR_WIDTH; m++) begin							// each loop, set up addr, burn a clock

		#2 test_addr = m;
		@(posedge clk); 

		if(read_data == lutram_tb[m-1]) begin
		   chks += 1;
		end
		else begin
		   $display("error at: m[%d]=%x\n", m, lutram_tb[m]);
		end
		
//		if(read_data == 0)  $display("read value is zero\n");
//		if(read_data == 18'hf600)  $display("read value is f600\n");
	 end
	 
    $display("Total correct checks: %d\n", chks);
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
