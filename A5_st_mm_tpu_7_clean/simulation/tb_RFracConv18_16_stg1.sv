`timescale 1 ns/ 1 ns 

module tb_RFracConv18_16_stg1();

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
logic [17:0] r5_in;
logic [17:0] r6_in;
logic [17:0] a3_out;
logic [17:0] a4_out;
logic [17:0] a5_out;
logic [17:0] a6_out;

logic [15:0] d1_out;
logic [15:0] d2_out;
logic [15:0] d3_out;
logic [15:0] d4_out;

logic sign_in;
logic sign_out;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;



			 
//InvModMult_2L_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 


RFracConv18_16_stg1 Dut1 (
	.clk(clk),
	.RNS_D1_in(r1_in),
	.RNS_D2_in(r2_in),
	.RNS_D3_in(r3_in),
	.RNS_D4_in(r4_in),
	.RNS_D5_in(r5_in),
	.RNS_D6_in(r6_in),
	.mr_A3_out(a3_out),
	.mr_A4_out(a4_out),
	.mr_A5_out(a5_out),
	.mr_A6_out(a6_out)	
	
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
	 r5_in = 0;
	 r6_in = 0;
    cycle = 0;
 //   sign_in = 0;		// no sign-in for this conversion out, if it was supported could be used for error detection

    @(posedge clk); 

#2  r1_in = 'hd70; 		// RNS value for 8.53973422266
    r2_in = 'h178e8;
    r3_in = 'h8250;
    r4_in = 'h17741;
	 r5_in = 'h28ddc;
	 r6_in = 'h25d;

    @(posedge clk); 

#2  r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;
	 r5_in = 0;
	 r6_in = 0;


    @(posedge clk); 

#2  r1_in = 'h123bd; 
    r2_in = 'h8718;
    r3_in = 'h231ab;
    r4_in = 'h2889e;
	 r5_in = 'h1720d;
	 r6_in = 'h3fd92;

    @(posedge clk); 

#2  r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;
	 r5_in = 0;
	 r6_in = 0;

    @(posedge clk); 

#2	 r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;
	 r5_in = 0;
	 r6_in = 0;

    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

#2	 

	 r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;
	 r5_in = 0;
	 r6_in = 0;

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
