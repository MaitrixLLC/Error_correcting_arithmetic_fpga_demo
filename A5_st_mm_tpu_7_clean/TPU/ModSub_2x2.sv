// ModSub_2x2 stage 1 circuit.  Uses 3-input adders and dual arithmetic circuit to calculate both choices for ModSub 

module ModSub_2x2 #(parameter DATA_WIDTH=18, parameter MODULUS=177147) 
(
input clk,
input [DATA_WIDTH-1:0] A,
input [DATA_WIDTH-1:0] B,
output sign_out,
output [DATA_WIDTH-1:0] result_A,
output [DATA_WIDTH-1:0] result_B
);

logic [DATA_WIDTH:0] out_reg_A;		// need an extra bit for sign bit
logic [DATA_WIDTH-1:0] out_reg_B;	

assign result_A = out_reg_A [DATA_WIDTH-1:0];
assign sign_out = out_reg_A [DATA_WIDTH:DATA_WIDTH];

assign result_B = out_reg_B;


always @(posedge clk) begin


	out_reg_A <= A - B;
	out_reg_B <= A - B + MODULUS;
	

end


endmodule
