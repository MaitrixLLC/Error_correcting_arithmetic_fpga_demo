`timescale 1 ns/ 1 ns 

module tb_bin_add_3x2();

parameter OP_WIDTH=16;			// test an 16 bit multiply then 18 bit add sequence
parameter SUM_WIDTH=17;			// multiplier is 16x18, and summation is 18+(18+16)

logic clk;
logic [SUM_WIDTH-OP_WIDTH-1:0] OPA;		// OPA is the multiplicative operand, keep to within 16 bits
logic [OP_WIDTH-1:0] OPB;		// OPB is the summation operand, keep to within 18 bits
logic [OP_WIDTH-1:0] OPC;		
logic enable_b;

logic [OP_WIDTH-1:0] lo_sum;
logic hi_sum;							// hi sum is only one bit wider than (18-bit) operand, or just one bit

int j, a, b, chks;
longint i;


/*
bin_add_3x2 #(.OP_WIDTH(16), .CARRY_WIDTH(1), .SUM_WIDTH(17)) Dut1
						(input clk,
				       input [CARRY_WIDTH-1:0] in_a,		// multiplicative operand 
						 input [OP_WIDTH-1:0] in_b,		// summation operand 
						 input [OP_WIDTH-1:0] in_c,
						 input enable_bin,
				       output [OP_WIDTH-1:0] low_sum,
						 output [SUM_WIDTH-1:OP_WIDTH] hi_sum);
*/

bin_add_3x2 #(.OP_WIDTH(OP_WIDTH), .CARRY_WIDTH(1), .SUM_WIDTH(SUM_WIDTH)) Dut1
						(.clk(clk),
				       .in_a(OPA),		// smallest carry input operand
						 .in_b(OPB),		// conditional summation operand 
						 .in_c(OPC),		// summation operand
						 .enable_bin(enable_b),
				       .low_sum(lo_sum),
						 .hi_sum(hi_sum));

//bin_mult_add_2x2 #(.OPA_WIDTH(LO_WIDTH), .OPB_WIDTH(HI_WIDTH), .OP_CONST(262127)) Dut1 (
//			.clk(clk),
//			.in_a(OPA),
//			.in_b(OPB),
//			.low_sum(lo_sum),
//			.hi_sum(hi_sum)
//			);
 
// clock generator
always begin
    #10;
    clk = 1'b1;
    #10
    clk = 1'b0;
end


// main testbench
initial
begin


    @(posedge clk) i = 0;
    for (i = 0; i < 2; i = i + 1) @(posedge clk);	// burn off three clocks
	 
#2  OPA = 0; 
    OPB = 0;
	 OPC = 0;
	 enable_b = 0;

    @(posedge clk); 

#2  OPA = 1;						// add all three inputs
    OPB = 16'h3f4e;
	 OPC = 16'hdfea;
	 enable_b = 1;

    @(posedge clk); 

#2  OPA = 1;						// add just two inputs
    OPB = 16'h3f4e;
	 OPC = 16'hdfea;
	 enable_b = 0;
	 
    @(posedge clk); 

#2  OPA = 0;						// add just two inputs
    OPB = 16'h3f4e;
	 OPC = 16'hdfea;
	 enable_b = 1;

    @(posedge clk); 

    chks = 0;
	 
    for (i = 16'h3dfe; i < 16'hffff; i++) begin

#2		OPA = i % 2;			
		OPB = i + 1;
		OPC = i * 3;

		@(posedge clk); 
	
//	#2
//	if(tb_result == result) begin				// I guess delay is important for check of result?
//		chks += 1;
//	end
//	else begin
//		$display("error at i=%d\n", i);
//	end



    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule
