// 2 input OR gate with registered output

module or2_reg (

	clk, inA, inB, Y

);

input clk;
input wire inA;
input wire inB;

output wire Y;

reg Y_ff;

assign Y = Y_ff;


always @(posedge clk) begin

	Y_ff <= inA | inB;


end


endmodule	



