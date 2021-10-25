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
// latched sign flag comparison logic, 1 delay stage
// 01 -> equal sign, 10 -> greater than sign, 00 -> less than sign, 11 --> not defined

module compare_logic (input clk, input [1:0] prior_sign, input [1:0] new_sign, output [1:0] result);

logic [1:0] sign_result;	

wire [1:0] sign_data;
		
assign sign_data = (new_sign == 2'b01) ? prior_sign : new_sign;	

assign result = sign_result;


always @(posedge clk) begin


	sign_result <= sign_data;
	

end


endmodule