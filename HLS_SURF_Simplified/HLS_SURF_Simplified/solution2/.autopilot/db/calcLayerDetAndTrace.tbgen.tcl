set moduleName calcLayerDetAndTrace
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
set C_modelName {calcLayerDetAndTrace}
set C_modelType { void 0 }
set C_modelArgList {
	{ det0_V float 32 regular {fifo 1 volatile }  }
	{ det1_V3 float 32 regular {fifo 1 volatile }  }
	{ det2_V6 float 32 regular {fifo 1 volatile }  }
	{ sum_V int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "det0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "det1_V3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "det2_V6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ det0_V_din sc_out sc_lv 32 signal 0 } 
	{ det0_V_full_n sc_in sc_logic 1 signal 0 } 
	{ det0_V_write sc_out sc_logic 1 signal 0 } 
	{ det1_V3_din sc_out sc_lv 32 signal 1 } 
	{ det1_V3_full_n sc_in sc_logic 1 signal 1 } 
	{ det1_V3_write sc_out sc_logic 1 signal 1 } 
	{ det2_V6_din sc_out sc_lv 32 signal 2 } 
	{ det2_V6_full_n sc_in sc_logic 1 signal 2 } 
	{ det2_V6_write sc_out sc_logic 1 signal 2 } 
	{ sum_V_dout sc_in sc_lv 32 signal 3 } 
	{ sum_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ sum_V_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "det0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det0_V", "role": "din" }} , 
 	{ "name": "det0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det0_V", "role": "full_n" }} , 
 	{ "name": "det0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det0_V", "role": "write" }} , 
 	{ "name": "det1_V3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det1_V3", "role": "din" }} , 
 	{ "name": "det1_V3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det1_V3", "role": "full_n" }} , 
 	{ "name": "det1_V3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det1_V3", "role": "write" }} , 
 	{ "name": "det2_V6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det2_V6", "role": "din" }} , 
 	{ "name": "det2_V6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det2_V6", "role": "full_n" }} , 
 	{ "name": "det2_V6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det2_V6", "role": "write" }} , 
 	{ "name": "sum_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_V", "role": "dout" }} , 
 	{ "name": "sum_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_V", "role": "empty_n" }} , 
 	{ "name": "sum_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "47", "67", "68", "69", "70", "71"],
		"CDFG" : "calcLayerDetAndTrace",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1926807", "EstimateLatencyMax" : "141533097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "det0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det1_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det2_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "sum_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_0"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_0"}]},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_1"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_1"}]},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_2"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_2"}]},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_3"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_3"}]},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_4"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_4"}]},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_5"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_5"}]},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_6"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_6"}]},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_7"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_7"}]},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_8"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_8"}]},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_9"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_9"}]},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_10"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_10"}]},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_11"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_11"}]},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_12"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_12"}]},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_13"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_13"}]},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_14"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_14"}]},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_15"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_15"}]},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_16"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_16"}]},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_17"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_17"}]},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_18"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_18"}]},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_19"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_19"}]},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_20"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_20"}]},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_21"},
					{"ID" : "47", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_21"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1876", "Parent" : "23",
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
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1882", "Parent" : "23",
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
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1888", "Parent" : "23",
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1894", "Parent" : "23",
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_faddbkb_U70", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_fmulcud_U71", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_sitodEe_U72", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U73", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U74", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U75", "Parent" : "23"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U76", "Parent" : "23"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U77", "Parent" : "23"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U78", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U79", "Parent" : "23"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U80", "Parent" : "23"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U81", "Parent" : "23"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U82", "Parent" : "23"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U83", "Parent" : "23"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U84", "Parent" : "23"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U85", "Parent" : "23"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U86", "Parent" : "23"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U87", "Parent" : "23"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U88", "Parent" : "23"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805", "Parent" : "0", "Child" : ["48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "calcHaarPattern_x_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "3",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
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
			{"Name" : "sumBufIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "cOffset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1484", "Parent" : "47",
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
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1490", "Parent" : "47",
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
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1496", "Parent" : "47",
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
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1502", "Parent" : "47",
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
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_faddbkb_U11", "Parent" : "47"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_fmulcud_U12", "Parent" : "47"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_sitodEe_U13", "Parent" : "47"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U14", "Parent" : "47"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U15", "Parent" : "47"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U16", "Parent" : "47"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U17", "Parent" : "47"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U18", "Parent" : "47"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U19", "Parent" : "47"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U20", "Parent" : "47"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U21", "Parent" : "47"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U22", "Parent" : "47"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U23", "Parent" : "47"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U24", "Parent" : "47"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U25", "Parent" : "47"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_fmulcud_U134", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_fptrBew_U135", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_fpexCeG_U136", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_dsubDeQ_U137", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_dmulEe0_U138", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calcLayerDetAndTrace {
		det0_V {Type O LastRead -1 FirstWrite 99}
		det1_V3 {Type O LastRead -1 FirstWrite 197}
		det2_V6 {Type O LastRead -1 FirstWrite 295}
		MSB_V {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type I LastRead 2 FirstWrite -1}
		sumBuf_0 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_1 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_2 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_3 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_4 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_5 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_6 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_7 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_8 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_9 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_10 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_11 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_12 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_13 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_14 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_15 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_16 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_17 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_18 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_19 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_20 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_21 {Type IO LastRead -1 FirstWrite -1}}
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
		x {Type I LastRead 0 FirstWrite -1}}
	calcHaarPattern_x_y {
		sumBuf_0 {Type I LastRead 4 FirstWrite -1}
		sumBuf_1 {Type I LastRead 4 FirstWrite -1}
		sumBuf_2 {Type I LastRead 4 FirstWrite -1}
		sumBuf_3 {Type I LastRead 4 FirstWrite -1}
		sumBuf_4 {Type I LastRead 4 FirstWrite -1}
		sumBuf_5 {Type I LastRead 4 FirstWrite -1}
		sumBuf_6 {Type I LastRead 4 FirstWrite -1}
		sumBuf_7 {Type I LastRead 4 FirstWrite -1}
		sumBuf_8 {Type I LastRead 4 FirstWrite -1}
		sumBuf_9 {Type I LastRead 4 FirstWrite -1}
		sumBuf_10 {Type I LastRead 4 FirstWrite -1}
		sumBuf_11 {Type I LastRead 4 FirstWrite -1}
		sumBuf_12 {Type I LastRead 4 FirstWrite -1}
		sumBuf_13 {Type I LastRead 4 FirstWrite -1}
		sumBuf_14 {Type I LastRead 4 FirstWrite -1}
		sumBuf_15 {Type I LastRead 4 FirstWrite -1}
		sumBuf_16 {Type I LastRead 4 FirstWrite -1}
		sumBuf_17 {Type I LastRead 4 FirstWrite -1}
		sumBuf_18 {Type I LastRead 4 FirstWrite -1}
		sumBuf_19 {Type I LastRead 4 FirstWrite -1}
		sumBuf_20 {Type I LastRead 4 FirstWrite -1}
		sumBuf_21 {Type I LastRead 4 FirstWrite -1}
		box_0_0_read {Type I LastRead 0 FirstWrite -1}
		box_0_1_read {Type I LastRead 0 FirstWrite -1}
		box_0_2_read {Type I LastRead 0 FirstWrite -1}
		box_0_3_read {Type I LastRead 0 FirstWrite -1}
		box_0_4_read {Type I LastRead 2 FirstWrite -1}
		box_1_0_read {Type I LastRead 1 FirstWrite -1}
		box_1_1_read {Type I LastRead 1 FirstWrite -1}
		box_1_2_read {Type I LastRead 1 FirstWrite -1}
		box_1_3_read {Type I LastRead 1 FirstWrite -1}
		box_1_4_read {Type I LastRead 2 FirstWrite -1}
		box_2_0_read {Type I LastRead 2 FirstWrite -1}
		box_2_1_read {Type I LastRead 2 FirstWrite -1}
		box_2_2_read {Type I LastRead 2 FirstWrite -1}
		box_2_3_read {Type I LastRead 2 FirstWrite -1}
		box_2_4_read {Type I LastRead 2 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "1926807", "Max" : "141533097"}
	, {"Name" : "Interval", "Min" : "1926807", "Max" : "141533097"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	det0_V { ap_fifo {  { det0_V_din fifo_data 1 32 }  { det0_V_full_n fifo_status 0 1 }  { det0_V_write fifo_update 1 1 } } }
	det1_V3 { ap_fifo {  { det1_V3_din fifo_data 1 32 }  { det1_V3_full_n fifo_status 0 1 }  { det1_V3_write fifo_update 1 1 } } }
	det2_V6 { ap_fifo {  { det2_V6_din fifo_data 1 32 }  { det2_V6_full_n fifo_status 0 1 }  { det2_V6_write fifo_update 1 1 } } }
	sum_V { ap_fifo {  { sum_V_dout fifo_data 0 32 }  { sum_V_empty_n fifo_status 0 1 }  { sum_V_read fifo_update 1 1 } } }
}
