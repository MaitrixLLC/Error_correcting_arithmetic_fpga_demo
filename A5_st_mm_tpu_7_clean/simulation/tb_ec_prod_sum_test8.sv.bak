`timescale 1 ns/ 1 ns 

module tb_ec_prod_sum_test7();

parameter NUM_PRODS=64;
parameter NUM_BATCHES = 7;
parameter NUM_DIGITS=10;

int modulus[NUM_DIGITS] = {65536, 78125, 117649, 177147, 262027, 262049, 262051, 262069, 262079, 262103};


int j, k, chks, cycle;
longint i;
longint prod_sum;



logic s_clk;
logic f_clk;
logic start;
logic aclr;
logic reset_in;

wire cor_error;
wire non_cor_error;
wire mal_error;
wire done;
wire datavalid_out;
	

	
wire sign_out;
wire [15:0] bin_out_1_;
wire [15:0] bin_out_2_;
wire [15:0] bin_out_3_;
wire [15:0] bin_out_4_;

wire [9:0] data_A_rd_full_;
wire [9:0] data_A_wr_full_;
wire [9:0] data_B_rd_full_;
wire [9:0] data_B_wr_full_;
wire [9:0] result_rd_full_;
wire [9:0] result_wr_full_;

wire [8:0] data_A_rd_used;
wire [8:0] data_A_wr_used;
wire [8:0] data_B_rd_used;
wire [8:0] data_B_wr_used;
wire [8:0] result_rd_used;
wire [8:0] result_wr_used;



ec_prod_sum_test7 dut1 (

	.s_clk(s_clk),
	.f_clk(f_clk),

	.reset_in(reset_in),
	
	.datavalid_out(datavalid_out),
	
	.cor_error(cor_error),
	.non_cor_error(non_cor_error),
	.mal_error(mal_error),
	.done(done),
	
	.sign_out(sign_out),	
	.bin_out_1_(bin_out_1_),
	.bin_out_2_(bin_out_2_),
	.bin_out_3_(bin_out_3_),
	.bin_out_4_(bin_out_4_),
	
	.data_A_rd_used(data_A_rd_used),
	.data_A_wr_used(data_A_wr_used),
	.data_B_rd_used(data_B_rd_used),
	.data_B_wr_used(data_B_wr_used),
	.result_rd_used(result_rd_used),
	.result_wr_used(result_wr_used)
	
);


 // clock generator
always begin
    #10;
    s_clk = 1'b1;
    #10
    s_clk = 1'b0;
end


always begin
    #7;
    f_clk = 1'b1;
    #7
    f_clk = 1'b0;
end


// main testbench
initial
begin

   $display("Start of test bench!\n");
	 

   @(posedge s_clk) 
	 
	#2
//	start = 0;
//	aclr = 1;
	reset_in = 1;
	 


	@(posedge s_clk); 

	#2
//	aclr = 0;
	reset_in = 0;
 
 
	@(posedge s_clk); 
	
	#2
//	start = 1;
 
 
	@(posedge s_clk); 	
	
	#2
//	start = 0;
 
 
	@(posedge s_clk); 	
	
	
	for(i=0; i<1024; i++)  @(posedge s_clk); 	
	
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end

endmodule
