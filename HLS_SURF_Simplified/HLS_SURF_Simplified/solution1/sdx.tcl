# ==============================================================
# File generated on Thu Aug 27 17:06:20 +0800 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../test.cpp -cflags { -Wno-unknown-pragmas}
add_files mSURF.cpp
add_files mSURF.h
add_files mType.h
add_files top.cpp
add_files top.h
set_part xc7z020clg400-2
create_clock -name default -period 10
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_export -display_name=surf_Simplified_v2.5
config_export -format=ip_catalog
config_export -rtl=verilog
config_export -vendor=GUDONG
config_export -version=2.5
config_export -vivado_phys_opt=place
config_export -vivado_report_level=0
set_directive_pipeline SURF::HessianDetector/HessianDetector_octave -II 2
set_directive_stream top 
set_directive_unroll SURF::calcLayerDetAndTrace/calcLayerDetAndTrace_initbufIndex 
set_directive_loop_tripcount SURF::findCharacteristicPoint/findCharacteristicPoint_layer -min 1 -max 3
set_directive_loop_tripcount SURF::findCharacteristicPoint/findCharacteristicPoint_r0 -min 1 -max 559
set_directive_loop_tripcount SURF::findCharacteristicPoint/findCharacteristicPoint_c0 -min 1 -max 858
set_directive_loop_tripcount SURF::findCharacteristicPoint/findCharacteristicPoint_c0 -min 1 -max 858
set_directive_pipeline SURF::calcHaarPattern 
set_directive_dataflow SURF::HessianDetector 
