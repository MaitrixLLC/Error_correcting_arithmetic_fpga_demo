
`timescale 1 ns/ 1 ns 

module tb_alt_fifo18();


// inputs
reg  wr_req;
reg  rd_req;
reg  clk;
reg  reset;
reg  [17:0] data_in;

// outputs
wire full;
wire empty;
wire [7:0] used;
wire [17:0] data_out;


//logic clk;
//logic [TEST_ADDR_WIDTH-1:0] test_addr;

//logic [TEST_DATA_WIDTH-1:0] read_data;
//logic [TEST_DATA_WIDTH-1:0] read_data2;
//logic [TEST_DATA_WIDTH-1:0] read_data3;
//logic [TEST_DATA_WIDTH-1:0] read_data4;


//reg [17:0] data_ff;
//logic [TEST_DATA_WIDTH-1:0] lutram_tb[0:2**TEST_ADDR_WIDTH-1]; 		// for result testing, testbench only

int m, chks;

//mem_test lut1(.addr(test_addr), .clk(clk), .data(read_data));
//TestMemLUT lut1(.addr(test_addr), .clk(clk), .data(read_data));

/*
row_buf_x4_18x512   #(.ADR_WIDTH(10),
									.DATA_WIDTH(18),
									.INIT_FILE1("matrix_A_d2_1.hex"),
									.INIT_FILE2("matrix_A_d2_2.hex"),
									.INIT_FILE3("matrix_A_d2_3.hex"),
									.INIT_FILE4("matrix_A_d2_4.hex"),
									.START_CONSTANT(0))

								Dut1 (.we(we), .we_clk(we_clk), .clk(clk), .clk_ena(clk_ena), .reset(reset), .load(load), .adr_in(test_addr), 
							   .data_in(data_in), .data_port_1_(read_data1), .data_port_2_(read_data2), .data_port_3_(read_data3), .data_port_4_(read_data4));
*/

/*
dual_ram_store_test  Dut1 (
	.clk(clk),
	.clk_ena(clk_ena),
	.rd_clk(rd_clk),
	.reset(reset),
	.load_ena(load),
	.load_wr_adr(load_in),
	.rd_adr_in(rd_adr),
	.wr_data_in(data_in),
	.rd_data_out(data_out)
);
*/

/*
dsr_fifo18 Dut1 (			// declare an instantiation for testing
	.wrreq(wr_req),
	.rdreq(rd_req),
	.clock(clk),
	.sclr(reset),
	.data(data_in),
	.full(full),
	.empty(empty),
	.q(data_out),
	.usedw(used)
);
*/


dsr_fifo	 #(.DATA_WIDTH(18), .ADDR_WIDTH(3), .RAM_STYLE("MLAB"))

				Dut1	(.clk(clk),					 
					  .wr_req(wr_req), 
					  .rd_req(rd_req),
				     .data_in(data_in),
					  .sclr(reset),
					  .data_out(data_out),
					  .full(full),
					  .empty(empty));
					  
					  
 
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


    @(posedge clk) data_in = 0;

    for (m = 0; m < 2; m = m + 1) @(posedge clk);	// burn off three clocks
	 
	 #2  	
	   wr_req = 0;
		rd_req = 0;

		reset = 0;
		data_in = 0;

	 
	 @(posedge clk);
	 
	 #2  reset = 1;


	 @(posedge clk);

	 #2 reset = 0;
	    wr_req = 1;
	    data_in = 123;
	 
	 @(posedge clk);
	 
	 chks = 0;
	 for (m=1; m <=10; m++) begin							// each loop, push a value, burn a clock

		#2 data_in = m;

		@(posedge clk); 

	 end
	 
	 #2 wr_req = 0;
	    rd_req = 1;

	 
	 @(posedge clk);
	 
	 for (m=1; m <=10; m++) begin							// each loop, set up addr, burn a clock

		#2 rd_req = 1;

		@(posedge clk);
		

	 end

	 #2 rd_req = 0;
	 
	 @(posedge clk);
	 
	 
	 for (m=1; m <=30; m++) begin							// each loop, set up addr, burn a clock

		#2 
		
		if(m > 3) begin
		
			if(m > 11) begin
				rd_req = 0;
			end else begin
				rd_req = 1;
			end
			
		
		end
		
		if(m > 5) begin
		
			wr_req = 1;
			
		end 
		
		data_in = m+1000;

		@(posedge clk);
		

	 end
	 
	 
    $display("Total correct checks: %d\n", chks);
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
