`timescale 1 ns/ 1 ns 

module tb_TruncAccum();

parameter OP_WIDTH=6;			
parameter ACCUM_WIDTH=4;
parameter TRUNC_WIDTH=4;

logic clk;
logic clear;
logic trunc_ena;
logic load;

logic carry_in;
logic carry_out;
logic [OP_WIDTH-1:0] OPA;

logic [ACCUM_WIDTH+TRUNC_WIDTH-1:0] result;
logic [TRUNC_WIDTH-1:0] trunc_adr;
logic [OP_WIDTH-1:0] tb_result;

int j, a, b, chks;
longint i;
logic [8:0] addr_lo;
logic [8:0] addr_hi;


/*
trunc_accum_wc #(parameter DATA_WIDTH=18, ACCUM_WIDTH=18, parameter TRUNC_WIDTH=3) (input clk,					 
					  input clear, 
					  input trunc_ena,
					  input carry_in,
				     input [DATA_WIDTH-1:0] in_a,
					  output [TRUNC_WIDTH-1:0] trunc_adr,
				     output [ACCUM_WIDTH+TRUNC_WIDTH-1:0] result);
*/

trunc_accum_wc #(.DATA_WIDTH(OP_WIDTH), .ACCUM_WIDTH(ACCUM_WIDTH), .TRUNC_WIDTH(TRUNC_WIDTH)) 

				Dut1 (.clk(clk),
						.clear(clear),
						.trunc_ena(trunc_ena),
						.carry_in(carry_in),
				      .in_a(OPA),
						.trunc_adr(trunc_adr),
						.result(result));


 
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


    @(posedge clk);
#2  OPA = 0; 
	 clear = 1;
	 trunc_ena = 0;		// latch a zero to start
	 carry_in = 0;	 
	 
    for (i = 0; i < 2; i = i + 1) @(posedge clk);	// burn off three clocks
	 
#2  OPA = 1; 
	 clear = 0;
	 trunc_ena = 1;		// latch a zero to start
	 carry_in = 1;
	 
    @(posedge clk); 

#2  OPA = 1;			// start an accumulation
	 carry_in = 1;
	 clear = 0;

    @(posedge clk); 

#2  OPA = 1;		
	 carry_in = 0;
    clear = 0;
	 
    @(posedge clk); 

#2  OPA = 23;			
    clear = 0;
	 
    @(posedge clk); 

    chks = 0;
	 
    for (i = 10; i < 32; i++) begin

			#2	 OPA = i;			

			if (i == 14) begin
				 trunc_ena = 0;
			end
				 
			if (i == 16) begin
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
