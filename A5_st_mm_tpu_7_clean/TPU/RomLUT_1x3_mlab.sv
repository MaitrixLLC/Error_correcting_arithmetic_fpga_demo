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
// 3 gang of ROMLuts for use by modular multiplication by constant mainly

module RomLUT_1x3_mlab #(parameter DATA_WIDTH=18, parameter ADDR_WIDTH=6, parameter FILE1="partmod_lut_d3_s26.hex", parameter FILE2="partmod_lut_d3_s26.hex", parameter FILE3="partmod_lut_d3_s26.hex")  
	     (input clk,
		   input [ADDR_WIDTH-1:0] addr1, 
			input [ADDR_WIDTH-1:0] addr2, 
			input [ADDR_WIDTH-1:0] addr3, 
			output [DATA_WIDTH-1:0] data1,
			output [DATA_WIDTH-1:0] data2,		
			output [DATA_WIDTH-1:0] data3		
			);
			
wire [DATA_WIDTH-1:0] data1_out;
wire [DATA_WIDTH-1:0] data2_out;
wire [DATA_WIDTH-1:0] data3_out;


logic [DATA_WIDTH-1:0] data1_ff;
logic [DATA_WIDTH-1:0] data2_ff;
logic [DATA_WIDTH-1:0] data3_ff;

assign data1 = data1_ff;
assign data2 = data2_ff;
assign data3 = data3_ff;


//assign data1 = data1_out;
//assign data2 = data2_out;
//assign data3 = data3_out;
			
RomLUT_mlab #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH), .FILE(FILE1))  lut1 (.addr(addr1), .clk(clk), .data(data1_out));	
RomLUT_mlab #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH), .FILE(FILE2))  lut2 (.addr(addr2), .clk(clk), .data(data2_out));	
RomLUT_mlab #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH), .FILE(FILE3))  lut3 (.addr(addr3), .clk(clk), .data(data3_out));				
	

always @(posedge clk) begin

	
	data1_ff <= data1_out;
	data2_ff <= data2_out;
	data3_ff <= data3_out;

		
end	

	
			
endmodule
