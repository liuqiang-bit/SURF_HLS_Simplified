############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
#reset the project
open_project -reset HLS_SURF_Simplified
set_top surfDetector
add_files mSURF.cpp
add_files mSURF.h
add_files mType.h
add_files top.cpp
add_files top.h
add_files -tb test.cpp -cflags "-Wno-unknown-pragmas"

#reset the solution 
open_solution -reset "solution1"
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_dataflow -default_channel fifo -fifo_depth 2 -scalar_fifo_depth 0 -start_fifo_depth 0 -strict_mode warning
config_export -display_name surfDetector -format ip_catalog -rtl verilog

#add directives
source "./directives.tcl"

csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -display_name "surfDetector"

exit
