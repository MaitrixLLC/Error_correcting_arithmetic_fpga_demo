// latched comparator that compares A to B and latches the comparison result
// SIGN=01 is equal, SIGN=10 is greater than, and SIGN=00 is less than

module compare_1L #(parameter DATA_WIDTH=18, parameter MCONSTANT=0) (input clk, input [DATA_WIDTH-1:0] A, output [1:0] sign_result);

logic [1:0] comp_result;	

wire [1:0] sign_data;
wire [DATA_WIDTH-1:0] B;
assign  B = MCONSTANT;
		
assign sign_data = (A > B) ? 2'b10 : ((A == B) ? 2'b01 : 2'b00);	

assign sign_result = comp_result;


always @(posedge clk) begin


	comp_result <= sign_data;
	

end


endmodule
