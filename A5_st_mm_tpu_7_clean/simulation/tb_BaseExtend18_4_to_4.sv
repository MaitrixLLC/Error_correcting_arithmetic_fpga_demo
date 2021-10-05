`timescale 1 ns/ 1 ns 

module tb_BaseExtend18_4_to_4();

parameter TEST_MODULUS=131072;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
parameter TEST_FILE_HI="invmult_lut1_1_0.hex";


logic clk;
logic [17:0] r1_in;
logic [17:0] r2_in;
logic [17:0] r3_in;
logic [17:0] r4_in;

logic [17:0] mr1_out;
logic [17:0] mr2_out;
logic [17:0] mr3_out;
logic [17:0] mr4_out;

logic [17:0] r1_out;
logic [17:0] r2_out;
logic [17:0] r3_out;
logic [17:0] r4_out;
logic [17:0] r5_out;
logic [17:0] r6_out;
logic [17:0] r7_out;
logic [17:0] r8_out;

logic [17:0] ov2_out;
logic ov1_out;

logic sign_in;
logic [1:0] sign_out;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;



			 
//InvModMult_2L_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 



BaseExtend18_4_to_4  Dut1
(
	.clk(clk),
	.R1_in_(r1_in),
	.R2_in_(r2_in),
	.R3_in_(r3_in),
	.R4_in_(r4_in),
	.mr_out_1_(mr1_out),
	.mr_out_2_(mr2_out),
	.mr_out_3_(mr3_out),
	.mr_out_4(mr4_out),
	.r1_out_(r1_out),
	.r2_out_(r2_out),
	.r3_out_(r3_out),
	.r4_out_(r4_out),
	.R5_dig_out_(r5_out),
	.R6_dig_out_(r6_out),
	.R7_dig_out_(r7_out),
	.R8_dig_out_(r8_out),
	.sign_out(sign_out)
);



 
 // clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end



int cycle;

// main testbench
initial
begin


    @(posedge clk) i = 0;
    for (i = 0; i < 2; i = i + 1) @(posedge clk);	// burn off three clocks
	 
#2  r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;

    cycle = 0;
 //   sign_in = 0;		// no sign-in for this conversion out, if it was supported could be used for error detection

    @(posedge clk); 

#2  r1_in = 'hd70; 		// RNS value for 8.53973422266
    r2_in = 'h178e8;
    r3_in = 'h8250;
    r4_in = 'h17741;


    @(posedge clk); 

#2  r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;



    @(posedge clk); 

#2  r1_in = 'h123bd; 	// RNS value for -8.53973422266
    r2_in = 'h8718;
    r3_in = 'h231ab;
    r4_in = 'h2889e;


    @(posedge clk); 

#2  r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;


    @(posedge clk); 

#2	 r1_in = 'h1312c; 
    r2_in = 'h1ffff;
    r3_in = 'h4500;
    r4_in = 'h1abfa;


    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

#2	 

	 r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;


//  tb_result = (i * TEST_INVERSE) % TEST_MODULUS;
//	 #2
//	 if(tb_result == result) begin				// I guess delay is important for check of result?
//		chks += 1;
//	 end
//	 else begin
//		$display("error at i=%d\n", i);
//	 end



    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
