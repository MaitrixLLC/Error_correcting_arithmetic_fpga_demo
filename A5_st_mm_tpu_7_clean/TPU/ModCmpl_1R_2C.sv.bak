// Modular complement unit with complement enable input
module ModCmpl_1R_2C #(parameter DATA_WIDTH=18, parameter MODULUS=177147) (input clk, input cmpl_ena, input reg [DATA_WIDTH-1:0] A, output reg [DATA_WIDTH-1:0] result);

logic [DATA_WIDTH:0] sub;				// intermediate result must be one bit wider !!
logic [DATA_WIDTH-1:0] A_dly1;
logic [DATA_WIDTH-1:0] result_ff;
logic cmpl_ena_dly1;

function logic [DATA_WIDTH-1:0] mod_1R(input logic [DATA_WIDTH:0] A, input logic [DATA_WIDTH-1:0] M);	// input must be one bit wider !!
	
	
begin
	
	if(A & (1 << DATA_WIDTH)) begin	// detect the high order bit of subtraction result
		mod_1R = M + A;
	end 
	else begin
		mod_1R = A;
	end
	
end
	
endfunction

		
assign result = result_ff;	

always @(posedge clk) begin

	A_dly1 <= A;
	sub <= 0 - A;
	cmpl_ena_dly1 <= cmpl_ena;

	if(cmpl_ena_dly1) begin
		result_ff <= mod_1R(sub, MODULUS);
	end
	else begin
		result_ff <= A_dly1;
	end
	
end


endmodule


