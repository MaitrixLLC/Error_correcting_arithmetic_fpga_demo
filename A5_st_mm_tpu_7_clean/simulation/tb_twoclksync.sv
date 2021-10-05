`timescale 1 ns/ 1 ns 

module tb_twoclksync();


logic a_clk;
logic b_clk;
logic glb_arst;
logic a_trig;
logic b_ena_out;



int i, j, a, b, chks;

//ModSub_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
//ModSub_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 
//ModSub_1R_2C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.clk(clk), .A(OPA), .B(OPB), .result(result)); 

twoclksync Dut1 (.a_clk(a_clk), .b_clk(b_clk), .glb_arst(glb_arst), .a_trig(a_trig), .b_ena_out(b_ena_out));
  
 // s_clk clock generator
always begin
    #10;
    a_clk = 1'b1;
    #10
    a_clk = 1'b0;
end

 // f_clk clock generator
always begin
    #7;
    b_clk = 1'b1;
    #7
    b_clk = 1'b0;
end


// main testbench
initial
begin


	 glb_arst = 0;
	 a_trig = 0;

    @(posedge a_clk);
	 
    for (i = 0; i < 2; i = i + 1) @(posedge a_clk);	// burn off three clocks
	 
	 #2	 
	 
		 glb_arst = 1;
		 a_trig = 0;
		 
	 
	    @(posedge a_clk); 
	 
	 #2	 
	 
		 glb_arst = 0;
	 
	    @(posedge a_clk); 
		 
	 #2	 
	 
		 a_trig = 1;
	 
	    @(posedge a_clk);  

	 #2	 
	 
		 a_trig = 0;
	 
	    @(posedge a_clk);  
		 
		 
		 @(posedge b_clk);
		 
		 
		 @(posedge b_clk);
		 
		 #2

		 
		 @(posedge b_clk);
		 
		 #2

		 
		 @(posedge a_clk);		 
		 
	    for (i = 0; i < 10; i = i + 1) @(posedge a_clk);	// end of simulation
		 

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
