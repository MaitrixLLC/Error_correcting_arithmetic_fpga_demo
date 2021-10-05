`timescale 1 ns/ 1 ns 

module tb_ModMultAdd_9L_cin();

parameter TEST_MODULUS=177147;				// start by testing first digit
parameter TEST_OPA_MODULUS=131072;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

parameter FILE1="pwrmult_3lut0_d2_2_2.hex";		// where _X_Y.hex is: x=this digit modulus; y=subtracting digit modulus  (this=131072 divided by 78125)
parameter FILE2="pwrmult_3lut1_d2_2_2.hex";
parameter FILE3="pwrmult_3lut2_d2_2_2.hex";
parameter FILE4="partmod_lut_d2_s16_r16.hex";		// where dx: x = this digit (d1=131072)


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic carry_in;
logic [17:0] result;
logic [17:0] tb_result;

int chks, i;

// Instantiate the module here

ModMultAdd_9L_cin #(.MODULUS(177147), .DATA_WIDTH(18), .FILE1(FILE1), .FILE2(FILE2), .FILE3(FILE3), .FILE4(FILE4)) Dut1
(
	.clk(clk),
	.carry_in(carry_in),
	.OP_A_mult(OPA),
	.OP_B_add(OPB),
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
	 
#2  OPB = 0; OPA = 0; carry_in=0;
    @(posedge clk); 

	 // test is A - B
	 
#2  OPA = 18'h1d387; OPB = 18'h12345;  carry_in=0;
    @(posedge clk); 
	 
#2  OPA = 18'h1d387; OPB = 18'h12345;  carry_in=1;
    @(posedge clk); 

//#2  OPB = 18'h2f50;  OPA = 18'hb15d;
#2  OPA = 18'h1d387; OPB = 18'd177123; carry_in=0;  
    @(posedge clk); 
	 
#2  OPA = 18'h1d387; OPB = 18'd177123; carry_in=1;  
    @(posedge clk); 

#2  OPA = 18'h1d387; OPB = 18'h0; carry_in=0;  
    @(posedge clk); 

#2  OPA = 18'h1d387; OPB = 18'h0; carry_in=1;
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
