// This is an adder primitive with latched result, continuously clocked
// takes two input arguments, one of DATA_A_WIDTH, and the other of DATA_B_WIDTH, 
// and produces a sum of DATA_B_WIDTH split into a lower register sum of DATA_LO_WIDTH 
// and a high register sum of DATA_B_WIDTH-DATA_LO_WIDTH
// E. Olsen

module adder_xy_2in_2out #(parameter DATA_A_WIDTH=16, parameter DATA_B_WIDTH=34, parameter DATA_LO_WIDTH=16) 
(
input clk,
input [DATA_A_WIDTH-1:0] in_a,
input [DATA_B_WIDTH-1:0] in_b, 
output [DATA_LO_WIDTH-1:0] low_sum,
output [DATA_B_WIDTH-1:DATA_LO_WIDTH] hi_sum
);
		

logic [DATA_B_WIDTH-1:0] r;

assign low_sum = r[DATA_LO_WIDTH-1:0];
assign hi_sum = r[DATA_B_WIDTH-1:DATA_LO_WIDTH];

		
always @(posedge clk) begin

	
	r <= in_a + in_b;

		
end
		
		
endmodule
