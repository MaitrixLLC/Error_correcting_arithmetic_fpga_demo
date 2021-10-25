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
// This is a 21 bit modular accumulator stage, end stage for TPU modmultaccum module
// the trunc_ena bit gates the high order accumulator bits out from module, or back into summation

module adder_accum21_TFB_C5 (input clk,					 
					  input load_ena, 
					  input trunc_ena,
				     input [18:0] in_a,
					  input [17:0] in_b,
					  output [2:0] trunc_adr,
				     output [20:0] mod_result);
		

logic [20:0] accum;		// 21 bit latched accumulator
wire [20:0] sum;			// 21 bit sum
wire [20:0] accum_fb;	// 21 bit accumulation feedback term

assign trunc_adr = (trunc_ena) ? accum[20:18] : 0;

assign accum_fb = (trunc_ena) ? accum[17:0] : accum[20:0];
//assign accum_fb = (load_ena) ? 0 : ((trunc_ena) ? (accum[17:0]) : (accum[20:0]));

//assign sum = (accum_fb + in_a + in_b);
assign sum = (load_ena) ? 0 : (accum_fb + in_a + in_b);

assign mod_result = accum;
			
		
always @(posedge clk) begin

	
	accum <= sum;

		
end
		
		
endmodule
