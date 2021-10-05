`timescale 1 ns/ 1 ns 

module tb_RFracConv18_16_dval();

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

logic [15:0] d0_out;
logic [15:0] d1_out;
logic [15:0] d2_out;
logic [15:0] d3_out;

logic [17:0] ov2_out;
logic ov1_out;

logic sign_in;
logic sign_out;

logic aclr;
logic datavalid_in;
logic datavalid_out;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;


/*

module RFracConv18_16(
	clk,
	RNS_D1_in,
	RNS_D2_in,
	RNS_D3_in,
	RNS_D4_in,
	RNS_D5_in,
	RNS_D6_in,
	ov1_out,
	sign_out,
	b0_out,
	b1_out,
	b2_out,
	b3_out,
	ov2_out
);

*/


			 
//InvModMult_2L_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 


RFracConv18_16_dval Dut1 (
	.clk(clk),
	.aclr(aclr),
	.datavalid_in(datavalid_in),
	.RNS_D1_in(r1_in),
	.RNS_D2_in(r2_in),
	.RNS_D3_in(r3_in),
	.RNS_D4_in(r4_in),
	.RNS_D5_in(r5_in),
	.RNS_D6_in(r6_in),
	.datavalid_out(datavalid_out),
	.ov1_out(ov1_out),
	.sign_out(sign_out),
	.b0_out(d0_out),
	.b1_out(d1_out),
	.b2_out(d2_out),
	.b3_out(d3_out),
	.ov2_out(ov2_out)
	
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
    for (i = 0; i < 3; i = i + 1) begin
	 
		datavalid_in = 0;
		if(i == 1) aclr = 1;
		if(i == 2) aclr = 0;
	 
		@(posedge clk);	// burn off three clocks
		
	 end
	 
#2  r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;
	 r5_in = 0;
	 r6_in = 0;
    cycle = 0;
 //   sign_in = 0;		// no sign-in for this conversion out, if it was supported could be used for error detection

    @(posedge clk); 

	 
#2  datavalid_in = 1;
	 r1_in = 'he000; 		// -12.345
    r2_in = 'h186a;
    r3_in = 'hd57e;
    r4_in = 'hf36;
	 r5_in = 'h3a77;
	 r6_in = 'h13bd1;

    @(posedge clk); 

#2  r1_in = 'hb800; 		// 3.14159
    r2_in = 'h49ed;
    r3_in = 'h15481;
    r4_in = 'h2996b;
	 r5_in = 'h24f52;
	 r6_in = 'h1b21b;


    @(posedge clk); 

#2  r1_in = 'h2000; 		// RNS value for 12.345
    r2_in = 'h118c3;
    r3_in = 'hf613;
    r4_in = 'h2a4c5;
	 r5_in = 'h3c514;
	 r6_in = 'h2c3d0;

    @(posedge clk); 

#2  r1_in = 'h8000; 		// 0.5
    r2_in = 'h0;
    r3_in = 'h12691;
    r4_in = 'hbe3f;
	 r5_in = 'h3f0bd;
	 r6_in = 'ha937;

    @(posedge clk); 

#2	 r1_in = 'h0; 			// RNS value for 100.0
    r2_in = 'h0;
    r3_in = 'h58c8;
    r4_in = 'h2aa46;
	 r5_in = 'h6db1;
	 r6_in = 'h3f37;

    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 200; i++) begin

#2	 
	 datavalid_in = 0;
	 r1_in = 0; 
    r2_in = 0;
    r3_in = 0;
    r4_in = 0;
	 r5_in = 0;
	 r6_in = 0;

    @(posedge clk); 

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
