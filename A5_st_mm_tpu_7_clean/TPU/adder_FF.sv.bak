// This is a congruent modular adder primitive, continuously clocked, with feed forward LUT integrated into register
// used to construct the entry point to a pipelined modular accumulator with LUT 

module adder_FF #(parameter ROM_FILE="data2.hex")
                (input clk,
				     input [19:0] in_a,
					  input [17:0] in_b, 
					  input [2:0] lut_adr,
				     output [18:0] trunc_sum,
					  output [17:0] lut_sum);
		

logic [18:0] r;		// 19 bit latched
wire [20:0] sum;		// 21 bit sum
wire [4:0] adr;

assign trunc_sum = r;
assign sum = in_a + in_b;
assign adr = {lut_adr, sum[20:19]};

RomLUT_mlab #(.DATA_WIDTH(18), .ADDR_WIDTH(5), .FILE(ROM_FILE)) rom1 (.addr(adr), .clk(clk), .data(lut_sum));
			
		
always @(posedge clk) begin

	
	r <= sum;

		
end
		
		
endmodule
