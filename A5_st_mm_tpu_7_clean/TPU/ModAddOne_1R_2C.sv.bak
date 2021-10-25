
module ModAddOne_1R_2C #(parameter DATA_WIDTH=18, parameter MODULUS=177147) (input clk, input cin, input reg [DATA_WIDTH-1:0] A, output reg [DATA_WIDTH-1:0] result);


logic [DATA_WIDTH:0] sum;				// this must be one bit wider !!
logic [DATA_WIDTH-1:0] result_ff;

function logic [DATA_WIDTH-1:0] mod_1R(input logic [DATA_WIDTH:0] A, input logic [DATA_WIDTH-1:0] M);
	

begin
	
	if(A == M) begin			// this method uses a comparator ... INPUT CANNOT EXCEED MODULUS-1 !!!!   (SINGLE DIGIT RANGE LIMIT)
		mod_1R = 0;
	end 
	else begin
		mod_1R = A;
	end
	
end
	
endfunction

		
assign result = result_ff;	


always @(posedge clk) begin


	sum <= A + cin;
	result_ff <= mod_1R(sum, MODULUS);
	

end

endmodule
