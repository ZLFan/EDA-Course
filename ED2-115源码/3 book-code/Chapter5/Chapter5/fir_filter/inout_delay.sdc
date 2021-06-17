## Generated SDC file "inout_delay.sdc"

## Copyright (C) 1991-2010 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 10.0 Build 218 06/27/2010 SJ Full Version"

## DATE    "Wed Sep 08 07:47:56 2010"

##
## DEVICE  "EP1C6F256C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {d[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {d[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {d[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {d[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {d[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {d[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {d[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {d[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {newt}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {reset}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {follow}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yn_out[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yn_out[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yn_out[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yn_out[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yn_out[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yn_out[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yn_out[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yn_out[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.500 [get_ports {yvalid}]


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

