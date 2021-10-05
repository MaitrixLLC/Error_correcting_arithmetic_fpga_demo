## Generated SDC file "bts_ddr3_x32.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

## DATE    "Wed Oct 30 08:39:48 2019"

##
## DEVICE  "5AGXFB3H4F35C5"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {s_clk} -period 10.000 -waveform { 5.000 10.000 } [get_ports {clkin_50_bot}]
create_clock -name {f_clk} -period 5.000 -waveform { 2.500 5.000 } [get_pins {inst14|altclkctrl_0|Clk_Cntrl_x4_altclkctrl_0_sub_component|sd1|outclk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {f_clk}] -rise_to [get_clocks {s_clk}] -setup 0.020  
set_clock_uncertainty -rise_from [get_clocks {f_clk}] -rise_to [get_clocks {s_clk}] -hold 0.030  
set_clock_uncertainty -rise_from [get_clocks {f_clk}] -fall_to [get_clocks {s_clk}] -setup 0.020  
set_clock_uncertainty -rise_from [get_clocks {f_clk}] -fall_to [get_clocks {s_clk}] -hold 0.030  
set_clock_uncertainty -fall_from [get_clocks {f_clk}] -rise_to [get_clocks {s_clk}] -setup 0.020  
set_clock_uncertainty -fall_from [get_clocks {f_clk}] -rise_to [get_clocks {s_clk}] -hold 0.030  
set_clock_uncertainty -fall_from [get_clocks {f_clk}] -fall_to [get_clocks {s_clk}] -setup 0.020  
set_clock_uncertainty -fall_from [get_clocks {f_clk}] -fall_to [get_clocks {s_clk}] -hold 0.030  
set_clock_uncertainty -rise_from [get_clocks {s_clk}] -rise_to [get_clocks {f_clk}] -setup 0.030  
set_clock_uncertainty -rise_from [get_clocks {s_clk}] -rise_to [get_clocks {f_clk}] -hold 0.020  
set_clock_uncertainty -rise_from [get_clocks {s_clk}] -fall_to [get_clocks {f_clk}] -setup 0.030  
set_clock_uncertainty -rise_from [get_clocks {s_clk}] -fall_to [get_clocks {f_clk}] -hold 0.020  
set_clock_uncertainty -rise_from [get_clocks {s_clk}] -rise_to [get_clocks {s_clk}] -setup 0.050  
set_clock_uncertainty -rise_from [get_clocks {s_clk}] -fall_to [get_clocks {s_clk}] -setup 0.050  
set_clock_uncertainty -fall_from [get_clocks {s_clk}] -rise_to [get_clocks {f_clk}] -setup 0.030  
set_clock_uncertainty -fall_from [get_clocks {s_clk}] -rise_to [get_clocks {f_clk}] -hold 0.020  
set_clock_uncertainty -fall_from [get_clocks {s_clk}] -fall_to [get_clocks {f_clk}] -setup 0.030  
set_clock_uncertainty -fall_from [get_clocks {s_clk}] -fall_to [get_clocks {f_clk}] -hold 0.020  
set_clock_uncertainty -fall_from [get_clocks {s_clk}] -rise_to [get_clocks {s_clk}] -setup 0.050  
set_clock_uncertainty -fall_from [get_clocks {s_clk}] -fall_to [get_clocks {s_clk}] -setup 0.050  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

