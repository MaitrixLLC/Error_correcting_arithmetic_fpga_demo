`timescale 1 ns/ 1 ns 

module tb_reg_delay();


logic clk;
logic [17:0] reg_in;
logic [17:0] reg_out;

logic [17:0] tb_result;
logic [17:0] tb_result_dly1;

int i, chks;

//	clk, reg_in, reg_out
reg_delay_2L #(.DATA_WIDTH(18)) Dut1 (.clk(clk), .reg_in(reg_in), .reg_out(reg_out)); 
  
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
	 
	 #2 reg_in = 0;

	 
	 @(posedge clk); 
	 
	 #2 reg_in = 1;

		 
	 @(posedge clk); 

	 #2 reg_in = 2;
		 
	 @(posedge clk); 

	 #2 reg_in = 1234;
		 
	 @(posedge clk); 

	 #2 reg_in = 4321;
		 
	 @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 20; i++) begin


	   #2	 reg_in = i;
		
		@(posedge clk); 


    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
