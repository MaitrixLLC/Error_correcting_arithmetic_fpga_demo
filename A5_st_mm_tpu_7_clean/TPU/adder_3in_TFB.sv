// This is a 3-input adder primitive with latched result, continuously clocked
// for TFB modular accumulator applications, Cyclone-V (C5) and above

// THIS CIRCUIT CAN BE FASTER ... LUT ADDRESS MUST WAIT FOR FULL PROPAGATION OF 3-INPUT ADDER

// was a single clock module, now testing to see if a two stage modulue is faster, ebo

module adder_3in_TFB #(parameter ROM_FILE="data2.hex") 
                (input clk,
				     input [19:0] in_a,
					  input [17:0] in_b, 
					  input [17:0] in_c,
					  input [2:0] lut_adr,
				     output [18:0] trunc_sum,
					  output [17:0] lut_sum);
		

logic [18:0] r;		// 19 bit latched
//wire [20:0] sum;		// 21 bit sum		// old way
logic [20:0] sum;
wire [4:0] adr;

assign trunc_sum = r;
//assign sum = in_a + in_b + in_c;			// old way
assign adr = {lut_adr, sum[20:19]};

RomLUT_mlab #(.DATA_WIDTH(18), .ADDR_WIDTH(5), .FILE(ROM_FILE))  
	     rom1 (.addr(adr), .clk(clk), .data(lut_sum));
			

		
always @(posedge clk) begin

	
	r <= sum;
	sum <= in_a + in_b + in_c;		// added this new stage

		
end
		
		
endmodule
