`timescale 1 ns/ 1 ns 

module tb_ModMultC18();

parameter TEST_MODULUS=177147;

parameter TEST_FILE1="multc_3lut0_d2_rf.hex";
parameter TEST_FILE2="multc_3lut1_d2_rf.hex";
parameter TEST_FILE3="multc_3lut2_d2_rf.hex";
parameter TEST_FILE4="partmod_lut_d2_s16_r16.hex";


logic clk;
logic [17:0] OPA;
logic [17:0] result;


int j, chks;
longint i;


//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
 
//InvModMult_LB_18 #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 
			 
//InvModMult_2L_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 

//InvModMult_2L_4C Dut1 (.addr(OPA), .clk(clk), .data(result)); 

//input wire	[17:0] IN_A;
//input wire	[17:0] IN_B;
//output wire	[20:0] mod_result;


ModMultC18_7L #(.MODULUS(TEST_MODULUS), .FILE1(TEST_FILE1), .FILE2(TEST_FILE2), .FILE3(TEST_FILE3), .FILE4(TEST_FILE4)) Dut1 
(
	.clk(clk),
	.OP_A_mult(OPA),
	.result(result)

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
	 
#2  OPA = 0; 

    @(posedge clk); 


#2  OPA = 'h6a88;			// 19996;			// start a multiply 

    @(posedge clk); 
	 

#2  OPA = 'h3ffff;			

    @(posedge clk); 
/*
#2  OPA = 'h1212;			
    OPB = 'h2323;
    trunc = 0;
    @(posedge clk); 
*/
    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

#2	 
	OPA = 'h6a88;			// 19996;			// start a multiply 


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
