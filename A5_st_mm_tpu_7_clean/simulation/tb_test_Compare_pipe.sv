`timescale 1 ns/ 1 ns 

module tb_test_Compare_pipe();

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
logic [17:0] dig0;
logic [17:0] dig1;
logic [17:0] dig2;
logic [17:0] dig3;
logic [17:0] dig4;
logic [17:0] dig5;
logic [17:0] dig6;
logic [17:0] dig7;

logic [17:0] result;
logic [1:0] sign_result;
logic [17:0] tb_result;
logic [1:0] SIGN_IN;
logic [1:0] SIGN_OUT;

int chks, i;


// Instantiate the module here

test_Compare_pipe  Dut1
(
	.clk(clk),
	.mr_dig_0_(dig0),
	.mr_dig_1_(dig1),
	.mr_dig_2_(dig2),
	.mr_dig_3_(dig3),
	.mr_dig_4_(dig4),
	.mr_dig_5_(dig5),
	.mr_dig_6_(dig6),
	.mr_dig_7_(dig7),
	.sign_out(sign_result)
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
	 
#2  dig0 = 0;
    dig1 = 18'd65536;
    dig2 = 18'd88573;			// right version
//    dig2 = 18'd88572;			// test digit
    dig3 = 18'd131055;
    dig4 = 18'd131060;
    dig5 = 18'd131063;			// correct version
//    dig5 = 18'd131064;		// test version
    dig6 = 18'd131066;
    dig7 = 18'd131069;			// correct digit
 //   dig7 = 18'd131068;		// test digit
	 
    @(posedge clk); 

// test is A - B
	 
#2  dig5 = 18'd131062;	
    @(posedge clk); 

//#2  OPB = 18'h2f50;  OPA = 18'hb15d;
#2  // OPA = 18'h12344;  
    dig5 = 18'd131065;	
    @(posedge clk); 

#2  // OPA = 18'h12345; 
 //   dig5 = 18'd131063;	
    @(posedge clk); 

#2  // OPA = 18'h0;  
    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i <250; i++) begin

			#2	 // OPA = i;
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