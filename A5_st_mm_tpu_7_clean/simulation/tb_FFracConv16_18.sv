`timescale 1 ns/ 1 ns 

module tb_FFracConv16_18();

parameter TEST_MODULUS=131072;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
parameter TEST_FILE_HI="invmult_lut1_1_0.hex";


logic clk;
logic [15:0] OPA;
logic [15:0] OPB;
logic [15:0] OPC;
logic [15:0] OPD;
logic [15:0] first;
logic [15:0] reg10;
logic [15:0] reg15;
logic [15:0] second;
logic [17:0] r1_out;
logic [17:0] r2_out;
logic [17:0] r3_out;
logic [17:0] r4_out;
logic [17:0] rns_whole_R3;
logic [17:0] rns_whole_R4;
logic sign_in;
logic sign_out;

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

//InvModMult_2L_4C Dut1 (.addr(OPA), .clk(clk), .data(result)); 

/*

module FFracConv4x16_10x18(
	clk,
	sign_in,
	data_valid_in,
	R1_in,
	R2_in,
	R3_in,
	R4_in,
	sign_out,
	datavalid_out,
	rns_R10_out,
	rns_R1_out,
	rns_R2_out,
	rns_R3_out,
	rns_R4_out,
	rns_R5_out,
	rns_R6_out,
	rns_R7_out,
	rns_R8_out,
	rns_R9_out
);


*/


FFracConv16_18 Dut1 (
	.clk(clk),
	.R1_in(OPA),
	.R2_in(OPB),
	.R3_in(OPC),
	.R4_in(OPD),
	.sign_in(sign_in),
	.rns_R1_out(r1_out),
	.rns_R2_out(r2_out),
	.rns_R3_out(r3_out),
	.rns_R4_out(r4_out),
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
	 
#2  OPA = 0; 
    OPB = 0;
    OPC = 0;
    OPD = 0;
    cycle = 0;
    sign_in = 0;

    @(posedge clk); 
/*
#2  OPA = 'h5555;			// 1234.33333333333;	conversion test value
    OPB = 'h5555;			
    OPC = 'h04d2;
    OPD = 'h0000;
    sign_in = 0;

    @(posedge clk); 

#2  OPA = 'h5555;			// -1234.33333333333;	conversion test value
    OPB = 'h5555;			
    OPC = 'h04d2;
    OPD = 'h0000;
    sign_in = 1;

    @(posedge clk); 
*/
#2  OPA = 'hAAAA;			// -1234.66666666666;	conversion test value
    OPB = 'hAAAA;			
    OPC = 'h04d2;
    OPD = 'h0000;
    sign_in = 0;

    @(posedge clk); 

#2  OPA = 'hAAAA;			// 1234.666666666666;	conversion test value
    OPB = 'hAAAA;			
    OPC = 'h04d2;
    OPD = 'h0000;
    sign_in = 1;

    @(posedge clk); 

    OPA = 'hFFFF;			// 1234.666666666666;	conversion test value
    OPB = 'hFFFF;			
    OPC = 'h04d2;
    OPD = 'h0000;
    sign_in = 0;

    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

#2	 
	 OPA = 'h6a88;			// 19996;			// start a multiply 
	 OPB = 'h243f;			// 28001;
	 

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