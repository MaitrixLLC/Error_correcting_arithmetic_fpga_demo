// 2 input OR gate with registered output

module priority2_reg (

	clk, inA, inB, errA, errB, Y, err

);

input clk;
input wire inA;
input wire inB;

input wire errA;
input wire errB;

output wire Y;
output err;

reg Y_ff;
reg err_ff;

assign Y = Y_ff;
assign err = err_ff;


always @(posedge clk) begin

	Y_ff <= inA ^ inB;		// priority generated is true if one digit is valid set only
	
	err_ff <= (inA & inB) | (errA | errB);		// if both inputs are one, then a priority error occurred, and also pass any input errors to error ff


end


endmodule	



