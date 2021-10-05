`timescale 1 ns/ 1 ns 

module tb_SubInvModMult();

parameter TEST_MODULUS=131072;
parameter TEST_OPA_MODULUS=131072;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

parameter FILE1="invmult_3lut0_1_0.hex";		// where _X_Y.hex is: x=this digit modulus; y=subtracting digit modulus  (this=131072 divided by 78125)
parameter FILE2="invmult_3lut1_1_0.hex";
parameter FILE3="invmult_3lut2_1_0.hex";
parameter FILE4="partmod_lut_d1_s16_r16.hex";		// where dx: x = this digit (d1=131072)


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic [17:0] result;
logic [17:0] tb_result;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;

//InvMultLut_0 #(.DATA_WIDTH(TEST_DATA_WIDTH), .ADDR_WIDTH(TEST_ADDR_WIDTH), .FILE(TEST_FILE)) lut1 (.addr(test_addr), .clk(clk), .data(read_data));
//ModAdd_1R #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 (.A(OPA), .B(OPB), .result(result)); 
 
//InvModMult_LB_18 #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 
			 
//InvModMult_2L_1C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE_LO(TEST_FILE_LO), .FILE_HI(TEST_FILE_HI))  Dut1
//	       (.addr(OPA), .clk(clk), .data(result)); 

//SubInvMult_8L Dut1 (.addr(OPA), .clk(clk), .data(result)); 
SubInvMult_8L_mlab #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS), .FILE1(FILE1), .FILE2(FILE2), .FILE3(FILE3), .FILE4(FILE4)) Dut1
(.clk(clk), .dataA_in(OPA), .dataB_in(OPB), .mod_data_out(result));
 
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
	 
#2  OPB = 0; OPA = 0;
    @(posedge clk); 

	 // test is A - B
	 
#2  OPB = 18'h2f50;  OPA = 18'hb15d;
    @(posedge clk); 

//#2  OPB = 18'h2f50;  OPA = 18'hb15d;
#2  OPB = 18'h6061;  OPA = 18'h240cb;
    @(posedge clk); 

#2  OPB = 18'h2f50;  OPA = 18'hb15d;
    @(posedge clk); 

#2  OPB = 18'h2f50;  OPA = 18'hb15d;
    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i <25; i++) begin

			#2	 OPA = i;
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