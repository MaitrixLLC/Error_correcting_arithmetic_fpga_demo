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
// ModSub_2x2 stage 1 circuit.  Uses 3-input adders and dual arithmetic circuit to calculate both choices for ModSub 

module ModSub_2x2 #(parameter DATA_WIDTH=18, parameter MODULUS=177147) 
(
input clk,
input [DATA_WIDTH-1:0] A,
input [DATA_WIDTH-1:0] B,
output sign_out,
output [DATA_WIDTH-1:0] result_A,
output [DATA_WIDTH-1:0] result_B
);

logic [DATA_WIDTH:0] out_reg_A;		// need an extra bit for sign bit
logic [DATA_WIDTH-1:0] out_reg_B;	

assign result_A = out_reg_A [DATA_WIDTH-1:0];
assign sign_out = out_reg_A [DATA_WIDTH:DATA_WIDTH];

assign result_B = out_reg_B;


always @(posedge clk) begin


	out_reg_A <= A - B;
	out_reg_B <= A - B + MODULUS;
	

end


endmodule
