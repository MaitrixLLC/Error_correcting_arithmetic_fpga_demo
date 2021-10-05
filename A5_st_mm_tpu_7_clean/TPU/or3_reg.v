// 3 input OR gate with registered output

module or3_reg (

	clk, inA, inB, inC, Y

);

input clk;
input wire inA;
input wire inB;
input wire inC;

output wire Y;

reg Y_ff;

assign Y = Y_ff;


always @(posedge clk) begin

	Y_ff <= inA | inB | inC;


end


endmodule	
