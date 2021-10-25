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
module ModAddOne_1R_2C #(parameter DATA_WIDTH=18, parameter MODULUS=177147) (input clk, input cin, input reg [DATA_WIDTH-1:0] A, output reg [DATA_WIDTH-1:0] result);


logic [DATA_WIDTH:0] sum;				// this must be one bit wider !!
logic [DATA_WIDTH-1:0] result_ff;

function logic [DATA_WIDTH-1:0] mod_1R(input logic [DATA_WIDTH:0] A, input logic [DATA_WIDTH-1:0] M);
	

begin
	
	if(A == M) begin			// this method uses a comparator ... INPUT CANNOT EXCEED MODULUS-1 !!!!   (SINGLE DIGIT RANGE LIMIT)
		mod_1R = 0;
	end 
	else begin
		mod_1R = A;
	end
	
end
	
endfunction

		
assign result = result_ff;	


always @(posedge clk) begin


	sum <= A + cin;
	result_ff <= mod_1R(sum, MODULUS);
	

end

endmodule
