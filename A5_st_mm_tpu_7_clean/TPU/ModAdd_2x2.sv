// ModAdd_2x2 stage 1 circuit.  Uses 3-input adders and dual arithmetic circuit to calculate both choices for ModSub 

module ModAdd_2x2 #(parameter DATA_WIDTH=18, parameter MODULUS=177147) (clk, A, B, sign_out, result_A, result_B);

input clk;
input reg [DATA_WIDTH-1:0] A;
input reg [DATA_WIDTH-3:0] B;		// this input is two bits less to account for feed forward LUT truncation
output sign_out;
output reg [DATA_WIDTH-1:0] result_A;
output reg [DATA_WIDTH-1:0] result_B;

logic [DATA_WIDTH-1:0] out_reg_A;		
logic [DATA_WIDTH+1:0] out_reg_B;	// need two extra bits for sign bit
wire [DATA_WIDTH+1:0] mod_val;		// two extra bits for signed value

assign result_A = out_reg_A [DATA_WIDTH-1:0];

assign result_B = out_reg_B [DATA_WIDTH-1:0];
assign sign_out = out_reg_B [DATA_WIDTH+1:DATA_WIDTH+1];		// sign bit

assign mod_val = -MODULUS;

always @(posedge clk) begin


	out_reg_A <= A + B;
	out_reg_B <= A + B + mod_val;
	

end


endmodule
