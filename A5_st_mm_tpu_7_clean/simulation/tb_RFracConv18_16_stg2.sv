`timescale 1 ns/ 1 ns 

module tb_RFracConv18_16_stg2();

parameter TEST_MODULUS=131072;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
parameter TEST_FILE_HI="invmult_lut1_1_0.hex";


logic clk;
logic [17:0] mr_a3_in;
logic [17:0] mr_a4_in;
logic [17:0] mr_a5_in;
logic [17:0] mr_a6_in;

logic [17:0] a3_out;
logic [17:0] a4_out;
logic [17:0] a5_out;
logic [17:0] a6_out;

logic [15:0] b0_out;
logic [15:0] b1_out;
logic [15:0] b2_out;
logic [15:0] b3_out;

logic [17:0] ov2_out;
logic ov1_out;

logic sign_in;
logic rnd_in;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;



			 
//InvModMult_2L_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 

/*
RFracConv18_16_stg2 Dut1 (
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
*/

RFracConv18_16_stg2 Dut1 (
	.clk(clk),
	.sign_in(sign_in),
	.rnd_in(rnd_in),
	.mr_A3_in(mr_a3_in),
	.mr_A4_in(mr_a4_in),
	.mr_A5_in(mr_a5_in),
	.mr_A6_in(mr_a6_in),
	.OV1_out(ov1_out),
	.B0_out(b0_out),
	.B1_out(b1_out),
	.B2_out(b2_out),
	.B3_out(b3_out),
	.OV2_out(ov2_out)
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
	 
#2  mr_a3_in = 0; 
    mr_a4_in = 0;
    mr_a5_in = 0;
    mr_a6_in = 0;
	 sign_in = 0;
	 rnd_in = 0;
	 
    cycle = 0;
 

    @(posedge clk); 

#2  mr_a3_in = 18'h1e585; 		// least significant 
    mr_a4_in = 18'h328c7;
    mr_a5_in = 18'h0;
    mr_a6_in = 18'h0;
	 sign_in = 0;
	 rnd_in = 0;
	 
    @(posedge clk); 

#2  mr_a3_in = 18'h1e585; 		// least significant 
    mr_a4_in = 18'h328c7;
    mr_a5_in = 18'h0;
    mr_a6_in = 18'h0;
	 sign_in = 0;
	 rnd_in = 1;


    @(posedge clk); 

#2  mr_a3_in = 18'hce75; 
    mr_a4_in = 18'hd717;
    mr_a5_in = 18'h3ffe8;
    mr_a6_in = 18'h3ffee;
	 sign_in = 1;
	 rnd_in = 0;

    @(posedge clk); 

#2  mr_a3_in = 0; 
    mr_a4_in = 0;
    mr_a5_in = 0;
    mr_a6_in = 0;
	 sign_in = 0;
	 rnd_in = 0;

    @(posedge clk); 

#2	 mr_a3_in = 0; 
    mr_a4_in = 0;
    mr_a5_in = 0;
    mr_a6_in = 0;
	 sign_in = 0;
	 rnd_in = 0;

    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

#2	 

	 mr_a3_in = 0; 
    mr_a4_in = 0;
    mr_a5_in = 0;
    mr_a6_in = 0;
	 sign_in = 0;
	 rnd_in = 0;

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
