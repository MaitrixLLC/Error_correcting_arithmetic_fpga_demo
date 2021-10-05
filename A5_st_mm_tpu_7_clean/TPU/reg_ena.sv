// This is a register with clk ena primitive,
// 

module reg_ena #(parameter DATA_WIDTH=18) 
						(input clk,
						input ena,
				     input [DATA_WIDTH-1:0] reg_in, 
				     output [DATA_WIDTH-1:0] reg_out);
		

logic [DATA_WIDTH-1:0] r;

assign reg_out = r;


		
always @(posedge clk) begin

	if (ena == 1) begin
		r <= reg_in;
	end
	else begin
		r <= r;
	end

		
end
		
		
endmodule
