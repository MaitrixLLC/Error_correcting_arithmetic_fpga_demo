// latched sign flag comparison logic, 1 delay stage
// 01 -> equal sign, 10 -> greater than sign, 00 -> less than sign, 11 --> not defined

module compare_logic (input clk, input [1:0] prior_sign, input [1:0] new_sign, output [1:0] result);

logic [1:0] sign_result;	

wire [1:0] sign_data;
		
assign sign_data = (new_sign == 2'b01) ? prior_sign : new_sign;	

assign result = sign_result;


always @(posedge clk) begin


	sign_result <= sign_data;
	

end


endmodule