// Single stage Decomp circuit. 
// This module is a generalized single stage, single LUT decomp circuit
// The input width is always the sum of the trunc_width and lut_width.
// two outputs are generated, one at DATA_WIDTH, the other at TRUNC_WIDTH


module Decomp_1x2_1L #(parameter DATA_WIDTH=18, parameter LUT_WIDTH=4, parameter TRUNC_WIDTH=16, FILE="partmod_lut_d0_s16_r16.hex")
                (input clk,
					  input [LUT_WIDTH+TRUNC_WIDTH-1:0] in_a, 
					  output [DATA_WIDTH-1:0] lut_out,
					  output [TRUNC_WIDTH-1:0] trunc_out);
		
logic [TRUNC_WIDTH-1:0] r;		// 16 bit latched result
		
wire [LUT_WIDTH-1:0] adr;		// 4 bit value	
			
assign trunc_out = r;		
assign adr = in_a[TRUNC_WIDTH+LUT_WIDTH-1:TRUNC_WIDTH];		// should be upper LUT_WIDTH number of bits

RomLUT_mlab #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(LUT_WIDTH), .FILE(FILE)) rom1 (.addr(adr), .clk(clk), .data(lut_out));
			

always @(posedge clk) begin

	
	r <= in_a;		// latch the low order truncation bits

		
end
		
		
endmodule
