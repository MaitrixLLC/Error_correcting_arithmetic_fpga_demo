// 2 input AND gate with one input inverted with registered output

module and2n1_reg (

	clk, inA, inB_not, Y

);

input clk;
input wire inA;
input wire inB_not;

output wire Y;

reg Y_ff;

assign Y = Y_ff;


always @(posedge clk) begin

	Y_ff <= inA & !(inB_not);		// A and not B


end


endmodule	



