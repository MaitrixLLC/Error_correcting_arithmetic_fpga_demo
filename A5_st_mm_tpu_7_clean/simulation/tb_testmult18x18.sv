`timescale 1 ns/ 100 ps 

module tb_testmult18x18();


logic clk;
logic clk_ena;
logic load_ena;
logic [31:0] load_data1;
logic [31:0] load_data2;
logic [35:0] result;
logic [35:0] tb_result;

int i, j, a, b, chks;


testmult18x18 dut1 (.clk(clk), .clk_ena(clk_ena), .load_ena(load_ena), .load_data1(load_data1), .load_data2(load_data2), .data_out(result));

 
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
	 
#2  load_data1 = 0;
    load_data2 = 0;
	 load_ena = 0;
	 clk_ena = 0;
	 
    @(posedge clk); 
	 
	 load_ena = 1;
#2  load_data1 = 32'h1234;
    load_data2 = 32'h5678;
		 
    @(posedge clk); 

	 load_ena = 0;
	 clk_ena = 1;
#2  
		 
    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

		@(posedge clk); 
 
    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
