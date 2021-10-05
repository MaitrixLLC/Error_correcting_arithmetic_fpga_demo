
`timescale 1 ns/ 1 ns 

module tb_row_buf_x4();

parameter TEST_ADDR_WIDTH=10;
parameter TEST_DATA_WIDTH=18;
parameter TEST_FILE="matrix_A_d2_1.hex";




logic	we;
logic	we_clk;
logic	clk;
logic	clk_ena;
logic	reset;
logic	load;
logic	[9:0] adr_in;
logic	[17:0] data_in;
logic	[9:0] load_in;
logic   [17:0] data_out;


//logic clk;
logic [TEST_ADDR_WIDTH-1:0] test_addr;

logic [TEST_DATA_WIDTH-1:0] read_data1;
logic [TEST_DATA_WIDTH-1:0] read_data2;
logic [TEST_DATA_WIDTH-1:0] read_data3;
logic [TEST_DATA_WIDTH-1:0] read_data4;


//reg [17:0] data_ff;
logic [TEST_DATA_WIDTH-1:0] lutram_tb[0:2**TEST_ADDR_WIDTH-1]; 		// for result testing, testbench only

int m, chks;

//mem_test lut1(.addr(test_addr), .clk(clk), .data(read_data));
//TestMemLUT lut1(.addr(test_addr), .clk(clk), .data(read_data));

/*
module row_buf_x4_18x512  #(parameter	ADR_WIDTH = 10,
									parameter	DATA_WIDTH = 18,
									parameter	INIT_FILE1 = "matrix_A_d2_1.hex",
									parameter	INIT_FILE2 = "matrix_A_d2_2.hex",
									parameter	INIT_FILE3 = "matrix_A_d2_3.hex",
									parameter	INIT_FILE4 = "matrix_A_d2_4.hex",
									parameter	START_CONSTANT = 0)
(
	we,
	we_clk,
	clk,
	clk_ena,
	reset,
	load,
	adr_in,
	data_in,
	data_port_1_,
	data_port_2_,
	data_port_3_,
	data_port_4_
);

*/

row_buf_x4_18x512   #(.ADR_WIDTH(10),
									.DATA_WIDTH(18),
									.INIT_FILE1("matrix_A_d2_1.hex"),
									.INIT_FILE2("matrix_A_d2_2.hex"),
									.INIT_FILE3("matrix_A_d2_3.hex"),
									.INIT_FILE4("matrix_A_d2_4.hex"),
									.START_CONSTANT(0))

								Dut1 (.we(we), .we_clk(we_clk), .clk(clk), .clk_ena(clk_ena), .reset(reset), .load(load), .adr_in(test_addr), 
							   .data_in(data_in), .data_port_1_(read_data1), .data_port_2_(read_data2), .data_port_3_(read_data3), .data_port_4_(read_data4));
 
 // clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end

initial begin
    $readmemh("matrix_A_d2_1.hex", lutram_tb);		// this works for simulation, and works for synthesis also
//  $readmemh(TEST_FILE, lutram_tb);		// read initialization file into the tb_ram
end

// main testbench
initial
begin


    @(posedge clk) test_addr = 0;

    for (m = 0; m < 2; m = m + 1) @(posedge clk);	// burn off three clocks
	 
	 #2  	we = 0;
		we_clk = 0;
		clk_ena = 0;
		reset = 0;
		load = 0;
		data_in = 0;
		load_in = 0;
		test_addr = 0;
	 
	 @(posedge clk);
	 
//	 #2  reset = 1;
	 #2  clk_ena = 1;
	     load = 1;
//	     load_in = 'h55;

	 @(posedge clk);

	 #2 clk_ena = 1;
	    reset = 0;
	    load = 0;
	 
	 @(posedge clk);
	 
	 chks = 0;
	 for (m=1; m <=2**TEST_ADDR_WIDTH; m++) begin							// each loop, set up addr, burn a clock

		#2 test_addr = m;
		@(posedge clk); 

		if(read_data1 == lutram_tb[m-1]) begin
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
