set moduleName calcHaarPattern_x_y
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {calcHaarPattern_x_y}
set C_modelType { int 32 }
set C_modelArgList {
	{ sumBuf int 32 regular {array 17622 { 1 1 } 1 1 }  }
	{ box_0_V int 32 regular {array 9 { 1 3 } 1 1 }  }
	{ box_1_V int 32 regular {array 9 { 1 3 } 1 1 }  }
	{ box_2_V int 32 regular {array 9 { 1 3 } 1 1 }  }
	{ box_3_V int 32 regular {array 9 { 1 3 } 1 1 }  }
	{ box_4_V int 32 regular {array 9 { 1 3 } 1 1 }  }
	{ box_V_offset int 2 regular  }
	{ sumBufIndex_V int 176 regular  }
	{ rOffset int 6 regular  }
	{ cOffset int 11 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sumBuf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_0_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_1_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_2_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_3_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_4_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "box_V_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sumBufIndex_V", "interface" : "wire", "bitwidth" : 176, "direction" : "READONLY"} , 
 	{ "Name" : "rOffset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "cOffset", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sumBuf_address0 sc_out sc_lv 15 signal 0 } 
	{ sumBuf_ce0 sc_out sc_logic 1 signal 0 } 
	{ sumBuf_q0 sc_in sc_lv 32 signal 0 } 
	{ sumBuf_address1 sc_out sc_lv 15 signal 0 } 
	{ sumBuf_ce1 sc_out sc_logic 1 signal 0 } 
	{ sumBuf_q1 sc_in sc_lv 32 signal 0 } 
	{ box_0_V_address0 sc_out sc_lv 4 signal 1 } 
	{ box_0_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ box_0_V_q0 sc_in sc_lv 32 signal 1 } 
	{ box_1_V_address0 sc_out sc_lv 4 signal 2 } 
	{ box_1_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ box_1_V_q0 sc_in sc_lv 32 signal 2 } 
	{ box_2_V_address0 sc_out sc_lv 4 signal 3 } 
	{ box_2_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ box_2_V_q0 sc_in sc_lv 32 signal 3 } 
	{ box_3_V_address0 sc_out sc_lv 4 signal 4 } 
	{ box_3_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ box_3_V_q0 sc_in sc_lv 32 signal 4 } 
	{ box_4_V_address0 sc_out sc_lv 4 signal 5 } 
	{ box_4_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ box_4_V_q0 sc_in sc_lv 32 signal 5 } 
	{ box_V_offset sc_in sc_lv 2 signal 6 } 
	{ sumBufIndex_V sc_in sc_lv 176 signal 7 } 
	{ rOffset sc_in sc_lv 6 signal 8 } 
	{ cOffset sc_in sc_lv 11 signal 9 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sumBuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sumBuf", "role": "address0" }} , 
 	{ "name": "sumBuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf", "role": "ce0" }} , 
 	{ "name": "sumBuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf", "role": "q0" }} , 
 	{ "name": "sumBuf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sumBuf", "role": "address1" }} , 
 	{ "name": "sumBuf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sumBuf", "role": "ce1" }} , 
 	{ "name": "sumBuf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sumBuf", "role": "q1" }} , 
 	{ "name": "box_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "box_0_V", "role": "address0" }} , 
 	{ "name": "box_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "box_0_V", "role": "ce0" }} , 
 	{ "name": "box_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_0_V", "role": "q0" }} , 
 	{ "name": "box_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "box_1_V", "role": "address0" }} , 
 	{ "name": "box_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "box_1_V", "role": "ce0" }} , 
 	{ "name": "box_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_1_V", "role": "q0" }} , 
 	{ "name": "box_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "box_2_V", "role": "address0" }} , 
 	{ "name": "box_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "box_2_V", "role": "ce0" }} , 
 	{ "name": "box_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_2_V", "role": "q0" }} , 
 	{ "name": "box_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "box_3_V", "role": "address0" }} , 
 	{ "name": "box_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "box_3_V", "role": "ce0" }} , 
 	{ "name": "box_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_3_V", "role": "q0" }} , 
 	{ "name": "box_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "box_4_V", "role": "address0" }} , 
 	{ "name": "box_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "box_4_V", "role": "ce0" }} , 
 	{ "name": "box_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "box_4_V", "role": "q0" }} , 
 	{ "name": "box_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "box_V_offset", "role": "default" }} , 
 	{ "name": "sumBufIndex_V", "direction": "in", "datatype": "sc_lv", "bitwidth":176, "type": "signal", "bundle":{"name": "sumBufIndex_V", "role": "default" }} , 
 	{ "name": "rOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "rOffset", "role": "default" }} , 
 	{ "name": "cOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "cOffset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "calcHaarPattern_x_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sumBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sumBufIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "cOffset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_mbkb_U22", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_mbkb_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calcHaarPattern_x_y {
		sumBuf {Type I LastRead 7 FirstWrite -1}
		box_0_V {Type I LastRead 1 FirstWrite -1}
		box_1_V {Type I LastRead 1 FirstWrite -1}
		box_2_V {Type I LastRead 1 FirstWrite -1}
		box_3_V {Type I LastRead 1 FirstWrite -1}
		box_4_V {Type I LastRead 1 FirstWrite -1}
		box_V_offset {Type I LastRead 0 FirstWrite -1}
		sumBufIndex_V {Type I LastRead 0 FirstWrite -1}
		rOffset {Type I LastRead 0 FirstWrite -1}
		cOffset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "28"}
	, {"Name" : "Interval", "Min" : "28", "Max" : "28"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sumBuf { ap_memory {  { sumBuf_address0 mem_address 1 15 }  { sumBuf_ce0 mem_ce 1 1 }  { sumBuf_q0 mem_dout 0 32 }  { sumBuf_address1 MemPortADDR2 1 15 }  { sumBuf_ce1 MemPortCE2 1 1 }  { sumBuf_q1 MemPortDOUT2 0 32 } } }
	box_0_V { ap_memory {  { box_0_V_address0 mem_address 1 4 }  { box_0_V_ce0 mem_ce 1 1 }  { box_0_V_q0 mem_dout 0 32 } } }
	box_1_V { ap_memory {  { box_1_V_address0 mem_address 1 4 }  { box_1_V_ce0 mem_ce 1 1 }  { box_1_V_q0 mem_dout 0 32 } } }
	box_2_V { ap_memory {  { box_2_V_address0 mem_address 1 4 }  { box_2_V_ce0 mem_ce 1 1 }  { box_2_V_q0 mem_dout 0 32 } } }
	box_3_V { ap_memory {  { box_3_V_address0 mem_address 1 4 }  { box_3_V_ce0 mem_ce 1 1 }  { box_3_V_q0 mem_dout 0 32 } } }
	box_4_V { ap_memory {  { box_4_V_address0 mem_address 1 4 }  { box_4_V_ce0 mem_ce 1 1 }  { box_4_V_q0 mem_dout 0 32 } } }
	box_V_offset { ap_none {  { box_V_offset in_data 0 2 } } }
	sumBufIndex_V { ap_none {  { sumBufIndex_V in_data 0 176 } } }
	rOffset { ap_none {  { rOffset in_data 0 6 } } }
	cOffset { ap_none {  { cOffset in_data 0 11 } } }
}
