// latched Correction generation unit to make fan out of sign data easier to route, 
// two stage design, any bit in flag bus will enable the correction constant or will send zero

module CorSel_2L #(parameter DATA_WIDTH=18, parameter DIGIT_CORRECT=0) (input clk, input reg [DATA_WIDTH-1:0] A, input reg [1:0] sign_in, output reg [DATA_WIDTH-1:0] A_out, output reg [DATA_WIDTH-1:0] cor_result);

logic [1:0] reg1;						// sign porch register
logic [DATA_WIDTH-1:0] reg2;		// value porch register
logic [DATA_WIDTH-1:0] reg3;		// back porch correction register
logic [DATA_WIDTH-1:0] reg4;		// back porch value register

wire [DATA_WIDTH-1:0] cor_data;
assign cor_data = (reg1[1] | reg1[0]) ? DIGIT_CORRECT : 0;	// either bit set in sign flag bus means to correct

assign cor_result = reg3;
assign A_out = reg4;


always @(posedge clk) begin


	reg2 <= A;
	reg4 <= reg2;	
	
	reg1 <= sign_in;
	reg3 <= cor_data;

end


endmodule