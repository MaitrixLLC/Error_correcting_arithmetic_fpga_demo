`timescale 1 ns/ 1 ns 

module tb_ModMultAccum();

parameter TEST_MODULUS=131072;
parameter TEST_OPA_MODULUS=TEST_MODULUS;
parameter TEST_OPB_MODULUS=78125;
parameter TEST_INVERSE=83621;

parameter TEST_FILE_LO="invmult_lut0_1_0.hex";
parameter TEST_FILE_HI="invmult_lut1_1_0.hex";

parameter NUM_DIGITS=10;
parameter NUM_PRODS=8;


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic [20:0] result;
logic [20:0] tb_result;

int j, a, b, chks;
longint i, prod_sum;
logic [8:0] addr_lo;
logic [8:0] addr_hi;

logic trunc;
logic clear;

wire hold_lat_ena;



/*

module ModMultAccumTFB_7L_18x21		#(parameter	FILE_S16 = "partmod_lut_d2_s16.hex",
												  parameter	FILE_S21 = "partmod_lut_d2_s21.hex",
												  parameter	FILE_S26 = "partmod_lut_d2_s26.hex",
												  parameter	FILE_S31 = "partmod_lut_d2_s31.hex",
												  parameter	ROM_FILE = "partmodmix_lut_d2.hex")
(
	clk,
	trunc_ena,
	clear_ena,
	IN_A,
	IN_B,
	hold_lat_ena,
	mod_result
);


*/


ModMultAccumTFB_7L_18x21 	#(.FILE_S16("partmod_lut_d9_s16.hex"),
			  	  .FILE_S21("partmod_lut_d9_s21.hex"),
				  .FILE_S26("partmod_lut_d9_s26.hex"),
				  .FILE_S31("partmod_lut_d9_s31.hex"),
				  .ROM_FILE("partmodmix_lut_d9.hex"))


Dut1 

(
	.clk(clk),
	.trunc_ena(trunc),
	.clear_ena(clear),
	.IN_A(OPA),
	.IN_B(OPB),
	.hold_lat_ena(hold_lat_ena),
	.mod_result(result)
);


 
 // clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end

//int tvec[14] = { 'h11234, 'h4321, 'h5555, 'h1aaaa, 'h1212, 'h2323, 'h19999, 'h18888, 'h11111, 'h2222, 'h13333, 'h14444, 'h0, 'h0 };
// following data used for patent write-up


int modulus[NUM_DIGITS] = {65536, 78125, 117649, 177147, 262027, 262049, 262051, 262069, 262079, 262103};

// vector contains digit values for each value that will be multiplied and summed
int mod_opA_1[NUM_PRODS][NUM_DIGITS] = {
{ 'h2a00, 'h7dda, 'h2515, 'h19f29, 'hd57a, 'h3d2a3, 'h75cc, 'h23099, 'h160a2, 'h109ec },    		// 12.3456789 
{ 'h729a, 'h8864, 'h540, 'h1c519, 'h3dc3f, 'h3fa6, 'h102be, 'h3dee1, 'h3ae90, 'hd3fb },    		// -1.27809987
{ 'hd800, 'h1252a, 'h1a335, 'h11107, 'h39b42, 'h30543, 'h12721, 'h5c63, 'h30c9e, 'hc1a1 },    	// 56.78099
{ 'h1, 'h1, 'h530a, 'h15af7, 'h12819, 'h2c639, 'hbd63, 'h26afe, 'h3ca0, 'h3ca71 },    				// -10
{ 'h8000, 'h83d6, 'h18b8d, 'h1f00c, 'h293db, 'h370d2, 'hfae0, 'h2dd74, 'h29c53, 'h14a84 },    	// 98.012
{ 'he800, 'hbe, 'h17ba1, 'h21853, 'h75e1, 'h34f71, 'h27ab6, 'h30041, 'h2d95d, 'he467 },    		// 8.099762
{ 'he38a, 'h879e, 'h18ec9, 'h1eb1c, 'h1fa8f, 'h1d1a9, 'h3fc6d, 'h38030, 'h25875, 'h61b4 },    	// 9.777777777
{ 'h3800, 'h1011, 'h1184a, 'h13044, 'hdcd7, 'h19350, 'h146aa, 'h29321, 'h1120d, 'h17284 }    	// -12.9099876
};

int mod_opB_1[NUM_PRODS][NUM_DIGITS] = {
{ 'h4400, 'hfb2c, 'hb15c, 'hde18, 'h10854, 'h3f776, 'h32511, 'h3c272, 'h3aafc, 'h1e16e },    	// 34.908765
{ 'h6bbd, 'h1236b, 'h1af6e, 'h25841, 'h36504, 'h20b75, 'hd4e5, 'h1e8f4, 'h3d7c0, 'h148fd },    	// 2.034590987
{ 'h9400, 'h1fd4, 'h18093, 'hcd0f, 'h2b7ed, 'h23eb3, 'h2eeb7, 'h12679, 'ha01a, 'h106c4 },    	// 65.9076554
{ 'h6300, 'h11a2c, 'ha1d4, 'hdb90, 'h26d08, 'h18a9f, 'h347a9, 'h2f0ff, 'h3a64b, 'h9289 },    	// 23.90876655
{ 'h5800, 'h49ea, 'h121ca, 'h26c88, 'h19cc7, 'h12bd5, 'h296e3, 'h363b2, 'h2869c, 'h3b990 },    	// 78.0944556
{ 'h5200, 'hf3b, 'hedad, 'h24087, 'h18e0c, 'h1e22d, 'hd15d, 'h32f54, 'h1ce01, 'hce56 },    		// -92.0977623
{ 'h2700, 'hfe11, 'h147ca, 'h57b1, 'h36300, 'h3d335, 'h3b02, 'h3df48, 'h1e68f, 'h2c778 },    	// 12.73455555
{ 'hd466, 'h35c6, 'he30, 'h16bd1, 'h3e807, 'h2dafe, 'h9575, 'h2b51, 'hdb43, 'h1ca70 }    			// 90.98877222
};


int cycle;

// main testbench
initial
begin


    $write("in hexadecimal ");

    for (i=0; i<NUM_DIGITS; i++) begin

		  prod_sum = 0;
		  
		  for(j=0; j<NUM_PRODS; j++) begin
		
			  prod_sum += (mod_opA_1[j][i] * mod_opB_1[j][i]);	
			  prod_sum = prod_sum % modulus[i];	

	     	  end

        $write("%5x ", prod_sum);

	 end

	 $display("\n");

	 $display("\n");



#2  OPA = 0; 
    OPB = 0;
    clear = 1;
    trunc = 0;

    @(posedge clk) i = 0;
    for (i = 0; i < 10; i = i + 1) @(posedge clk);	// burn off ten clocks
	 
#2  OPA = 0; 
    OPB = 0;
    clear = 0;
    trunc = 0;
    cycle = 0;
    for (i = 0; i < 10; i = i + 1) @(posedge clk);	// burn off ten clocks


    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

	#2	 
		if(cycle < 8) begin
		    OPA = mod_opA_1[cycle][9];			
		    OPB = mod_opB_1[cycle][9];
		end

		if (cycle == 0) begin
		     clear = 0;
		     trunc = 1;

		 end

		 if (cycle == 5) begin
		     trunc = 0;
		 end
		 else if (cycle == 7) begin
		     clear = 1;
		     trunc = 0;
		 end 
		 else if (cycle == 8) begin
		     clear = 0;
		 end 

		 @(posedge clk); 
		 
// --------------------------------------------
	
		if(cycle == 8) begin
		    cycle = 0;
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
