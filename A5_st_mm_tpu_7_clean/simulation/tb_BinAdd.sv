`timescale 1 ns/ 1 ns 

module tb_BinAdd();

parameter OP_WIDTH=7;			// test a 7 bit binary accumulator

logic clk;
logic clear;
logic carry_in;
logic carry_out;
logic [OP_WIDTH-1:0] OPA;
logic [OP_WIDTH-1:0] OPB;

logic [OP_WIDTH-1:0] result;
logic [OP_WIDTH-1:0] tb_result;

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

/*
ModAccum_1R_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (
	.clk(clk),
	.clear(clear),
	.A(OPA),
	.result(result)
);
*/

bin_add_wc #(.OP_WIDTH(7)) 

				Dut1 (.clk(clk),
				      .in_a(OPA),
						.in_b(OPB),
						.carry_in(carry_in),
						.carry_out(carry_out),
						.reg_sum(result));


 
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
	 carry_in = 0;

    @(posedge clk); 

#2  OPA = 1;			// start an accumulation
	 OPB = 0;
	 carry_in = 1;
	 clear = 0;

    @(posedge clk); 

#2  OPA = 1;	
    OPB = 1;	
	 carry_in = 1;
    clear = 0;
	 
    @(posedge clk); 

#2  OPA = 254;		
	 OPB = 1;
	 carry_in = 1;
 
	 
    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 256; i++) begin

			#2	 OPA = i;			
			OPB = i+1;

			if(i == 2) carry_in = 0;

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
