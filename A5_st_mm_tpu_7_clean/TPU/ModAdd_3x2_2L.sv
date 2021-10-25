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
// ModAdd_3x2 stage 1 circuit.  Uses 3-input adders and dual arithmetic circuit to calculate both choices for ModSub 
// This version inserts a register storage after the 3-in adder, and before the LUT to provide more set-up time for LUT.


module ModAdd_3x2_2L #(parameter DATA_WIDTH=18, FILE="partmod_lut_d2_s16_r16.hex")
                (input clk,
				     input [DATA_WIDTH-1:0] in_a,
					  input [DATA_WIDTH-1:0] in_b, 
					  input [DATA_WIDTH-1:0] in_c,
					  output [DATA_WIDTH-1:0] lut_sum,
					  output [DATA_WIDTH-3:0] trunc_sum);
		
logic [DATA_WIDTH-3:0] r;		// 16 bit latched result
		
logic [DATA_WIDTH+1:0] sum;	// 20 bit sum latch
wire [3:0] adr;					// 4 bit value	
			
assign trunc_sum = r;		
assign adr = sum[DATA_WIDTH+1:DATA_WIDTH-2];		// should be upper four bits

RomLUT_mlab #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(4), .FILE(FILE)) rom1 (.addr(adr), .clk(clk), .data(lut_sum));
			

always @(posedge clk) begin

	
	r <= sum;							// latch to latch delay
	
	sum <= in_a + in_b + in_c;		// 3-in adder to latch
		
end
		
		
endmodule
