// Basic registered add without carry
// created as primitive for modular circuits that need to add two values
// E. Olsen

module bin_add_2x1 #(parameter OPA_WIDTH=18, parameter OPB_WIDTH=18, parameter OUT_WIDTH=19) 
						(input clk,
				       input [OPA_WIDTH-1:0] in_a,
						 input [OPB_WIDTH-1:0] in_b,
						 output [OUT_WIDTH-1:0] reg_sum);


logic [OUT_WIDTH-1:0] r;			// register the operand width

assign reg_sum = r;					// output reg_sum with entire register value


		
always @(posedge clk) begin

		
		r <= in_a + in_b;

		
end
		
		
endmodule
