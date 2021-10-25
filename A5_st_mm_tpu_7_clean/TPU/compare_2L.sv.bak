// latched bus selector unit, sel=0 chooses A bus, sel=1 chooses B bus

module compare_1L #(parameter DATA_WIDTH=18) (input clk, input [DATA_WIDTH-1:0] A, input [DATA_WIDTH-1:0] B, output [1:0] sign_result);

logic [1:0] comp_result;	

wire [1:0] sign_data;
		
assign sign_data = (A > B) ? 2'b10 : ((A == B) ? 2'b01 : 2'b00);	

assign sign_result = comp_result;


always @(posedge clk) begin


	comp_result <= sign_data;
	

end


endmodule
