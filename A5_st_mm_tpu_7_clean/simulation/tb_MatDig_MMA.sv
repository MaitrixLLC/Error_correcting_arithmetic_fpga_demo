`timescale 1 ns/ 1 ns 

module tb_MatDig_MMA();

parameter TEST_MODULUS=131072;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

//parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
//parameter TEST_FILE_HI="invmult_lut1_1_0.hex";


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic [20:0] readout_in;


logic [20:0] readout_out;
logic [20:0] tb_result;
logic [17:0] OPA_out;
logic [17:0] OPB_out;
logic [20:0] modmult_accum;


longint i;


logic trunc;
logic clear;
logic read_lat;

logic trunc_out;
logic clear_out;


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


matdig_MMA_6L_C5
(
	.clk(clk),
	.trunc_ena_in(trunc),
	.clear_in(clear),
	.read_latch_ena(read_lat),
	.matdigA_data_in(OPA),
	.matdigB_data_in(OPB),
	.readout_shft_in(readout_in),
	.trunc_ena_out(trunc_out),
	.clear_out(clear_out),
	.matdigA_data_out(OPA_out),
	.matdigB_data_out(OPB_out),
	.modmult_accum(modmult_accum),
	.readout_shft_out(readout_out)
);



 
 // clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end

//int tvec[14] = { 'h11234, 'h4321, 'h5555, 'h1aaaa, 'h1212, 'h2323, 'h19999, 'h18888, 'h11111, 'h2222, 'h13333, 'h14444, 'h0, 'h0 };

int tvec[56] = {177100, 176147, 
		147147, 107147, 
		177047, 177137, 
		177146, 177141, 
		127147, 137147, 
		177147, 127147, 
                0, 	0, 
		177100, 176147, 
		147147, 107147, 
		177047, 177137, 
		177146, 177141, 
		127147, 137147, 
		177147, 127147, 
                0, 	0, 
		177100, 176147, 
		147147, 107147, 
		177047, 177137, 
		177146, 177141, 
		127147, 137147, 
		177147, 127147, 
                0, 	0, 
		177100, 176147, 
		147147, 107147, 
		177047, 177137, 
		177146, 177141, 
		127147, 137147, 
		177147, 127147, 
                0, 	0};

int cycle;

// main testbench
initial
begin


    @(posedge clk) i = 0;
    for (i = 0; i < 2; i = i + 1) @(posedge clk);	// burn off three clocks
	 
#2  OPA = 0; 
    OPB = 0;
    clear = 1;
    trunc = 0;
    cycle = 0;
	 read_lat = 0;
    @(posedge clk); 

/*
#2  OPA = 'h11234;	// 19996;			// start a multiply 
    OPB = 'h4321;	// 28001;
    load = 1;
    trunc = 0;
    @(posedge clk); 

#2  OPA = 'h5555;			
    OPB = 'h1aaaa;
    trunc = 0;
    @(posedge clk); 

#2  OPA = 'h1212;			
    OPB = 'h2323;
    trunc = 0;
    @(posedge clk); 
*/
//    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

	#2	 
		
		OPA = tvec[(i%7)*2];			
		OPB = tvec[(i%7)*2+1];
	

		if (cycle == 0) begin
		     clear = 1;
		     trunc = 1;
			  read_lat = 0;
		 end

		 if (cycle == 4) begin
		     clear = 0;
		 end 
		 else if (cycle == 9) begin
		     trunc = 0;
		 end
		 else if (cycle == 11) begin
		     clear = 1;
		 end 
       else if (cycle == 12) begin
		     clear = 0;
		     trunc = 1;
			  read_lat = 1;
		 end

		 @(posedge clk); 
	
		if(cycle == 12) begin
		   cycle = 6;
		end
		else begin
		   cycle += 1;
		end


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
