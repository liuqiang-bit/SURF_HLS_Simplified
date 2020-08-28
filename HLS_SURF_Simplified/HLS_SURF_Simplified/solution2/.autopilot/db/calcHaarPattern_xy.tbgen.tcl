set moduleName calcHaarPattern_xy
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {calcHaarPattern_xy}
set C_modelType { float 32 }
set C_modelArgList {
	{ sumBuf_0 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_1 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_2 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_3 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_4 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_5 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_6 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_7 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_8 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_9 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_10 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_11 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_12 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_13 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_14 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_15 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_16 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_17 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_18 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_19 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_20 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ sumBuf_21 int 32 regular {array 801 { 1 1 } 1 1 }  }
	{ box_0_0_read float 32 regular  }
	{ box_0_1_read float 32 regular  }
	{ box_0_2_read float 32 regular  }
	{ box_0_3_read float 32 regular  }
	{ box_0_4_read float 32 regular  }
	{ box_1_0_read float 32 regular  }
	{ box_1_1_read float 32 regular  }
	{ box_1_2_read float 32 regular  }
	{ box_1_3_read float 32 regular  }
	{ box_1_4_read float 32 regular  }
	{ box_2_0_read float 32 regular  }
	{ box_2_1_read float 32 regular  }
	{ box_2_2_read float 32 regular  }
	{ box_2_3_read float 32 regular  }
	{ box_2_4_read float 32 regular  }
	{ box_3_0_read float 32 regular  }
	{ box_3_1_read float 32 regular  }
	{ box_3_2_read float 32 regular  }
	{ box_3_3_read float 32 regular  }
	{ box_3_4_read float 32 regular  }
	{ sumBufIndex_V int 176 regular  }
	{ rOffset int 5 regular  }
	{ cOffset int 11 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sumBuf_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBuf_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_0_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_0_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_0_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_0_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_0_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_1_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_1_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_1_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_1_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_1_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_2_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_2_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_2_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_2_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_2_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_3_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_3_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_3_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_3_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_3_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sumBufIndex_V", "interface" : "wire", "bitwidth" : 176, "direction" : "READONLY"} , 
 	{ "Name" : "rOffset", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "cOffset", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 163
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ sumBuf_0_address0 sc_out sc_lv 10 signal 0 } 
	{ sumBuf_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ sumBuf_0_q0 sc_in sc_lv 32 signal 0 } 
	{ sumBuf_0_address1 sc_out sc_lv 10 signal 0 } 
	{ sumBuf_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ sumBuf_0_q1 sc_in sc_lv 32 signal 0 } 
	{ sumBuf_1_address0 sc_out sc_lv 10 signal 1 } 
	{ sumBuf_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ sumBuf_1_q0 sc_in sc_lv 32 signal 1 } 
	{ sumBuf_1_address1 sc_out sc_lv 10 signal 1 } 
	{ sumBuf_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ sumBuf_1_q1 sc_in sc_lv 32 signal 1 } 
	{ sumBuf_2_address0 sc_out sc_lv 10 signal 2 } 
	{ sumBuf_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ sumBuf_2_q0 sc_in sc_lv 32 signal 2 } 
	{ sumBuf_2_address1 sc_out sc_lv 10 signal 2 } 
	{ sumBuf_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ sumBuf_2_q1 sc_in sc_lv 32 signal 2 } 
	{ sumBuf_3_address0 sc_out sc_lv 10 signal 3 } 
	{ sumBuf_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ sumBuf_3_q0 sc_in sc_lv 32 signal 3 } 
	{ sumBuf_3_address1 sc_out sc_lv 10 signal 3 } 
	{ sumBuf_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ sumBuf_3_q1 sc_in sc_lv 32 signal 3 } 
	{ sumBuf_4_address0 sc_out sc_lv 10 signal 4 } 
	{ sumBuf_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ sumBuf_4_q0 sc_in sc_lv 32 signal 4 } 
	{ sumBuf_4_address1 sc_out sc_lv 10 signal 4 } 
	{ sumBuf_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ sumBuf_4_q1 sc_in sc_lv 32 signal 4 } 
	{ sumBuf_5_address0 sc_out sc_lv 10 signal 5 } 
	{ sumBuf_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ sumBuf_5_q0 sc_in sc_lv 32 signal 5 } 
	{ sumBuf_5_address1 sc_out sc_lv 10 signal 5 } 
	{ sumBuf_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ sumBuf_5_q1 sc_in sc_lv 32 signal 5 } 
	{ sumBuf_6_address0 sc_out sc_lv 10 signal 6 } 
	{ sumBuf_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ sumBuf_6_q0 sc_in sc_lv 32 signal 6 } 
	{ sumBuf_6_address1 sc_out sc_lv 10 signal 6 } 
	{ sumBuf_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ sumBuf_6_q1 sc_in sc_lv 32 signal 6 } 
	{ sumBuf_7_address0 sc_out sc_lv 10 signal 7 } 
	{ sumBuf_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ sumBuf_7_q0 sc_in sc_lv 32 signal 7 } 
	{ sumBuf_7_address1 sc_out sc_lv 10 signal 7 } 
	{ sumBuf_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ sumBuf_7_q1 sc_in sc_lv 32 signal 7 } 
	{ sumBuf_8_address0 sc_out sc_lv 10 signal 8 } 
	{ sumBuf_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ sumBuf_8_q0 sc_in sc_lv 32 signal 8 } 
	{ sumBuf_8_address1 sc_out sc_lv 10 signal 8 } 
	{ sumBuf_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ sumBuf_8_q1 sc_in sc_lv 32 signal 8 } 
	{ sumBuf_9_address0 sc_out sc_lv 10 signal 9 } 
	{ sumBuf_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ sumBuf_9_q0 sc_in sc_lv 32 signal 9 } 
	{ sumBuf_9_address1 sc_out sc_lv 10 signal 9 } 
	{ sumBuf_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ sumBuf_9_q1 sc_in sc_lv 32 signal 9 } 
	{ sumBuf_10_address0 sc_out sc_lv 10 signal 10 } 
	{ sumBuf_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ sumBuf_10_q0 sc_in sc_lv 32 signal 10 } 
	{ sumBuf_10_address1 sc_out sc_lv 10 signal 10 } 
	{ sumBuf_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ sumBuf_10_q1 sc_in sc_lv 32 signal 10 } 
	{ sumBuf_11_address0 sc_out sc_lv 10 signal 11 } 
	{ sumBuf_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ sumBuf_11_q0 sc_in sc_lv 32 signal 11 } 
	{ sumBuf_11_address1 sc_out sc_lv 10 signal 11 } 
	{ sumBuf_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ sumBuf_11_q1 sc_in sc_lv 32 signal 11 } 
	{ sumBuf_12_address0 sc_out sc_lv 10 signal 12 } 
	{ sumBuf_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ sumBuf_12_q0 sc_in sc_lv 32 signal 12 } 
	{ sumBuf_12_address1 sc_out sc_lv 10 signal 12 } 
	{ sumBuf_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ sumBuf_12_q1 sc_in sc_lv 32 signal 12 } 
	{ sumBuf_13_address0 sc_out sc_lv 10 signal 13 } 
	{ sumBuf_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ sumBuf_13_q0 sc_in sc_lv 32 signal 13 } 
	{ sumBuf_13_address1 sc_out sc_lv 10 signal 13 } 
	{ sumBuf_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ sumBuf_13_q1 sc_in sc_lv 32 signal 13 } 
	{ sumBuf_14_address0 sc_out sc_lv 10 signal 14 } 
	{ sumBuf_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ sumBuf_14_q0 sc_in sc_lv 32 signal 14 } 
	{ sumBuf_14_address1 sc_out sc_lv 10 signal 14 } 
	{ sumBuf_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ sumBuf_14_q1 sc_in sc_lv 32 signal 14 } 
	{ sumBuf_15_address0 sc_out sc_lv 10 signal 15 } 
	{ sumBuf_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ sumBuf_15_q0 sc_in sc_lv 32 signal 15 } 
	{ sumBuf_15_address1 sc_out sc_lv 10 signal 15 } 
	{ sumBuf_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ sumBuf_15_q1 sc_in sc_lv 32 signal 15 } 
	{ sumBuf_16_address0 sc_out sc_lv 10 signal 16 } 
	{ sumBuf_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ sumBuf_16_q0 sc_in sc_lv 32 signal 16 } 
	{ sumBuf_16_address1 sc_out sc_lv 10 signal 16 } 
	{ sumBuf_16_ce1 sc_out sc_logic 1 signal 16 } 
	{ sumBuf_16_q1 sc_in sc_lv 32 signal 16 } 
	{ sumBuf_17_address0 sc_out sc_lv 10 signal 17 } 
	{ sumBuf_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ sumBuf_17_q0 sc_in sc_lv 32 signal 17 } 
	{ sumBuf_17_address1 sc_out sc_lv 10 signal 17 } 
	{ sumBuf_17_ce1 sc_out sc_logic 1 signal 17 } 
	{ sumBuf_17_q1 sc_in sc_lv 32 signal 17 } 
	{ sumBuf_18_address0 sc_out sc_lv 10 signal 18 } 
	{ sumBuf_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ sumBuf_18_q0 sc_in sc_lv 32 signal 18 } 
	{ sumBuf_18_address1 sc_out sc_lv 10 signal 18 } 
	{ sumBuf_18_ce1 sc_out sc_logic 1 signal 18 } 
	{ sumBuf_18_q1 sc_in sc_lv 32 signal 18 } 
	{ sumBuf_19_address0 sc_out sc_lv 10 signal 19 } 
	{ sumBuf_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ sumBuf_19_q0 sc_in sc_lv 32 signal 19 } 
	{ sumBuf_19_address1 sc_out sc_lv 10 signal 19 } 
	{ sumBuf_19_ce1 sc_out sc_logic 1 signal 19 } 
	{ sumBuf_19_q1 sc_in sc_lv 32 signal 19 } 
	{ sumBuf_20_address0 sc_out sc_lv 10 signal 20 } 
	{ sumBuf_20_ce0 sc_out sc_logic 1 signal 20 } 
	{ sumBuf_20_q0 sc_in sc_lv 32 signal 20 } 
	{ sumBuf_20_address1 sc_out sc_lv 10 signal 20 } 
	{ sumBuf_20_ce1 sc_out sc_logic 1 signal 20 } 
	{ sumBuf_20_q1 sc_in sc_lv 32 signal 20 } 
	{ sumBuf_21_address0 sc_out sc_lv 10 signal 21 } 
	{ sumBuf_21_ce0 sc_out sc_logic 1 signal 21 } 
	{ sumBuf_21_q0 sc_in sc_lv 32 signal 21 } 
	{ sumBuf_21_address1 sc_out sc_lv 10 signal 21 } 
	{ sumBuf_21_ce1 sc_out sc_logic 1 signal 21 } 
	{ sumBuf_21_q1 sc_in sc_lv 32 signal 21 } 
	{ box_0_0_read sc_in sc_lv 32 signal 22 } 
	{ box_0_1_read sc_in sc_lv 32 signal 23 } 
	{ box_0_2_read sc_in sc_lv 32 signal 24 } 
	{ box_0_3_read sc_in sc_lv 32 signal 25 } 
	{ box_0_4_read sc_in sc_lv 32 signal 26 } 
	{ box_1_0_read sc_in sc_lv 32 signal 27 } 
	{ box_1_1_read sc_in sc_lv 32 signal 28 } 
	{ box_1_2_read sc_in sc_lv 32 signal 29 } 
	{ box_1_3_read sc_in sc_lv 32 signal 30 } 
	{ box_1_4_read sc_in sc_lv 32 signal 31 } 
	{ box_2_0_read sc_in sc_lv 32 signal 32 } 
	{ box_2_1_read sc_in sc_lv 32 signal 33 } 
	{ box_2_2_read sc_in sc_lv 32 signal 34 } 
	{ box_2_3_read sc_in sc_lv 32 signal 35 } 
	{ box_2_4_read sc_in sc_lv 32 signal 36 } 
	{ box_3_0_read sc_in sc_lv 32 signal 37 } 
	{ box_3_1_read sc_in sc_lv 32 signal 38 } 
	{ box_3_2_read sc_in sc_lv 32 signal 39 } 
	{ box_3_3_read sc_in sc_lv 32 signal 40 } 
	{ box_3_4_read sc_in sc_lv 32 signal 41 } 
	{ sumBufIndex_V sc_in sc_lv 176 signal 42 } 
	{ rOffset sc_in sc_lv 5 signal 43 } 
	{ cOffset sc_in sc_lv 11 signal 44 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "sumBuf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_0", "role": "address0" }} , 
 	{ "name": "sumBuf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_0", "role": "ce0" }} , 
 	{ "name": "sumBuf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_0", "role": "q0" }} , 
 	{ "name": "sumBuf_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_0", "role": "address1" }} , 
 	{ "name": "sumBuf_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_0", "role": "ce1" }} , 
 	{ "name": "sumBuf_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_0", "role": "q1" }} , 
 	{ "name": "sumBuf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_1", "role": "address0" }} , 
 	{ "name": "sumBuf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_1", "role": "ce0" }} , 
 	{ "name": "sumBuf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_1", "role": "q0" }} , 
 	{ "name": "sumBuf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_1", "role": "address1" }} , 
 	{ "name": "sumBuf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_1", "role": "ce1" }} , 
 	{ "name": "sumBuf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_1", "role": "q1" }} , 
 	{ "name": "sumBuf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_2", "role": "address0" }} , 
 	{ "name": "sumBuf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_2", "role": "ce0" }} , 
 	{ "name": "sumBuf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_2", "role": "q0" }} , 
 	{ "name": "sumBuf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_2", "role": "address1" }} , 
 	{ "name": "sumBuf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_2", "role": "ce1" }} , 
 	{ "name": "sumBuf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_2", "role": "q1" }} , 
 	{ "name": "sumBuf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_3", "role": "address0" }} , 
 	{ "name": "sumBuf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_3", "role": "ce0" }} , 
 	{ "name": "sumBuf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_3", "role": "q0" }} , 
 	{ "name": "sumBuf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_3", "role": "address1" }} , 
 	{ "name": "sumBuf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_3", "role": "ce1" }} , 
 	{ "name": "sumBuf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_3", "role": "q1" }} , 
 	{ "name": "sumBuf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_4", "role": "address0" }} , 
 	{ "name": "sumBuf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_4", "role": "ce0" }} , 
 	{ "name": "sumBuf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_4", "role": "q0" }} , 
 	{ "name": "sumBuf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_4", "role": "address1" }} , 
 	{ "name": "sumBuf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_4", "role": "ce1" }} , 
 	{ "name": "sumBuf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_4", "role": "q1" }} , 
 	{ "name": "sumBuf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_5", "role": "address0" }} , 
 	{ "name": "sumBuf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_5", "role": "ce0" }} , 
 	{ "name": "sumBuf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_5", "role": "q0" }} , 
 	{ "name": "sumBuf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_5", "role": "address1" }} , 
 	{ "name": "sumBuf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_5", "role": "ce1" }} , 
 	{ "name": "sumBuf_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_5", "role": "q1" }} , 
 	{ "name": "sumBuf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_6", "role": "address0" }} , 
 	{ "name": "sumBuf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_6", "role": "ce0" }} , 
 	{ "name": "sumBuf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_6", "role": "q0" }} , 
 	{ "name": "sumBuf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_6", "role": "address1" }} , 
 	{ "name": "sumBuf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_6", "role": "ce1" }} , 
 	{ "name": "sumBuf_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_6", "role": "q1" }} , 
 	{ "name": "sumBuf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_7", "role": "address0" }} , 
 	{ "name": "sumBuf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_7", "role": "ce0" }} , 
 	{ "name": "sumBuf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_7", "role": "q0" }} , 
 	{ "name": "sumBuf_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_7", "role": "address1" }} , 
 	{ "name": "sumBuf_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_7", "role": "ce1" }} , 
 	{ "name": "sumBuf_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_7", "role": "q1" }} , 
 	{ "name": "sumBuf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_8", "role": "address0" }} , 
 	{ "name": "sumBuf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_8", "role": "ce0" }} , 
 	{ "name": "sumBuf_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_8", "role": "q0" }} , 
 	{ "name": "sumBuf_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_8", "role": "address1" }} , 
 	{ "name": "sumBuf_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_8", "role": "ce1" }} , 
 	{ "name": "sumBuf_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_8", "role": "q1" }} , 
 	{ "name": "sumBuf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_9", "role": "address0" }} , 
 	{ "name": "sumBuf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_9", "role": "ce0" }} , 
 	{ "name": "sumBuf_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_9", "role": "q0" }} , 
 	{ "name": "sumBuf_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_9", "role": "address1" }} , 
 	{ "name": "sumBuf_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_9", "role": "ce1" }} , 
 	{ "name": "sumBuf_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_9", "role": "q1" }} , 
 	{ "name": "sumBuf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_10", "role": "address0" }} , 
 	{ "name": "sumBuf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_10", "role": "ce0" }} , 
 	{ "name": "sumBuf_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_10", "role": "q0" }} , 
 	{ "name": "sumBuf_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_10", "role": "address1" }} , 
 	{ "name": "sumBuf_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_10", "role": "ce1" }} , 
 	{ "name": "sumBuf_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_10", "role": "q1" }} , 
 	{ "name": "sumBuf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_11", "role": "address0" }} , 
 	{ "name": "sumBuf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_11", "role": "ce0" }} , 
 	{ "name": "sumBuf_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_11", "role": "q0" }} , 
 	{ "name": "sumBuf_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_11", "role": "address1" }} , 
 	{ "name": "sumBuf_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_11", "role": "ce1" }} , 
 	{ "name": "sumBuf_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_11", "role": "q1" }} , 
 	{ "name": "sumBuf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_12", "role": "address0" }} , 
 	{ "name": "sumBuf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_12", "role": "ce0" }} , 
 	{ "name": "sumBuf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_12", "role": "q0" }} , 
 	{ "name": "sumBuf_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_12", "role": "address1" }} , 
 	{ "name": "sumBuf_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_12", "role": "ce1" }} , 
 	{ "name": "sumBuf_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_12", "role": "q1" }} , 
 	{ "name": "sumBuf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_13", "role": "address0" }} , 
 	{ "name": "sumBuf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_13", "role": "ce0" }} , 
 	{ "name": "sumBuf_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_13", "role": "q0" }} , 
 	{ "name": "sumBuf_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_13", "role": "address1" }} , 
 	{ "name": "sumBuf_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_13", "role": "ce1" }} , 
 	{ "name": "sumBuf_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_13", "role": "q1" }} , 
 	{ "name": "sumBuf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_14", "role": "address0" }} , 
 	{ "name": "sumBuf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_14", "role": "ce0" }} , 
 	{ "name": "sumBuf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_14", "role": "q0" }} , 
 	{ "name": "sumBuf_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_14", "role": "address1" }} , 
 	{ "name": "sumBuf_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_14", "role": "ce1" }} , 
 	{ "name": "sumBuf_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_14", "role": "q1" }} , 
 	{ "name": "sumBuf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_15", "role": "address0" }} , 
 	{ "name": "sumBuf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_15", "role": "ce0" }} , 
 	{ "name": "sumBuf_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_15", "role": "q0" }} , 
 	{ "name": "sumBuf_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_15", "role": "address1" }} , 
 	{ "name": "sumBuf_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_15", "role": "ce1" }} , 
 	{ "name": "sumBuf_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_15", "role": "q1" }} , 
 	{ "name": "sumBuf_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_16", "role": "address0" }} , 
 	{ "name": "sumBuf_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_16", "role": "ce0" }} , 
 	{ "name": "sumBuf_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_16", "role": "q0" }} , 
 	{ "name": "sumBuf_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_16", "role": "address1" }} , 
 	{ "name": "sumBuf_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_16", "role": "ce1" }} , 
 	{ "name": "sumBuf_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_16", "role": "q1" }} , 
 	{ "name": "sumBuf_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_17", "role": "address0" }} , 
 	{ "name": "sumBuf_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_17", "role": "ce0" }} , 
 	{ "name": "sumBuf_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_17", "role": "q0" }} , 
 	{ "name": "sumBuf_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_17", "role": "address1" }} , 
 	{ "name": "sumBuf_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_17", "role": "ce1" }} , 
 	{ "name": "sumBuf_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_17", "role": "q1" }} , 
 	{ "name": "sumBuf_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_18", "role": "address0" }} , 
 	{ "name": "sumBuf_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_18", "role": "ce0" }} , 
 	{ "name": "sumBuf_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_18", "role": "q0" }} , 
 	{ "name": "sumBuf_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_18", "role": "address1" }} , 
 	{ "name": "sumBuf_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_18", "role": "ce1" }} , 
 	{ "name": "sumBuf_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_18", "role": "q1" }} , 
 	{ "name": "sumBuf_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_19", "role": "address0" }} , 
 	{ "name": "sumBuf_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_19", "role": "ce0" }} , 
 	{ "name": "sumBuf_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_19", "role": "q0" }} , 
 	{ "name": "sumBuf_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_19", "role": "address1" }} , 
 	{ "name": "sumBuf_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_19", "role": "ce1" }} , 
 	{ "name": "sumBuf_19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_19", "role": "q1" }} , 
 	{ "name": "sumBuf_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_20", "role": "address0" }} , 
 	{ "name": "sumBuf_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_20", "role": "ce0" }} , 
 	{ "name": "sumBuf_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_20", "role": "q0" }} , 
 	{ "name": "sumBuf_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_20", "role": "address1" }} , 
 	{ "name": "sumBuf_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_20", "role": "ce1" }} , 
 	{ "name": "sumBuf_20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_20", "role": "q1" }} , 
 	{ "name": "sumBuf_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_21", "role": "address0" }} , 
 	{ "name": "sumBuf_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_21", "role": "ce0" }} , 
 	{ "name": "sumBuf_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_21", "role": "q0" }} , 
 	{ "name": "sumBuf_21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sumBuf_21", "role": "address1" }} , 
 	{ "name": "sumBuf_21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf_21", "role": "ce1" }} , 
 	{ "name": "sumBuf_21_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf_21", "role": "q1" }} , 
 	{ "name": "box_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_0_0_read", "role": "default" }} , 
 	{ "name": "box_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_0_1_read", "role": "default" }} , 
 	{ "name": "box_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_0_2_read", "role": "default" }} , 
 	{ "name": "box_0_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_0_3_read", "role": "default" }} , 
 	{ "name": "box_0_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_0_4_read", "role": "default" }} , 
 	{ "name": "box_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_1_0_read", "role": "default" }} , 
 	{ "name": "box_1_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_1_1_read", "role": "default" }} , 
 	{ "name": "box_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_1_2_read", "role": "default" }} , 
 	{ "name": "box_1_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_1_3_read", "role": "default" }} , 
 	{ "name": "box_1_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_1_4_read", "role": "default" }} , 
 	{ "name": "box_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_2_0_read", "role": "default" }} , 
 	{ "name": "box_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_2_1_read", "role": "default" }} , 
 	{ "name": "box_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_2_2_read", "role": "default" }} , 
 	{ "name": "box_2_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_2_3_read", "role": "default" }} , 
 	{ "name": "box_2_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_2_4_read", "role": "default" }} , 
 	{ "name": "box_3_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_3_0_read", "role": "default" }} , 
 	{ "name": "box_3_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_3_1_read", "role": "default" }} , 
 	{ "name": "box_3_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_3_2_read", "role": "default" }} , 
 	{ "name": "box_3_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_3_3_read", "role": "default" }} , 
 	{ "name": "box_3_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_3_4_read", "role": "default" }} , 
 	{ "name": "sumBufIndex_V", "direction": "in", "datatype": "sc_lv", "bitwidth":176, "type": "signal", "bundle":{"name": "sumBufIndex_V", "role": "default" }} , 
 	{ "name": "rOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rOffset", "role": "default" }} , 
 	{ "name": "cOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "cOffset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "calcHaarPattern_xy",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "29", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sumBufIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "cOffset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i_fu_1876", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i_fu_1882", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i_fu_1888", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i_fu_1894", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_faddbkb_U70", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_fmulcud_U71", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_sitodEe_U72", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U73", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U74", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U75", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U76", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U77", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U78", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U79", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U80", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U81", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U82", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U83", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U84", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U85", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U86", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U87", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_mux_eOg_U88", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calcHaarPattern_xy {
		sumBuf_0 {Type I LastRead 5 FirstWrite -1}
		sumBuf_1 {Type I LastRead 5 FirstWrite -1}
		sumBuf_2 {Type I LastRead 5 FirstWrite -1}
		sumBuf_3 {Type I LastRead 5 FirstWrite -1}
		sumBuf_4 {Type I LastRead 5 FirstWrite -1}
		sumBuf_5 {Type I LastRead 5 FirstWrite -1}
		sumBuf_6 {Type I LastRead 5 FirstWrite -1}
		sumBuf_7 {Type I LastRead 5 FirstWrite -1}
		sumBuf_8 {Type I LastRead 5 FirstWrite -1}
		sumBuf_9 {Type I LastRead 5 FirstWrite -1}
		sumBuf_10 {Type I LastRead 5 FirstWrite -1}
		sumBuf_11 {Type I LastRead 5 FirstWrite -1}
		sumBuf_12 {Type I LastRead 5 FirstWrite -1}
		sumBuf_13 {Type I LastRead 5 FirstWrite -1}
		sumBuf_14 {Type I LastRead 5 FirstWrite -1}
		sumBuf_15 {Type I LastRead 5 FirstWrite -1}
		sumBuf_16 {Type I LastRead 5 FirstWrite -1}
		sumBuf_17 {Type I LastRead 5 FirstWrite -1}
		sumBuf_18 {Type I LastRead 5 FirstWrite -1}
		sumBuf_19 {Type I LastRead 5 FirstWrite -1}
		sumBuf_20 {Type I LastRead 5 FirstWrite -1}
		sumBuf_21 {Type I LastRead 5 FirstWrite -1}
		box_0_0_read {Type I LastRead 0 FirstWrite -1}
		box_0_1_read {Type I LastRead 0 FirstWrite -1}
		box_0_2_read {Type I LastRead 0 FirstWrite -1}
		box_0_3_read {Type I LastRead 0 FirstWrite -1}
		box_0_4_read {Type I LastRead 3 FirstWrite -1}
		box_1_0_read {Type I LastRead 1 FirstWrite -1}
		box_1_1_read {Type I LastRead 1 FirstWrite -1}
		box_1_2_read {Type I LastRead 1 FirstWrite -1}
		box_1_3_read {Type I LastRead 1 FirstWrite -1}
		box_1_4_read {Type I LastRead 3 FirstWrite -1}
		box_2_0_read {Type I LastRead 2 FirstWrite -1}
		box_2_1_read {Type I LastRead 2 FirstWrite -1}
		box_2_2_read {Type I LastRead 2 FirstWrite -1}
		box_2_3_read {Type I LastRead 2 FirstWrite -1}
		box_2_4_read {Type I LastRead 3 FirstWrite -1}
		box_3_0_read {Type I LastRead 3 FirstWrite -1}
		box_3_1_read {Type I LastRead 3 FirstWrite -1}
		box_3_2_read {Type I LastRead 3 FirstWrite -1}
		box_3_3_read {Type I LastRead 3 FirstWrite -1}
		box_3_4_read {Type I LastRead 3 FirstWrite -1}
		sumBufIndex_V {Type I LastRead 2 FirstWrite -1}
		rOffset {Type I LastRead 1 FirstWrite -1}
		cOffset {Type I LastRead 1 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sumBuf_0 { ap_memory {  { sumBuf_0_address0 mem_address 1 10 }  { sumBuf_0_ce0 mem_ce 1 1 }  { sumBuf_0_q0 mem_dout 0 32 }  { sumBuf_0_address1 MemPortADDR2 1 10 }  { sumBuf_0_ce1 MemPortCE2 1 1 }  { sumBuf_0_q1 MemPortDOUT2 0 32 } } }
	sumBuf_1 { ap_memory {  { sumBuf_1_address0 mem_address 1 10 }  { sumBuf_1_ce0 mem_ce 1 1 }  { sumBuf_1_q0 mem_dout 0 32 }  { sumBuf_1_address1 MemPortADDR2 1 10 }  { sumBuf_1_ce1 MemPortCE2 1 1 }  { sumBuf_1_q1 MemPortDOUT2 0 32 } } }
	sumBuf_2 { ap_memory {  { sumBuf_2_address0 mem_address 1 10 }  { sumBuf_2_ce0 mem_ce 1 1 }  { sumBuf_2_q0 mem_dout 0 32 }  { sumBuf_2_address1 MemPortADDR2 1 10 }  { sumBuf_2_ce1 MemPortCE2 1 1 }  { sumBuf_2_q1 MemPortDOUT2 0 32 } } }
	sumBuf_3 { ap_memory {  { sumBuf_3_address0 mem_address 1 10 }  { sumBuf_3_ce0 mem_ce 1 1 }  { sumBuf_3_q0 mem_dout 0 32 }  { sumBuf_3_address1 MemPortADDR2 1 10 }  { sumBuf_3_ce1 MemPortCE2 1 1 }  { sumBuf_3_q1 MemPortDOUT2 0 32 } } }
	sumBuf_4 { ap_memory {  { sumBuf_4_address0 mem_address 1 10 }  { sumBuf_4_ce0 mem_ce 1 1 }  { sumBuf_4_q0 mem_dout 0 32 }  { sumBuf_4_address1 MemPortADDR2 1 10 }  { sumBuf_4_ce1 MemPortCE2 1 1 }  { sumBuf_4_q1 MemPortDOUT2 0 32 } } }
	sumBuf_5 { ap_memory {  { sumBuf_5_address0 mem_address 1 10 }  { sumBuf_5_ce0 mem_ce 1 1 }  { sumBuf_5_q0 mem_dout 0 32 }  { sumBuf_5_address1 MemPortADDR2 1 10 }  { sumBuf_5_ce1 MemPortCE2 1 1 }  { sumBuf_5_q1 MemPortDOUT2 0 32 } } }
	sumBuf_6 { ap_memory {  { sumBuf_6_address0 mem_address 1 10 }  { sumBuf_6_ce0 mem_ce 1 1 }  { sumBuf_6_q0 mem_dout 0 32 }  { sumBuf_6_address1 MemPortADDR2 1 10 }  { sumBuf_6_ce1 MemPortCE2 1 1 }  { sumBuf_6_q1 MemPortDOUT2 0 32 } } }
	sumBuf_7 { ap_memory {  { sumBuf_7_address0 mem_address 1 10 }  { sumBuf_7_ce0 mem_ce 1 1 }  { sumBuf_7_q0 mem_dout 0 32 }  { sumBuf_7_address1 MemPortADDR2 1 10 }  { sumBuf_7_ce1 MemPortCE2 1 1 }  { sumBuf_7_q1 MemPortDOUT2 0 32 } } }
	sumBuf_8 { ap_memory {  { sumBuf_8_address0 mem_address 1 10 }  { sumBuf_8_ce0 mem_ce 1 1 }  { sumBuf_8_q0 mem_dout 0 32 }  { sumBuf_8_address1 MemPortADDR2 1 10 }  { sumBuf_8_ce1 MemPortCE2 1 1 }  { sumBuf_8_q1 MemPortDOUT2 0 32 } } }
	sumBuf_9 { ap_memory {  { sumBuf_9_address0 mem_address 1 10 }  { sumBuf_9_ce0 mem_ce 1 1 }  { sumBuf_9_q0 mem_dout 0 32 }  { sumBuf_9_address1 MemPortADDR2 1 10 }  { sumBuf_9_ce1 MemPortCE2 1 1 }  { sumBuf_9_q1 MemPortDOUT2 0 32 } } }
	sumBuf_10 { ap_memory {  { sumBuf_10_address0 mem_address 1 10 }  { sumBuf_10_ce0 mem_ce 1 1 }  { sumBuf_10_q0 mem_dout 0 32 }  { sumBuf_10_address1 MemPortADDR2 1 10 }  { sumBuf_10_ce1 MemPortCE2 1 1 }  { sumBuf_10_q1 MemPortDOUT2 0 32 } } }
	sumBuf_11 { ap_memory {  { sumBuf_11_address0 mem_address 1 10 }  { sumBuf_11_ce0 mem_ce 1 1 }  { sumBuf_11_q0 mem_dout 0 32 }  { sumBuf_11_address1 MemPortADDR2 1 10 }  { sumBuf_11_ce1 MemPortCE2 1 1 }  { sumBuf_11_q1 MemPortDOUT2 0 32 } } }
	sumBuf_12 { ap_memory {  { sumBuf_12_address0 mem_address 1 10 }  { sumBuf_12_ce0 mem_ce 1 1 }  { sumBuf_12_q0 mem_dout 0 32 }  { sumBuf_12_address1 MemPortADDR2 1 10 }  { sumBuf_12_ce1 MemPortCE2 1 1 }  { sumBuf_12_q1 MemPortDOUT2 0 32 } } }
	sumBuf_13 { ap_memory {  { sumBuf_13_address0 mem_address 1 10 }  { sumBuf_13_ce0 mem_ce 1 1 }  { sumBuf_13_q0 mem_dout 0 32 }  { sumBuf_13_address1 MemPortADDR2 1 10 }  { sumBuf_13_ce1 MemPortCE2 1 1 }  { sumBuf_13_q1 MemPortDOUT2 0 32 } } }
	sumBuf_14 { ap_memory {  { sumBuf_14_address0 mem_address 1 10 }  { sumBuf_14_ce0 mem_ce 1 1 }  { sumBuf_14_q0 mem_dout 0 32 }  { sumBuf_14_address1 MemPortADDR2 1 10 }  { sumBuf_14_ce1 MemPortCE2 1 1 }  { sumBuf_14_q1 MemPortDOUT2 0 32 } } }
	sumBuf_15 { ap_memory {  { sumBuf_15_address0 mem_address 1 10 }  { sumBuf_15_ce0 mem_ce 1 1 }  { sumBuf_15_q0 mem_dout 0 32 }  { sumBuf_15_address1 MemPortADDR2 1 10 }  { sumBuf_15_ce1 MemPortCE2 1 1 }  { sumBuf_15_q1 MemPortDOUT2 0 32 } } }
	sumBuf_16 { ap_memory {  { sumBuf_16_address0 mem_address 1 10 }  { sumBuf_16_ce0 mem_ce 1 1 }  { sumBuf_16_q0 mem_dout 0 32 }  { sumBuf_16_address1 MemPortADDR2 1 10 }  { sumBuf_16_ce1 MemPortCE2 1 1 }  { sumBuf_16_q1 MemPortDOUT2 0 32 } } }
	sumBuf_17 { ap_memory {  { sumBuf_17_address0 mem_address 1 10 }  { sumBuf_17_ce0 mem_ce 1 1 }  { sumBuf_17_q0 mem_dout 0 32 }  { sumBuf_17_address1 MemPortADDR2 1 10 }  { sumBuf_17_ce1 MemPortCE2 1 1 }  { sumBuf_17_q1 MemPortDOUT2 0 32 } } }
	sumBuf_18 { ap_memory {  { sumBuf_18_address0 mem_address 1 10 }  { sumBuf_18_ce0 mem_ce 1 1 }  { sumBuf_18_q0 mem_dout 0 32 }  { sumBuf_18_address1 MemPortADDR2 1 10 }  { sumBuf_18_ce1 MemPortCE2 1 1 }  { sumBuf_18_q1 MemPortDOUT2 0 32 } } }
	sumBuf_19 { ap_memory {  { sumBuf_19_address0 mem_address 1 10 }  { sumBuf_19_ce0 mem_ce 1 1 }  { sumBuf_19_q0 mem_dout 0 32 }  { sumBuf_19_address1 MemPortADDR2 1 10 }  { sumBuf_19_ce1 MemPortCE2 1 1 }  { sumBuf_19_q1 MemPortDOUT2 0 32 } } }
	sumBuf_20 { ap_memory {  { sumBuf_20_address0 mem_address 1 10 }  { sumBuf_20_ce0 mem_ce 1 1 }  { sumBuf_20_q0 mem_dout 0 32 }  { sumBuf_20_address1 MemPortADDR2 1 10 }  { sumBuf_20_ce1 MemPortCE2 1 1 }  { sumBuf_20_q1 MemPortDOUT2 0 32 } } }
	sumBuf_21 { ap_memory {  { sumBuf_21_address0 mem_address 1 10 }  { sumBuf_21_ce0 mem_ce 1 1 }  { sumBuf_21_q0 mem_dout 0 32 }  { sumBuf_21_address1 MemPortADDR2 1 10 }  { sumBuf_21_ce1 MemPortCE2 1 1 }  { sumBuf_21_q1 MemPortDOUT2 0 32 } } }
	box_0_0_read { ap_none {  { box_0_0_read in_data 0 32 } } }
	box_0_1_read { ap_none {  { box_0_1_read in_data 0 32 } } }
	box_0_2_read { ap_none {  { box_0_2_read in_data 0 32 } } }
	box_0_3_read { ap_none {  { box_0_3_read in_data 0 32 } } }
	box_0_4_read { ap_none {  { box_0_4_read in_data 0 32 } } }
	box_1_0_read { ap_none {  { box_1_0_read in_data 0 32 } } }
	box_1_1_read { ap_none {  { box_1_1_read in_data 0 32 } } }
	box_1_2_read { ap_none {  { box_1_2_read in_data 0 32 } } }
	box_1_3_read { ap_none {  { box_1_3_read in_data 0 32 } } }
	box_1_4_read { ap_none {  { box_1_4_read in_data 0 32 } } }
	box_2_0_read { ap_none {  { box_2_0_read in_data 0 32 } } }
	box_2_1_read { ap_none {  { box_2_1_read in_data 0 32 } } }
	box_2_2_read { ap_none {  { box_2_2_read in_data 0 32 } } }
	box_2_3_read { ap_none {  { box_2_3_read in_data 0 32 } } }
	box_2_4_read { ap_none {  { box_2_4_read in_data 0 32 } } }
	box_3_0_read { ap_none {  { box_3_0_read in_data 0 32 } } }
	box_3_1_read { ap_none {  { box_3_1_read in_data 0 32 } } }
	box_3_2_read { ap_none {  { box_3_2_read in_data 0 32 } } }
	box_3_3_read { ap_none {  { box_3_3_read in_data 0 32 } } }
	box_3_4_read { ap_none {  { box_3_4_read in_data 0 32 } } }
	sumBufIndex_V { ap_none {  { sumBufIndex_V in_data 0 176 } } }
	rOffset { ap_none {  { rOffset in_data 0 5 } } }
	cOffset { ap_none {  { cOffset in_data 0 11 } } }
}
