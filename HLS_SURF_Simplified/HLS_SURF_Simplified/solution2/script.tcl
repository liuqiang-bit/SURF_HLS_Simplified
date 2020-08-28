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
open_solution "solution2"
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
source "./HLS_SURF_Simplified/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
