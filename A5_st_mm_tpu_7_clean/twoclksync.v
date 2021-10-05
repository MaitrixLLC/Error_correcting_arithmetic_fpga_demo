// test circuit to implement two clock sync circuit
// a single synchronous pulse on a_trig (via a_clk) triggers a single sync pulse on b_ena_out (via b_clk)


module twoclksync (

	a_clk,
	b_clk,
	glb_arst,
	a_trig,
	b_ena_out


);



input a_clk;			// s clock  (typically slow clock)
input b_clk;			// f clock	(typically fast clock)
input a_trig;			// s_clk trigger enable
input glb_arst;		// async reset for entire synchronizer device

output b_ena_out;		// f_clk enable signal

reg a_trig_ff;
reg b_ena_out_ff;

assign b_ena_out = b_ena_out_ff;


wire async_rst;
assign async_rst = b_ena_out_ff | glb_arst;


always @(posedge a_clk or posedge async_rst)
begin

	if(async_rst == 1'b1) begin

		a_trig_ff <= 0;
		
	end 
	else if(a_trig == 1'b1) begin
	
		a_trig_ff <= 1;
	
	end 
//	else begin
	
//		a_trig_ff <= 0;
//	end


end


always @(posedge b_clk or posedge glb_arst)
begin

	if(glb_arst == 1'b1) begin			// if global async reset
	
		b_ena_out_ff <= 0;
		
	end
	else begin
	
		if(a_trig_ff == 1'b1) begin		// if a_clk trigger set
		
			b_ena_out_ff <= 1;
		
		end
		else begin
		
			b_ena_out_ff <= 0;			// single pulse b_clk enable
		end
	end


end


endmodule
