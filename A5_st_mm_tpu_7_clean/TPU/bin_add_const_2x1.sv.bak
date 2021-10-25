// Basic registered add with constant without carry
// created as primitive for modular circuits that need to add a constant to a binary value
// E. Olsen

module bin_add_const_2x1 #(parameter OPA_WIDTH=18, parameter CONST=0, parameter OUT_WIDTH=19) 
						(input clk,
				       input [OPA_WIDTH-1:0] in_a,
						 output [OUT_WIDTH-1:0] reg_sum);


logic [OUT_WIDTH-1:0] r;			// register the operand width

assign reg_sum = r;					// output reg_sum with entire register value


		
always @(posedge clk) begin

		
		r <= in_a + CONST;

		
end
		
		
endmodule
