`timescale 1 ns/ 1 ns 

module tb_ModCompare_9L();

parameter TEST_MODULUS=177147;				// start by testing first digit
parameter TEST_OPA_MODULUS=131072;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;
parameter TEST_VALUE=88573;

parameter FILE1="pwrmult_3lut0_d2_2_2.hex";		// where _X_Y.hex is: x=this digit modulus; y=subtracting digit modulus  (this=131072 divided by 78125)
parameter FILE2="pwrmult_3lut1_d2_2_2.hex";
parameter FILE3="pwrmult_3lut2_d2_2_2.hex";
parameter FILE4="partmod_lut_d2_s16_r16.hex";		// where dx: x = this digit (d1=131072)


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic [17:0] result;
logic [17:0] tb_result;
logic [1:0] SIGN_IN;
logic [1:0] SIGN_OUT;

int chks, i;


// Instantiate the module here

ModCompare_9L_mlab Dut1
(
	.clk(clk),
	.comp_value(OPB),
	.in_A_0_(OPA),
	.sign_in(SIGN_IN),
	.sign_result(SIGN_OUT)
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
	 
#2  OPA = 0; OPB = 18'h12345; SIGN_IN = 2'b01;  // set sign in to equal
    @(posedge clk); 

// test is A - B
	 
#2  OPA = 18'h12346;  
    @(posedge clk); 

//#2  OPB = 18'h2f50;  OPA = 18'hb15d;
#2  OPA = 18'h12344;  
    @(posedge clk); 

#2  OPA = 18'h12345; 
    @(posedge clk); 

#2  OPA = 18'h0;  
    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i <25; i++) begin

			#2	 OPA = i;
			@(posedge clk); 
			
//			tb_result = (i * TEST_INVERSE) % TEST_MODULUS;
			
//			#2
//			if(tb_result == result) begin				// I guess delay is important for check of result?

//				chks += 1;
//			end
//			else begin
//				$display("error at i=%d\n", i);
//			end


    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
