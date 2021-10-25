// This is an adder primitive with latched result, continuously clocked
// takes two input arguments, one of half DATA_WIDTH, and the other of DATA_WIDTH, 
// and produces a sum of DATA_WIDTH split into a lower register sum and a high register sum, 
// E. Olsen

module adder_2in_2out #(parameter DATA_WIDTH=18) 
(
input clk,
input [DATA_WIDTH-1:0] in_a,
input [2*DATA_WIDTH-1:0] in_b, 
output [DATA_WIDTH-1:0] low_sum,
output [2*DATA_WIDTH-1:DATA_WIDTH] hi_sum
);
		

logic [2*DATA_WIDTH-1:0] r;

assign low_sum = r[DATA_WIDTH-1:0];
assign hi_sum = r[2*DATA_WIDTH-1:DATA_WIDTH];

		
always @(posedge clk) begin

	
	r <= in_a + in_b;

		
end
		
		
endmodule
