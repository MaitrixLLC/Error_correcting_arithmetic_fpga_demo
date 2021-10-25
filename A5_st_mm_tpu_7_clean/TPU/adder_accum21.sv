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

// load_ena is used to clear in the fastest version, but an dead data slot in the pipeline is required

module adder_accum21 (input clk,
				     input [19:0] in_a,
					  input trunc_ena,
					  input load_ena,
					  output [2:0] trunc_adr,
				     output [20:0] mod_result);
		

logic [20:0] accum;	// 21 bit latched accumulator, hello
wire [20:0] sum;		// 21 bit sum
wire [20:0] accum_fb;	// 21 bit accumulation feedback term
wire [2:0] accum_fb_hi;

assign trunc_adr = (trunc_ena) ? accum[20:18] : 0;
assign accum_fb_hi = (trunc_ena) ? (0) : (accum[20:18]);

assign accum_fb = {accum_fb_hi, accum[17:0]};
//assign accum_fb = (load_ena) ? 0 : {accum_fb_hi, accum[17:0]};		// this is second fastest (265 Mhz), i.e., clearing fb path

//assign sum = (load_ena) ? in_a : (accum_fb + in_a);		// slow, 245 Mhz
assign sum = (load_ena) ? 0 : (accum_fb + in_a);		// for whatever reason, clearing this way is fast 295 Mhz
//assign sum = accum_fb + in_a;

assign mod_result = accum;
			
// async clear was slow for some reason (250 Mhz)
		
always @(posedge clk) begin


		accum <= sum;
	
end
		
		
endmodule


// version which uses synchronous load, (260 Mhz, c7)
module adder_accum21_b (input clk,
				     input [19:0] in_a,
					  input trunc_ena,
					  input load_ena,
					  output [2:0] trunc_adr,
				     output [20:0] mod_result);
		

logic [20:0] accum;	// 21 bit latched accumulator, hello
wire [20:0] sum;		// 21 bit sum
wire [20:0] accum_fb;	// 21 bit accumulation feedback term
wire [2:0] accum_fb_hi;

assign trunc_adr = (trunc_ena) ? accum[20:18] : 0;
assign accum_fb_hi = (trunc_ena) ? (0) : (accum[20:18]);

//assign accum_fb = {accum_fb_hi, accum[17:0]};
assign accum_fb = (load_ena) ? 0 : {accum_fb_hi, accum[17:0]};

//assign sum = (load_ena) ? in_a : (accum_fb + in_a);
//assign sum = (load_ena) ? 0 : (accum_fb + in_a);			// this version of clearing is fast, about 290-300 Mhz
assign sum = accum_fb + in_a;

assign mod_result = accum;
			
		
always @(posedge clk) begin

	accum <= sum;
	
end
		
		
endmodule


