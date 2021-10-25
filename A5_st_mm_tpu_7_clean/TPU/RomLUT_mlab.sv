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
// HDL inferred ROM LUT using logic resource


module RomLUT_mlab #(parameter DATA_WIDTH=18, parameter ADDR_WIDTH=5, parameter FILE="partmod_lut_d3_s26.hex")  
	     (input [ADDR_WIDTH-1:0] addr, 
			input clk,
			output [DATA_WIDTH-1:0] data);
				

reg [DATA_WIDTH-1:0] mem_data;
//reg [7:0] mem_addr;

(* ramstyle = "logic" *) reg [DATA_WIDTH-1:0] memory [0:2**ADDR_WIDTH-1];			// Note that we are forcing the compiler to use M9K LUT resource		
//(* ramstyle = "no_rw_check, M9K" *) reg [DATA_WIDTH-1:0] memory [0:2**ADDR_WIDTH-1];			// Note that we are forcing the compiler to use M9K LUT resource		

initial begin
//	$readmemh("data2.hex", memory);		// this works for simulation, and works for synthesis also
$readmemh(FILE, memory);			// testing string parameters
end


assign data = mem_data;



always @(posedge clk) begin


//	mem_addr <= addr;							// adding this stage makes the "inferred" RAM have clocked input address, and clocked output result
//	mem_data <= memory[mem_addr];
	mem_data <= memory[addr];

end

	
endmodule
