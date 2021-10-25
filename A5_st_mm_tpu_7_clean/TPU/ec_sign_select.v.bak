// two stage circuit to determine if a digit is in error, and whether to select the correction digit or not

module ec_sign_select #(parameter DATA_WIDTH = 18) (

	clk,
	sign_in_A, 
	sign_in_B,
	in_Y,					// register pipeline value input (un-corrected digit)
	in_cor,				// correted digit input	
	out,
	error,
	cor_err_stg1,		// corrected error signal one stage before end of pipe
	mal_err_stg1			// non-corrected error signal one stage before end of pipe

);


input wire clk;
input wire [1:0] sign_in_A;		// positive sign range comparison result
input wire [1:0] sign_in_B;		// negative sign range comparison result

input wire [DATA_WIDTH-1:0] in_cor;		// correction result input
input wire [DATA_WIDTH-1:0] in_Y;		// register pipeline input (regular input)

output wire [DATA_WIDTH-1:0] out;	// selected digit
output wire [1:0] error;			// error code for examination of error conditions  (00= NO error, 01= corrected error, 10=un-corrected error, 11=malfunction)

output wire cor_err_stg1;		// 0: no error correction, 1: error correction applied
output wire mal_err_stg1;		// 0: no malfunction, 1: malfunction or two digits in error

reg [DATA_WIDTH-1:0] Y_dig;		// first store is staging stage for selector
reg [DATA_WIDTH-1:0] C_dig;

reg [DATA_WIDTH-1:0] dig_out;			// register the output

reg sel_ff;					// stage the select decision

reg [1:0] err_1_ff; 		// stage1 of the error code
reg [1:0] err_2_ff;		// stage 2 of the error code

assign error = err_2_ff;		// error output derived from 2nd stage of error status

assign cor_err_stg1 = err_1_ff[0];
assign mal_err_stg1 = err_1_ff[1];

assign out = dig_out;		// digit output is derived from select output storage register

wire int_sel;
assign int_sel = ((((sign_in_A == 0) && (sign_in_B == 0)) || ((sign_in_A == 2) && (sign_in_B == 2))) ? 1 : 0);  // comparisons must go same way for correct digit

// extra bits for error code generation
wire err_norm;																
assign err_norm = (((sign_in_A != sign_in_B)) ? 1 : 0);		// 1= general error in digit
wire err_abnorm;
assign err_abnorm = ((((sign_in_A != 0) && (sign_in_A != 2)) || ((sign_in_B != 0) && (sign_in_B != 2))) ? 1 : 0);  // 1= malfunction, 0 hardware operation OK



always @(posedge clk) begin

	
	Y_dig <= in_Y;
	C_dig <= in_cor;
	
	sel_ff <= int_sel;
	
	if(sel_ff == 1) 
	begin
		dig_out <= C_dig;
	end
	else begin
		dig_out <= Y_dig;
	end
	
	err_1_ff <= {err_abnorm, err_norm};
	err_2_ff <= err_1_ff;
	
		
end



endmodule
