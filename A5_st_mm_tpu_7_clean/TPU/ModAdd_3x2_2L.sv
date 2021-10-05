// ModAdd_3x2 stage 1 circuit.  Uses 3-input adders and dual arithmetic circuit to calculate both choices for ModSub 
// This version inserts a register storage after the 3-in adder, and before the LUT to provide more set-up time for LUT.


module ModAdd_3x2_2L #(parameter DATA_WIDTH=18, FILE="partmod_lut_d2_s16_r16.hex")
                (input clk,
				     input [DATA_WIDTH-1:0] in_a,
					  input [DATA_WIDTH-1:0] in_b, 
					  input [DATA_WIDTH-1:0] in_c,
					  output [DATA_WIDTH-1:0] lut_sum,
					  output [DATA_WIDTH-3:0] trunc_sum);
		
logic [DATA_WIDTH-3:0] r;		// 16 bit latched result
		
logic [DATA_WIDTH+1:0] sum;	// 20 bit sum latch
wire [3:0] adr;					// 4 bit value	
			
assign trunc_sum = r;		
assign adr = sum[DATA_WIDTH+1:DATA_WIDTH-2];		// should be upper four bits

RomLUT_mlab #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(4), .FILE(FILE)) rom1 (.addr(adr), .clk(clk), .data(lut_sum));
			

always @(posedge clk) begin

	
	r <= sum;							// latch to latch delay
	
	sum <= in_a + in_b + in_c;		// 3-in adder to latch
		
end
		
		
endmodule
