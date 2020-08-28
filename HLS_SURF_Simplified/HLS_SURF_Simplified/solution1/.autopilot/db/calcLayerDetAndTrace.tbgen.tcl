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
	{ det0_V_V int 32 regular {fifo 1 volatile }  }
	{ det1_V_V3 int 32 regular {fifo 1 volatile }  }
	{ det2_V_V6 int 32 regular {fifo 1 volatile }  }
	{ this_assign_1_reload int 32 regular {fifo 0}  }
	{ this_assign_1_reload_out int 32 regular {fifo 1}  }
	{ keyPoints_V_offset int 32 regular {fifo 0}  }
	{ pointNumber_offset int 32 regular {fifo 0}  }
	{ keyPoints_V_offset_out int 32 regular {fifo 1}  }
	{ pointNumber_offset_out int 32 regular {fifo 1}  }
	{ sum_V int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "det0_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "det1_V_V3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "det2_V_V6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_assign_1_reload", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_assign_1_reload_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "keyPoints_V_offset", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pointNumber_offset", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "keyPoints_V_offset_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pointNumber_offset_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 40
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
	{ det0_V_V_din sc_out sc_lv 32 signal 0 } 
	{ det0_V_V_full_n sc_in sc_logic 1 signal 0 } 
	{ det0_V_V_write sc_out sc_logic 1 signal 0 } 
	{ det1_V_V3_din sc_out sc_lv 32 signal 1 } 
	{ det1_V_V3_full_n sc_in sc_logic 1 signal 1 } 
	{ det1_V_V3_write sc_out sc_logic 1 signal 1 } 
	{ det2_V_V6_din sc_out sc_lv 32 signal 2 } 
	{ det2_V_V6_full_n sc_in sc_logic 1 signal 2 } 
	{ det2_V_V6_write sc_out sc_logic 1 signal 2 } 
	{ this_assign_1_reload_dout sc_in sc_lv 32 signal 3 } 
	{ this_assign_1_reload_empty_n sc_in sc_logic 1 signal 3 } 
	{ this_assign_1_reload_read sc_out sc_logic 1 signal 3 } 
	{ this_assign_1_reload_out_din sc_out sc_lv 32 signal 4 } 
	{ this_assign_1_reload_out_full_n sc_in sc_logic 1 signal 4 } 
	{ this_assign_1_reload_out_write sc_out sc_logic 1 signal 4 } 
	{ keyPoints_V_offset_dout sc_in sc_lv 32 signal 5 } 
	{ keyPoints_V_offset_empty_n sc_in sc_logic 1 signal 5 } 
	{ keyPoints_V_offset_read sc_out sc_logic 1 signal 5 } 
	{ pointNumber_offset_dout sc_in sc_lv 32 signal 6 } 
	{ pointNumber_offset_empty_n sc_in sc_logic 1 signal 6 } 
	{ pointNumber_offset_read sc_out sc_logic 1 signal 6 } 
	{ keyPoints_V_offset_out_din sc_out sc_lv 32 signal 7 } 
	{ keyPoints_V_offset_out_full_n sc_in sc_logic 1 signal 7 } 
	{ keyPoints_V_offset_out_write sc_out sc_logic 1 signal 7 } 
	{ pointNumber_offset_out_din sc_out sc_lv 32 signal 8 } 
	{ pointNumber_offset_out_full_n sc_in sc_logic 1 signal 8 } 
	{ pointNumber_offset_out_write sc_out sc_logic 1 signal 8 } 
	{ sum_V_dout sc_in sc_lv 32 signal 9 } 
	{ sum_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ sum_V_read sc_out sc_logic 1 signal 9 } 
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
 	{ "name": "det0_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det0_V_V", "role": "din" }} , 
 	{ "name": "det0_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det0_V_V", "role": "full_n" }} , 
 	{ "name": "det0_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det0_V_V", "role": "write" }} , 
 	{ "name": "det1_V_V3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det1_V_V3", "role": "din" }} , 
 	{ "name": "det1_V_V3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det1_V_V3", "role": "full_n" }} , 
 	{ "name": "det1_V_V3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det1_V_V3", "role": "write" }} , 
 	{ "name": "det2_V_V6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det2_V_V6", "role": "din" }} , 
 	{ "name": "det2_V_V6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det2_V_V6", "role": "full_n" }} , 
 	{ "name": "det2_V_V6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det2_V_V6", "role": "write" }} , 
 	{ "name": "this_assign_1_reload_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_assign_1_reload", "role": "dout" }} , 
 	{ "name": "this_assign_1_reload_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_assign_1_reload", "role": "empty_n" }} , 
 	{ "name": "this_assign_1_reload_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_assign_1_reload", "role": "read" }} , 
 	{ "name": "this_assign_1_reload_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_assign_1_reload_out", "role": "din" }} , 
 	{ "name": "this_assign_1_reload_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_assign_1_reload_out", "role": "full_n" }} , 
 	{ "name": "this_assign_1_reload_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_assign_1_reload_out", "role": "write" }} , 
 	{ "name": "keyPoints_V_offset_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V_offset", "role": "dout" }} , 
 	{ "name": "keyPoints_V_offset_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V_offset", "role": "empty_n" }} , 
 	{ "name": "keyPoints_V_offset_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V_offset", "role": "read" }} , 
 	{ "name": "pointNumber_offset_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber_offset", "role": "dout" }} , 
 	{ "name": "pointNumber_offset_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber_offset", "role": "empty_n" }} , 
 	{ "name": "pointNumber_offset_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber_offset", "role": "read" }} , 
 	{ "name": "keyPoints_V_offset_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V_offset_out", "role": "din" }} , 
 	{ "name": "keyPoints_V_offset_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V_offset_out", "role": "full_n" }} , 
 	{ "name": "keyPoints_V_offset_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V_offset_out", "role": "write" }} , 
 	{ "name": "pointNumber_offset_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber_offset_out", "role": "din" }} , 
 	{ "name": "pointNumber_offset_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber_offset_out", "role": "full_n" }} , 
 	{ "name": "pointNumber_offset_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber_offset_out", "role": "write" }} , 
 	{ "name": "sum_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_V", "role": "dout" }} , 
 	{ "name": "sum_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_V", "role": "empty_n" }} , 
 	{ "name": "sum_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "21", "22", "23"],
		"CDFG" : "calcLayerDetAndTrace",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5296614", "EstimateLatencyMax" : "145384305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466"}],
		"Port" : [
			{"Name" : "det0_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V_V3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det1_V_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V_V6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det2_V_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "this_assign_1_reload", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "this_assign_1_reload_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "this_assign_1_reload_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "this_assign_1_reload_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "sum_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sumBuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "sumBuf"}]},
			{"Name" : "sizes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dx_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_0_V"}]},
			{"Name" : "Dx_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_1_V"}]},
			{"Name" : "Dx_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_2_V"}]},
			{"Name" : "Dx_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_3_V"}]},
			{"Name" : "Dx_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_4_V"}]},
			{"Name" : "Dy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_0_V"}]},
			{"Name" : "Dy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_1_V"}]},
			{"Name" : "Dy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_2_V"}]},
			{"Name" : "Dy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_3_V"}]},
			{"Name" : "Dy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_4_V"}]},
			{"Name" : "Dxy_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_4", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sumBuf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sizes_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dx_V_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dx_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dx_V_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dx_V_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dx_V_4_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dy_V_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dy_V_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dy_V_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dy_V_3_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dy_V_4_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dxy_V_2_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dxy_V_3_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dxy_V_0_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dxy_V_1_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dxy_V_4_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_466", "Parent" : "0", "Child" : ["19", "20"],
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_466.surf_Simplified_mbkb_U22", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calcHaarPattern_x_y_fu_466.surf_Simplified_mbkb_U23", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_mtde_U35", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_mbkb_U36", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_mbkb_U37", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calcLayerDetAndTrace {
		det0_V_V {Type O LastRead -1 FirstWrite 10}
		det1_V_V3 {Type O LastRead -1 FirstWrite 10}
		det2_V_V6 {Type O LastRead -1 FirstWrite 10}
		this_assign_1_reload {Type I LastRead 0 FirstWrite -1}
		this_assign_1_reload_out {Type O LastRead -1 FirstWrite 0}
		keyPoints_V_offset {Type I LastRead 0 FirstWrite -1}
		pointNumber_offset {Type I LastRead 0 FirstWrite -1}
		keyPoints_V_offset_out {Type O LastRead -1 FirstWrite 0}
		pointNumber_offset_out {Type O LastRead -1 FirstWrite 0}
		MSB_V {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type I LastRead 2 FirstWrite -1}
		sumBuf {Type IO LastRead -1 FirstWrite -1}
		sizes {Type I LastRead -1 FirstWrite -1}
		Dx_V_0 {Type I LastRead -1 FirstWrite -1}
		Dx_V_1 {Type I LastRead -1 FirstWrite -1}
		Dx_V_2 {Type I LastRead -1 FirstWrite -1}
		Dx_V_3 {Type I LastRead -1 FirstWrite -1}
		Dx_V_4 {Type I LastRead -1 FirstWrite -1}
		Dy_V_0 {Type I LastRead -1 FirstWrite -1}
		Dy_V_1 {Type I LastRead -1 FirstWrite -1}
		Dy_V_2 {Type I LastRead -1 FirstWrite -1}
		Dy_V_3 {Type I LastRead -1 FirstWrite -1}
		Dy_V_4 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_2 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_3 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_0 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_1 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_4 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "5296614", "Max" : "145384305"}
	, {"Name" : "Interval", "Min" : "5296614", "Max" : "145384305"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	det0_V_V { ap_fifo {  { det0_V_V_din fifo_data 1 32 }  { det0_V_V_full_n fifo_status 0 1 }  { det0_V_V_write fifo_update 1 1 } } }
	det1_V_V3 { ap_fifo {  { det1_V_V3_din fifo_data 1 32 }  { det1_V_V3_full_n fifo_status 0 1 }  { det1_V_V3_write fifo_update 1 1 } } }
	det2_V_V6 { ap_fifo {  { det2_V_V6_din fifo_data 1 32 }  { det2_V_V6_full_n fifo_status 0 1 }  { det2_V_V6_write fifo_update 1 1 } } }
	this_assign_1_reload { ap_fifo {  { this_assign_1_reload_dout fifo_data 0 32 }  { this_assign_1_reload_empty_n fifo_status 0 1 }  { this_assign_1_reload_read fifo_update 1 1 } } }
	this_assign_1_reload_out { ap_fifo {  { this_assign_1_reload_out_din fifo_data 1 32 }  { this_assign_1_reload_out_full_n fifo_status 0 1 }  { this_assign_1_reload_out_write fifo_update 1 1 } } }
	keyPoints_V_offset { ap_fifo {  { keyPoints_V_offset_dout fifo_data 0 32 }  { keyPoints_V_offset_empty_n fifo_status 0 1 }  { keyPoints_V_offset_read fifo_update 1 1 } } }
	pointNumber_offset { ap_fifo {  { pointNumber_offset_dout fifo_data 0 32 }  { pointNumber_offset_empty_n fifo_status 0 1 }  { pointNumber_offset_read fifo_update 1 1 } } }
	keyPoints_V_offset_out { ap_fifo {  { keyPoints_V_offset_out_din fifo_data 1 32 }  { keyPoints_V_offset_out_full_n fifo_status 0 1 }  { keyPoints_V_offset_out_write fifo_update 1 1 } } }
	pointNumber_offset_out { ap_fifo {  { pointNumber_offset_out_din fifo_data 1 32 }  { pointNumber_offset_out_full_n fifo_status 0 1 }  { pointNumber_offset_out_write fifo_update 1 1 } } }
	sum_V { ap_fifo {  { sum_V_dout fifo_data 0 32 }  { sum_V_empty_n fifo_status 0 1 }  { sum_V_read fifo_update 1 1 } } }
}
