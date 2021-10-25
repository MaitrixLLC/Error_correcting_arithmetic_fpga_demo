//
//  Copyright (c) 2012-2021, MaitrixLLC and OIR
//
//  This source code is for demonstration purposes only and remains the property of MaitrixLLC.
//  All rights reserved;
//
//  This source code licensed under the Creative Commons License:
//  -->  Attribution-NonCommercial-NoDerivs;  CC BY-NC-ND
//
//  Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. 
//  You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
//
//  NonCommercial — You may not use the material for commercial purposes.
//
//  NoDerivatives — If you remix, transform, or build upon the material, you may not distribute the modified material.
//
//	 Some or all of this material is protected under the following US patents:  
//  10,992,314, 10,649,737, 10,649,736, 10,599,398, 10,387,122, 9,712,185, 9,395,952, 9,081,608, 9,311,050
//
//  Contact info@maitrix.com for more information about licensing
//

// Error Correction circuit to add correction factor if digit is negative

module ec_digit_correct #(parameter DATA_WIDTH = 18, parameter MODULUS = 78125, parameter CORRECT = 7348) (

	clk,
	sign_in_A, 
	sign_in_B,
	Y_in,					// register pipeline value input (un-corrected digit)
	cor_in,				// correted digit input	
	sign_out_A, 		// send sign information out to bus switch and error detection
	sign_out_B,
	Y_out,
	cor_out
);


input wire clk;
input wire [1:0] sign_in_A;				// positive sign range comparison result input
input wire [1:0] sign_in_B;				// negative sign range comparison result input
input wire [DATA_WIDTH-1:0] Y_in;		// register pipeline input (regular input)
input wire [DATA_WIDTH-1:0] cor_in;		// correction result input

output wire [1:0] sign_out_A;				// positive sign range comparison result output
output wire [1:0] sign_out_B;				// negative sign range comparison result output
output wire [DATA_WIDTH-1:0] Y_out;		// selected digit
output wire [DATA_WIDTH-1:0] cor_out;	// correction result output


// digit registers pipeline registers
reg [DATA_WIDTH-1:0] Y_dig_1_ff;		// first store is staging stage for Y input delay
reg [DATA_WIDTH-1:0] C_dig_1_ff;		// staging for Correction input

reg [DATA_WIDTH-1:0] Y_dig_2_ff;		
reg [DATA_WIDTH-1:0] C_dig_2_ff;

reg [DATA_WIDTH-1:0] Y_dig_3_ff;		
reg [DATA_WIDTH-1:0] C_dig_3_ff;

assign Y_out = Y_dig_3_ff;			// assign output ports to third stage
assign cor_out = C_dig_3_ff;


// sign data pipeline registers
reg [1:0] sign_A_1_ff;			// first stage (porch)
reg [1:0] sign_B_1_ff;

reg [1:0] sign_A_2_ff;
reg [1:0] sign_B_2_ff;

reg [1:0] sign_A_3_ff;			// last stage, output from module
reg [1:0] sign_B_3_ff;

assign sign_out_A = sign_A_3_ff;		// assign output ports to third stage
assign sign_out_B = sign_B_3_ff;

// first to second stage sign determination register
reg sign_ff; 				   // sign flag storage to enable conditional additional (modular)

wire sign_in;
assign sign_in = ((((sign_A_1_ff == 2) && (sign_B_1_ff == 2))) ? 1 : 0);  // comparisons must go same way to correct digit

reg [DATA_WIDTH:0] sum_ff;		// this must be one bit wider !!

wire [DATA_WIDTH:0] mod_sig;
assign mod_sig = MODULUS;


// modular function

function logic [DATA_WIDTH-1:0] mod_func(input logic [DATA_WIDTH:0] A, M);
	
	
begin
	
	if(A >= M) begin		// detect the high order bit of subtraction result
		mod_func = A - M;
	end 
	else begin
		mod_func = A;
	end
	
end
	
endfunction

		
//assign result = mod_add(A, B, MODULUS);	



always @(posedge clk) begin

	sign_A_1_ff <= sign_in_A;
	sign_B_1_ff <= sign_in_B;
	
	sign_A_2_ff <= sign_A_1_ff;
	sign_B_2_ff <= sign_B_1_ff;
	sign_ff <= sign_in;				// sign decision storage for conditional correction
	
	sign_A_3_ff <= sign_A_2_ff;
	sign_B_3_ff <= sign_B_2_ff;
	
	
	Y_dig_1_ff <= Y_in;
	C_dig_1_ff <= cor_in;
	
	Y_dig_2_ff <= Y_dig_1_ff;
	C_dig_2_ff <= C_dig_1_ff;
	sum_ff <= C_dig_1_ff + CORRECT;		// perform the first step of modular add here
	
	
	Y_dig_3_ff <= Y_dig_2_ff;
	
	if(sign_ff == 1) begin			// mod_add logic was spread out over two clocks for faster operation, could go another stage for max
		
		C_dig_3_ff <= mod_func(sum_ff, mod_sig);	
	end 
	else begin
	
		C_dig_3_ff <= C_dig_2_ff;	
	
	end
	
		
end



endmodule
