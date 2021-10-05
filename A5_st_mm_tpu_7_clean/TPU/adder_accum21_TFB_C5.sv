// This is a 21 bit modular accumulator stage, end stage for TPU modmultaccum module
// the trunc_ena bit gates the high order accumulator bits out from module, or back into summation

module adder_accum21_TFB_C5 (input clk,					 
					  input load_ena, 
					  input trunc_ena,
				     input [18:0] in_a,
					  input [17:0] in_b,
					  output [2:0] trunc_adr,
				     output [20:0] mod_result);
		

logic [20:0] accum;		// 21 bit latched accumulator
wire [20:0] sum;			// 21 bit sum
wire [20:0] accum_fb;	// 21 bit accumulation feedback term

assign trunc_adr = (trunc_ena) ? accum[20:18] : 0;

assign accum_fb = (trunc_ena) ? accum[17:0] : accum[20:0];
//assign accum_fb = (load_ena) ? 0 : ((trunc_ena) ? (accum[17:0]) : (accum[20:0]));

//assign sum = (accum_fb + in_a + in_b);
assign sum = (load_ena) ? 0 : (accum_fb + in_a + in_b);

assign mod_result = accum;
			
		
always @(posedge clk) begin

	
	accum <= sum;

		
end
		
		
endmodule
