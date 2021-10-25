// multiply by constant, registered output, continuously clocked
// E. Olsen

module multconst16_18_reg #(parameter DATA_IN_WIDTH = 16, parameter CONST_WIDTH = 18, parameter CONST_OP = 78125)
(
 input clk,
 input [DATA_IN_WIDTH-1:0] op_a, 
 output [DATA_IN_WIDTH+CONST_WIDTH-1:0] result
);
		

logic [DATA_IN_WIDTH+CONST_WIDTH-1:0] product;

assign result = product;

		
always @(posedge clk) begin

	
	product <= op_a * CONST_OP;


end
		
		
endmodule
