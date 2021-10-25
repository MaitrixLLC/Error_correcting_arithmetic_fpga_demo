// 2 sign data input, malfunction detected in digit recovery logic (malf error) with registered output

module ec_gen_dig_err_malf (

	clk, sign_in_A, sign_in_B, Y

);

input clk;
input wire [1:0] sign_in_A;
input wire [1:0] sign_in_B;

output wire Y;

reg Y_ff;

assign Y = Y_ff;

wire malfunction_err;
assign malfunction_err = ((((sign_in_A != 0) && (sign_in_A != 2)) || ((sign_in_B != 0) && (sign_in_B != 2))) ? 1 : 0);		// when the sign codes are invalid, a malfunction is detected, or overflow value


always @(posedge clk) begin

	Y_ff <= malfunction_err;


end


endmodule	



