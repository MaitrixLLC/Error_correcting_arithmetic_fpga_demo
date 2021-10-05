// This is an 18x18 DSP multiplier primitive, continuously clocked

module mult_reg18x18 (input clk,
						input [17:0] op_a, 
						input [17:0] op_b, 
						output [35:0] result);
		

logic [35:0] product;
//wire [35:0] product;
logic [17:0] a_ff;				// adding register storage at low level to induce tight register packing in DSP block, ebo 9/13/18
logic [17:0] b_ff;

assign result = product;


		
always @(posedge clk) begin
//always @(*) begin

	a_ff <= op_a;						// stage 1, pre-store in DSP packing reigster
	b_ff <= op_b;

//	product <= op_a * op_b;

//	product = a_ff * b_ff;			// stage 2, store the multiplier result  (could eliminate final storage for single delay stage with DSP packing? - need test)


	product <= a_ff * b_ff;

end
		
		
endmodule