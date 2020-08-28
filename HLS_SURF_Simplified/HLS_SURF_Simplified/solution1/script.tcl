############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_SURF_Simplified
set_top surf_Simplified
add_files mSURF.cpp
add_files mSURF.h
add_files mType.h
add_files top.cpp
add_files top.h
add_files -tb test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -display_name surf_Simplified_v2.5 -format ip_catalog -rtl verilog -vendor GUDONG -version 2.6 -vivado_phys_opt place -vivado_report_level 0
source "./HLS_SURF_Simplified/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -vendor "GUDONG" -version "2.6" -display_name "surf_Simplified_v2.5"
