// 2 sign data input, normal corrected digit error logic (norm error) with registered output

module ec_gen_dig_err_norm (

	clk, sign_in_A, sign_in_B, Y

);

input clk;
input wire [1:0] sign_in_A;
input wire [1:0] sign_in_B;

output wire Y;

reg Y_ff;

assign Y = Y_ff;

wire norm_err;
assign norm_err = ((sign_in_A != sign_in_B) ? 1 : 0);		// when the sign codes differ, the digit is in error (doesn't check malfunction)


always @(posedge clk) begin

	Y_ff <= norm_err;


end


endmodule	



