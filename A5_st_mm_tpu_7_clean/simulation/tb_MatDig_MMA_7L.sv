`timescale 1 ns/ 1 ns 

module tb_MatDig_MMA_7L();


logic clk;
logic [17:0] OPA;
logic [17:0] OPB;
logic [20:0] result;
logic [20:0] tb_result;

logic trunc;
logic clear;
logic read_lat;


longint i;
int chks;

parameter NUM_PROD=4;


matdig_MMA_7L	 #(.FILE_S16("partmod_lut_d2_s16.hex"),
		.FILE_S21("partmod_lut_d2_s21.hex"),
		.FILE_S26("partmod_lut_d2_s26.hex"),
		.FILE_S31("partmod_lut_d2_s31.hex"),
		.ROM_FILE("partmodmix_lut_d2.hex"))
Dut1 (
	.clk(clk),
	.trunc_ena_in(trunc),
	.clear_in(clear),
	.read_latch_ena(read_lat),
	.matdigA_data_in(OPA),
	.matdigB_data_in(OPB),
	.readout_shft_in(0),
	.trunc_ena_out(),
	.clear_out(),
	.matdigA_data_out(),
	.matdigB_data_out(),
	.readout_shft_out(result)
);


 
 // clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end

int tvec[14] = { 'h11234, 'h4321, 'h5555, 'h1aaaa, 'h1212, 'h2323, 'h19999, 'h18888, 'h11111, 'h2222, 'h13333, 'h14444, 'h0, 'h0 };
// following data used for patent write-up
int tvec1[14] = {18'h1, 18'h1, 
		18'h2, 18'h2, 
		18'h3, 18'h3, 
		18'h4, 18'h4, 
		18'h5, 18'h5, 
		18'h6, 18'h6,
		18'h7, 18'h7};

int tvec2[16] = {18'h1, 18'h1, 
		18'h2, 18'h2, 
		18'h3, 18'h3, 
		18'h4, 18'h4, 
		18'h5, 18'h5, 
		18'h6, 18'h6,
		18'h7, 18'h7,
		18'h8, 18'h8};

int tvec3[16] = {18'd177146, 18'd177146, 
		 18'd177146, 18'd177146, 
		 18'd177146, 18'd177146, 
		 18'd177146, 18'd177146, 
		 18'd177146, 18'd177146, 
		 18'd177146, 18'd177146,
		 18'd177146, 18'd177146,
		 18'd177146, 18'd177146};

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
    chks = 0;
	 
    for (i = 0; i < 100; i++) begin

	#2	 
		
//		OPA = tvec[(i%7)*2];			
//		OPB = tvec[(i%7)*2+1];
	

		if (cycle == 0) begin
		     clear = 0;
		     trunc = 1;
		     read_lat = 0;
		 end

		 if (cycle == NUM_PROD-2) begin
		     trunc = 0;
		     read_lat = 0;
		 end
		 else if (cycle == NUM_PROD-1) begin
		     clear = 0;
		     read_lat = 0;
		 end 
       		 else if (cycle == NUM_PROD) begin
		     clear = 1;
		     trunc = 0;
		     read_lat = 1;
		 end

		if(cycle < NUM_PROD) begin
		     OPA = tvec1[(cycle)*2];			
		     OPB = tvec1[(cycle)*2+1];
		end
		else begin
		     OPA = 0;			
		     OPB = 0;
		end

		 @(posedge clk); 
	
		if(cycle == NUM_PROD) begin
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