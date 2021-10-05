// This is an adder primitive with latched result, continuously clocked

module adder #(parameter OPA_WIDTH=18, parameter OPB_WIDTH=18, parameter SUM_WIDTH=19) 
						(input clk,
				       input [OPA_WIDTH-1:0] in_a,
						 input [OPB_WIDTH-1:0] in_b, 
				       output [SUM_WIDTH-1:0] reg_sum);
		

logic [SUM_WIDTH-1:0] r;

assign reg_sum = r;


		
always @(posedge clk) begin

	
	r <= in_a + in_b;

		
end
		
		
endmodule
