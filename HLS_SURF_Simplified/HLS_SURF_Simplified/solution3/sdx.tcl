# ==============================================================
# File generated on Tue Aug 18 15:45:27 +0800 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../test.cpp -cflags { -Wno-unknown-pragmas}
add_files top.h
add_files top.cpp
add_files mType.h
add_files mSURF.h
add_files mSURF.cpp
set_part xc7z020clg400-2
create_clock -name default -period 10
set_directive_pipeline SURF::HessianDetector/HessianDetector_octave -II 2
set_directive_stream top 
set_directive_unroll SURF::calcLayerDetAndTrace/calcLayerDetAndTrace_initbufIndex 
set_directive_loop_tripcount SURF::findCharacteristicPoint/findCharacteristicPoint_layer -min 1 -max 3
set_directive_loop_tripcount SURF::findCharacteristicPoint/findCharacteristicPoint_r0 -min 1 -max 559
set_directive_loop_tripcount SURF::findCharacteristicPoint/findCharacteristicPoint_c0 -min 1 -max 858
set_directive_loop_tripcount SURF::findCharacteristicPoint/findCharacteristicPoint_c0 -min 1 -max 858
set_directive_pipeline SURF::calcHaarPattern 
set_directive_dataflow SURF::HessianDetector 
set_directive_array_partition SURF::calcLayerDetAndTrace 
set_directive_array_partition SURF::calcLayerDetAndTrace 
set_directive_array_partition SURF::calcLayerDetAndTrace 
set_directive_array_partition SURF::calcLayerDetAndTrace 
set_directive_array_partition SURF::calcLayerDetAndTrace 
set_directive_unroll SURF::calcLayerDetAndTrace/calcLayerDetAndTrace_layer 
set_directive_pipeline SURF::calcHaarPattern_x_y 
set_directive_pipeline SURF::calcHaarPattern_xy 
set_directive_array_partition SURF::findCharacteristicPoint 
set_directive_array_partition SURF::findCharacteristicPoint 
set_directive_array_partition SURF::findCharacteristicPoint 
set_directive_array_partition SURF::findCharacteristicPoint 
set_directive_array_partition SURF::findCharacteristicPoint 
set_directive_pipeline SURF::findCharacteristicPoint/findCharacteristicPoint_r0 
