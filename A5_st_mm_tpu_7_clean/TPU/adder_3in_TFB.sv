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

// This is a 3-input adder primitive with latched result, continuously clocked
// for TFB modular accumulator applications, Cyclone-V (C5) and above

// THIS CIRCUIT CAN BE FASTER ... LUT ADDRESS MUST WAIT FOR FULL PROPAGATION OF 3-INPUT ADDER

// was a single clock module, now testing to see if a two stage modulue is faster, ebo

module adder_3in_TFB #(parameter ROM_FILE="data2.hex") 
                (input clk,
				     input [19:0] in_a,
					  input [17:0] in_b, 
					  input [17:0] in_c,
					  input [2:0] lut_adr,
				     output [18:0] trunc_sum,
					  output [17:0] lut_sum);
		

logic [18:0] r;		// 19 bit latched
//wire [20:0] sum;		// 21 bit sum		// old way
logic [20:0] sum;
wire [4:0] adr;

assign trunc_sum = r;
//assign sum = in_a + in_b + in_c;			// old way
assign adr = {lut_adr, sum[20:19]};

RomLUT_mlab #(.DATA_WIDTH(18), .ADDR_WIDTH(5), .FILE(ROM_FILE))  
	     rom1 (.addr(adr), .clk(clk), .data(lut_sum));
			

		
always @(posedge clk) begin

	
	r <= sum;
	sum <= in_a + in_b + in_c;		// added this new stage

		
end
		
		
endmodule
