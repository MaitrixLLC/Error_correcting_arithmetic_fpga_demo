// HDL inferred ROM LUT using logic resource


module RomLUT_mlab #(parameter DATA_WIDTH=18, parameter ADDR_WIDTH=5, parameter FILE="partmod_lut_d3_s26.hex")  
	     (input [ADDR_WIDTH-1:0] addr, 
			input clk,
			output [DATA_WIDTH-1:0] data);
				

reg [DATA_WIDTH-1:0] mem_data;
//reg [7:0] mem_addr;

(* ramstyle = "logic" *) reg [DATA_WIDTH-1:0] memory [0:2**ADDR_WIDTH-1];			// Note that we are forcing the compiler to use M9K LUT resource		
//(* ramstyle = "no_rw_check, M9K" *) reg [DATA_WIDTH-1:0] memory [0:2**ADDR_WIDTH-1];			// Note that we are forcing the compiler to use M9K LUT resource		

initial begin
//	$readmemh("data2.hex", memory);		// this works for simulation, and works for synthesis also
$readmemh(FILE, memory);			// testing string parameters
end


assign data = mem_data;



always @(posedge clk) begin


//	mem_addr <= addr;							// adding this stage makes the "inferred" RAM have clocked input address, and clocked output result
//	mem_data <= memory[mem_addr];
	mem_data <= memory[addr];

end

	
endmodule
