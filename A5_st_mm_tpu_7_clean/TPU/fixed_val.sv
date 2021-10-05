// latched comparator that compares A to B and latches the comparison result
// SIGN=01 is equal, SIGN=10 is greater than, and SIGN=00 is less than

module fixed_val #(parameter DATA_WIDTH=18, parameter MCONSTANT=0) (output [DATA_WIDTH-1:0] value);

logic [DATA_WIDTH-1:0] val;
assign val = MCONSTANT;

assign value = val;

endmodule
