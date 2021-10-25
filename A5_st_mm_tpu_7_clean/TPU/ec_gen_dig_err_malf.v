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
// 2 sign data input, malfunction detected in digit recovery logic (malf error) with registered output

module ec_gen_dig_err_malf (

	clk, sign_in_A, sign_in_B, Y

);

input clk;
input wire [1:0] sign_in_A;
input wire [1:0] sign_in_B;

output wire Y;

reg Y_ff;

assign Y = Y_ff;

wire malfunction_err;
assign malfunction_err = ((((sign_in_A != 0) && (sign_in_A != 2)) || ((sign_in_B != 0) && (sign_in_B != 2))) ? 1 : 0);		// when the sign codes are invalid, a malfunction is detected, or overflow value


always @(posedge clk) begin

	Y_ff <= malfunction_err;


end


endmodule	



