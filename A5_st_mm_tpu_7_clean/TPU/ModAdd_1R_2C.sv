
module ModAdd_1R_2C #(parameter DATA_WIDTH=18, parameter MODULUS=131072) (input clk, input reg [DATA_WIDTH-1:0] A, input reg [DATA_WIDTH-1:0] B, output reg [DATA_WIDTH-1:0] result);


logic [DATA_WIDTH:0] sum;					// this must be one bit wider !!
logic [DATA_WIDTH-1:0] result_ff;

function logic [DATA_WIDTH-1:0] mod_1R(input logic [DATA_WIDTH:0] A, input logic [DATA_WIDTH-1:0] M);
	

begin
	
	if(A >= M) begin	
		mod_1R = A - M;
	end 
	else begin
		mod_1R = A;
	end
	
end
	
endfunction

		
assign result = result_ff;	


always @(posedge clk) begin


	sum <= A + B;
	result_ff <= mod_1R(sum, MODULUS);
	

end

endmodule