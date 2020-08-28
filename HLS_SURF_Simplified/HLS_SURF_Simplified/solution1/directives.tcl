############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -II 2 "SURF::HessianDetector/HessianDetector_octave"
set_directive_stream -depth 48000 -dim 1 "top" sumBuf
set_directive_unroll "SURF::calcLayerDetAndTrace/calcLayerDetAndTrace_initbufIndex"
set_directive_loop_tripcount -min 1 -max 3 "SURF::findCharacteristicPoint/findCharacteristicPoint_layer"
set_directive_loop_tripcount -min 1 -max 559 "SURF::findCharacteristicPoint/findCharacteristicPoint_r0"
set_directive_loop_tripcount -min 1 -max 858 "SURF::findCharacteristicPoint/findCharacteristicPoint_c0"
set_directive_loop_tripcount -min 1 -max 858 "SURF::findCharacteristicPoint/findCharacteristicPoint_c0"
set_directive_pipeline "SURF::calcHaarPattern"
set_directive_dataflow "SURF::HessianDetector"
