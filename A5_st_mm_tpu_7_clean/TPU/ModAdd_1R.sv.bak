
module ModAdd_1R #(parameter DATA_WIDTH=18, parameter MODULUS=262144) (input reg [DATA_WIDTH-1:0] A, input reg [DATA_WIDTH-1:0] B, output reg [DATA_WIDTH-1:0] result);


function logic [DATA_WIDTH-1:0] mod_add(input logic [DATA_WIDTH-1:0] A, B, M);
	
logic [DATA_WIDTH:0] result;		// this must be one bit wider !!
	
begin
	result = A + B;
	
	if(result >= M) begin	// detect the high order bit of subtraction result
		mod_add = result - M;
	end 
	else begin
		mod_add = result;
	end
	
end
	
endfunction

		
assign result = mod_add(A, B, MODULUS);	

endmodule
