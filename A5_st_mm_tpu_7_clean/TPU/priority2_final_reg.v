// 2 input OR gate with registered output

module priority2_final_reg (

	clk, inA, inB, errA, errB, mal, allOK, Y, err

);

input clk;
input wire inA;		// last two priority input stage
input wire inB;

input wire errA;		// last stage previous stage err inputs
input wire errB;
input wire mal;		// other sources of malfunction input
input wire allOK;

output wire Y;
output err;

reg Y_ff;
reg err_ff;

assign Y = Y_ff;
assign err = err_ff;


always @(posedge clk) begin

	Y_ff <= (inA ^ inB);
	
	err_ff <= (inA & inB) | (mal | ((errA | errB) & ~allOK));		// if both inputs are one, then a priority error occurred, and also pass any input errors to error ff


end


endmodule	



