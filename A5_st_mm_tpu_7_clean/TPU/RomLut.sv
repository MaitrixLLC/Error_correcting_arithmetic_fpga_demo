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
// HDL inferred memory LUT testing


module RomLut(input [7:0] addr, 
		input clk,
		output [7:0] data);
				

reg [7:0] mem_data;
reg [7:0] mem_addr;

(* ramstyle = "no_rw_check, M9K" *) reg [7:0] memory [0:7];			// Note that we are forcing the compiler to use M9K LUT resource		
//(* ramstyle = "no_rw_check, MLAB" *) reg [7:0] memory [0:7];		// Note that we are forcing the compiler to use MLAB LUT resource																								

initial begin
	$readmemh("data2.hex", memory);		// this works for simulation, and works for synthesis also
end


assign data = mem_data;



always @(posedge clk) begin


	mem_addr <= addr;							// adding this stage makes the "inferred" RAM have clocked input address, and clocked output result
	mem_data <= memory[mem_addr];
//	mem_data <= memory[addr];

end

	
endmodule
