
// latched bus selector unit, sel=0 chooses A bus, sel=1 chooses B bus

module Select_2x1 #(parameter DATA_WIDTH=18) (input clk, input sel, input reg [DATA_WIDTH-1:0] A, input reg [DATA_WIDTH-1:0] B, output reg [DATA_WIDTH-1:0] result);

logic [DATA_WIDTH-1:0] out_reg;	

wire [DATA_WIDTH-1:0] sel_data;
		
assign sel_data = (sel) ? B : A;	

assign result = out_reg;


always @(posedge clk) begin


	out_reg <= sel_data;
	

end


endmodule
