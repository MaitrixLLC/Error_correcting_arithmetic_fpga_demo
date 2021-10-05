`timescale 1 ns/ 1 ns 

module tb_ModAddOne_4L();

parameter TEST_MODULUS=177147;
//parameter TEST_MODULUS=262144;


logic clk;
logic [17:0] OPA;
logic [17:0] cin;
logic [17:0] result;
logic [17:0] tb_result;

int i, j, a, b, chks;


// (input clk, input reg [DATA_WIDTH-1:0] A, input cin, output reg [DATA_WIDTH-1:0] result);
ModAddOne_1R_2C #(.DATA_WIDTH(18), .MODULUS(TEST_MODULUS)) Dut1 
(
	.clk(clk),	
	.A(OPA),
	.cin(cin),
	.result(result)
);
 
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
    cin = 0;
	 
    @(posedge clk); 
	 
#2  OPA = 177140;
    cin = 1;
		 
    @(posedge clk); 

#2  OPA = 261143;
    cin = 0;
		 
    @(posedge clk); 
	 
#2  OPA = 262143;
    cin = 1;
		 
    @(posedge clk); 

    chks = 0;
	 
    for (i = 0; i < 1000; i+=9) begin
	 
	 #2  OPA = i * i;
        cin = i % 2;

    @(posedge clk); 

    end

 
    $display("Total correct checks: %d\n", chks);
	 
    $display("End of test bench!\n");
    
    $stop;
	 
end
	 
endmodule