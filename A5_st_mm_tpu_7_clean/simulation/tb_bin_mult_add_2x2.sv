`timescale 1 ns/ 1 ns 

module tb_bin_mult_add_2x2();

parameter LO_WIDTH=16;			// test an 16 bit multiply then 18 bit add sequence
parameter HI_WIDTH=18;			// multiplier is 16x18, and summation is 18+(18+16)

logic clk;
logic [LO_WIDTH-1:0] OPA;		// OPA is the multiplicative operand, keep to within 16 bits
logic [HI_WIDTH-1:0] OPB;		// OPB is the summation operand, keep to within 18 bits

logic [LO_WIDTH-1:0] lo_sum;
logic [HI_WIDTH-1:0] hi_sum;		// theory is that the hi sum is only as wide as the largest (18-bit) operand

int j, a, b, chks;
longint i;


//InvModMult_2L_4C Dut1 (.addr(OPA), .clk(clk), .data(result)); 

//input wire	[17:0] IN_A;
//input wire	[17:0] IN_B;
//output wire	[20:0] mod_result;

/*
ModAccum_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (
	.clk(clk),
	.clear(clear),
	.A(OPA),
	.result(result)
);
*/


bin_mult_add_2x2 #(.OPA_WIDTH(LO_WIDTH), .OPB_WIDTH(HI_WIDTH), .OP_CONST(262127)) Dut1 (
			.clk(clk),
			.in_a(OPA),
			.in_b(OPB),
			.low_sum(lo_sum),
			.hi_sum(hi_sum)
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
	 
#2  OPA = 0; 
    OPB = 0;

    @(posedge clk); 

#2  OPA = 12345;			// start an accumulation
    OPB = 0;

    @(posedge clk); 

#2  OPA = 12345;	
    OPB = 18'h3ed34;	// test value 257,332
	 
    @(posedge clk); 

#2  OPA = 254;		
    OPB = 123;

    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 256; i++) begin

#2	OPA = i;			
	OPB = i+1;

	@(posedge clk); 
	
//	#2
//	if(tb_result == result) begin				// I guess delay is important for check of result?
//		chks += 1;
//	end
//	else begin
//		$display("error at i=%d\n", i);
//	end



    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule