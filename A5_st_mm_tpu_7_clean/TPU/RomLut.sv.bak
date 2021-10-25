// HDL inferred memory LUT testing


module RomLut(input [7:0] addr, 
		input clk,
		output [7:0] data);
				

reg [7:0] mem_data;
reg [7:0] mem_addr;

(* ramstyle = "no_rw_check, M9K" *) reg [7:0] memory [0:7];			// Note that we are forcing the compiler to use M9K LUT resource		
//(* ramstyle = "no_rw_check, MLAB" *) reg [7:0] memory [0:7];		// Note that we are forcing the compiler to use MLAB LUT resource																								

initial begin
	$readmemh("data2.hex", memory);		// this works for simulation, and works for synthesis also
end


assign data = mem_data;



always @(posedge clk) begin


	mem_addr <= addr;							// adding this stage makes the "inferred" RAM have clocked input address, and clocked output result
	mem_data <= memory[mem_addr];
//	mem_data <= memory[addr];

end

	
endmodule
