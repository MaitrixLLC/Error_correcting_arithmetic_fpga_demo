# Error_correcting_arithmetic_fpga_demo
FPGA demonstration of an over-clocked product summation pipeline with arithmetic error correction.
This is an FPGA project running a NIOS-II processor.
The FPGA portion also includes a high-speed arithmetic processing pipeline.
The pipeline multiplies two values and adds the product to a summation.
It performs 16 product summations, each summation comprising 16 products.
By increasing the frequency the clock arithmetic pipeline, arithmetic errors are induced.
These arithmetic errors may also be induced by cosmic rays or other high-energy particles.
Any single digit errors in the product summation are detected and corrected in hardware;
the error correction unit is fully pipelined as is all the arithmetic circuits.
The ability to perform error detection and correction of arithmetic depends on the 
number system having some redundnacy.  Thus, a redundnt RNS number system is used
to perform the calculations; the values are converted back to binary before they are displayed in either
decimnal or hexadecimal format.
This type of compuation is new.  It represents a new field of computation called "Modular Computation".
Modular COmputation has many benefits.  This demonstration shows how far the modular
circuits may be over-clocked.  Moreover, errors are corrected or detected.

This demposntration requries an ARRIA-V development card and some experience
seeting up the FPGA card and configuring the card.  Complete instructions are 
provided.  Note the Arria-V development card is now obsolete, but may be found on the
used FPGA development card market.
