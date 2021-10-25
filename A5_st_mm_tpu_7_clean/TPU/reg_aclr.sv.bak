// This is a register with async reset primitive,
// 

module reg_aclr #(parameter DATA_WIDTH=18) 
						(input clk,
						input aclr,
				     input [DATA_WIDTH-1:0] reg_in, 
				     output [DATA_WIDTH-1:0] reg_out);
		

logic [DATA_WIDTH-1:0] r;

assign reg_out = r;


		
always @(posedge clk or posedge aclr) begin

	if (aclr == 1) begin
		r <= 0;
	end
	else begin
		r <= reg_in;
	end

		
end
		
		
endmodule
