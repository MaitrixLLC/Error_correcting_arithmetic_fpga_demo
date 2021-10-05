`timescale 1 ns/ 1 ns 

module tb_ModAccum();

parameter TEST_MODULUS=177147;

parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
parameter TEST_FILE_HI="invmult_lut1_1_0.hex";


logic clk;
logic clear;
logic [17:0] OPA;
logic [17:0] OPB;
logic [17:0] result;
logic [17:0] tb_result;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;

logic trunc;
logic load;


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


ModAccum_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (
	.clk(clk),
	.clear(clear),
	.A(OPA),
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
	 
#2  OPA = 0; 
	 clear = 1;

    @(posedge clk); 

#2  OPA = 19996;			// start an accumulation
	 clear = 0;

    @(posedge clk); 

#2  OPA = 19996;			
    clear = 0;
	 
    @(posedge clk); 

#2  OPA = 19996;			
    clear = 0;
	 
    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

			#2	 OPA = 19996;			

			if (i == 2) begin
				 clear = 1;
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
