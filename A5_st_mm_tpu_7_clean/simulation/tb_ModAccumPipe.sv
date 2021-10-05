`timescale 1 ns/ 1 ns 

module tb_ModAccumPipe();

parameter TEST_MODULUS=177147;

parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
parameter TEST_FILE_HI="invmult_lut1_1_0.hex";

parameter NUM_TEST_PROD=24;

logic clk;
logic clear;
logic clear1;
logic clear2;
logic clear3;
logic trunc_ena;

logic [20:0] OPA;			// Need a 21 bit operand
//logic [17:0] OPB;
logic [21:0] result;			// output of the modular accumulator
logic [21:0] tb_result;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;

logic [63:0] test_vec1[0:NUM_TEST_PROD*2-1] = {177100, 176147, 147147, 107147, 177047, 177137, 177146, 177141, 127147, 137147, 177147, 127147, 
                       177100, 176147, 147147, 107147, 177047, 177137, 177146, 177141, 127147, 137147, 177147, 127147,
			177100, 176147, 147147, 107147, 177047, 177137, 177146, 177141, 127147, 137147, 177147, 127147,
			177100, 176147, 147147, 107147, 177047, 177137, 177146, 177141, 127147, 137147, 177147, 127147 };		// make an array

//int test_vec2[47:0] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};

/*
ModAccum_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (
	.clk(clk),
	.clear(clear),
	.A(OPA),
	.result(result)
);
*/

ModAccumPipe_3x7 Dut1 (
	.clear_1(clear1),
	.clear_2(clear2),
	.clear_3(clear3),
	.clk(clk),
	.trunc_ena(trunc_ena),
	.digit_in(OPA),
	.reg4_co(),
	.acc1_co(),
	.reg7_co(),
	.acc2_co(),
	.acc1_(),
	.acc2_(),
	.accum_(result),
	.accum_dig1_(),
	.accum_dig2_(),
	.accum_dig3_(),
	.accum_fb_(),
	.addr1_(),
	.addr2_(),
	.addr3_(),
	.dig_in_1(),
	.dig_in_2(),
	.dig_in_3(),
	.dig_in_4(),
	.lut1_(),
	.lut2_(),
	.lut3_(),
	.reg10_(),
	.reg1_(),
	.reg2_(),
	.reg3_(),
	.reg4_(),
	.reg5_(),
	.reg6_(),
	.reg7_(),
	.reg8_(),
	.reg9_(),
	.rom_adr_()
);

/*
input wire	clear_1;
input wire	clear_2;
input wire	clear_3;
input wire	clk;
input wire	trunc_ena;
input wire	[20:0] digit_in;
output wire	reg4_co;
output wire	acc1_co;
output wire	reg7_co;
output wire	acc2_co;
output wire	[6:0] acc1_;
output wire	[6:0] acc2_;
output wire	[21:0] accum_;
output wire	[6:0] accum_dig1_;
output wire	[6:0] accum_dig2_;
output wire	[7:0] accum_dig3_;
output wire	[3:0] accum_fb_;
output wire	[5:0] addr1_;
output wire	[5:0] addr2_;
output wire	[5:0] addr3_;
output wire	[6:0] dig_in_1;
output wire	[6:0] dig_in_2;
output wire	[3:0] dig_in_3;
output wire	[1:0] dig_in_4;
output wire	[6:0] lut1_;
output wire	[6:0] lut2_;
output wire	[3:0] lut3_;
output wire	[6:0] reg10_;
output wire	[6:0] reg1_;
output wire	[6:0] reg2_;
output wire	[4:0] reg3_;
output wire	[6:0] reg4_;
output wire	[6:0] reg5_;
output wire	[4:0] reg6_;
output wire	[6:0] reg7_;
output wire	[4:0] reg8_;
output wire	[6:0] reg9_;
output wire	[5:0] rom_adr_;
*/

 
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

#2  OPA = 0; 
	 clear1 = 1;
	 clear2 = 1;
	 clear3 = 1;

    @(posedge clk) i = 0;
    for (i = 0; i < 5; i = i + 1) @(posedge clk);	// burn off five clocks, clear the pipeline
	 
#2  OPA = 0; 
	i = 0;
	 clear1 = 0;
	 clear2 = 0;
	 clear3 = 0;
	 trunc_ena = 1;
    @(posedge clk); 



#2  //OPA = test_vec1[0];  // 20'h55555;			// start an accumulation
    OPA = test_vec1[0];
    @(posedge clk); 

/*
#2  OPA = 20'haaaaa;			
    @(posedge clk); 

#2  OPA = 20'h33333;			
	 
    @(posedge clk); 
*/

    chks = 0;
	 
    for (i = 0; i < NUM_TEST_PROD*2; i++) begin

			#2	 OPA = test_vec1[i];			
			
			if(i == NUM_TEST_PROD*2-5) begin
				trunc_ena = 0;
			end
			

			if (i == NUM_TEST_PROD*2) begin
				 clear1 = 1;
			end
			else begin
			
				clear3 = clear2;
				clear2 = clear1;
				clear1 = 0;
			end
			

			@(posedge clk); 
	
// tb_result = (i * TEST_INVERSE) % TEST_MODULUS;
	

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
